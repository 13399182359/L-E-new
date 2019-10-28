package com.LeXiang.controller;



import com.LeXiang.userDao.EsUserDao;
import com.LeXiang.education.user.common.interfaces.ShopServiceApi;
import com.LeXiang.education.user.common.model.PlayClassgtj;
import com.LeXiang.education.user.common.model.Shop;

import com.LeXiang.service.WebUserService;
import org.elasticsearch.action.search.SearchRequestBuilder;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.action.search.SearchType;
import org.elasticsearch.index.query.BoolQueryBuilder;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.search.SearchHit;
import org.elasticsearch.search.SearchHits;
import org.elasticsearch.search.fetch.subphase.highlight.HighlightBuilder;
import org.elasticsearch.search.fetch.subphase.highlight.HighlightField;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.elasticsearch.core.ElasticsearchTemplate;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController

public class ShopController  implements ShopServiceApi {


    @Autowired
    private EsUserDao esDao;
    // 查询时需要
    @Autowired
    private ElasticsearchTemplate elasticsearchTemplate;
    @Autowired
    private WebUserService webUserService;


    //更新es服务器数据
   @Override
    public String addShopEs() {
        List<PlayClassgtj> list = webUserService.queryPlay();//先去后台查出数据在赋值

        try {
            for (PlayClassgtj playClassgtj : list) {
                esDao.save(playClassgtj);
            }
            return "导入成功";
        } catch (Exception e) {
            e.printStackTrace();
            return "es错误，请联系管理员";
        }
    }



    //es搜索商品
    @Override
    public  List queryEsPlay(String playname, Integer page,  Integer rows) {
        if (playname == null || "".equals(playname)) {
            playname = "手";
        }
       if(page==null ||rows==null){
           page=1;
           rows=10;
       }
        HashMap<String, Object> resultMap = new HashMap<>();
        //创建一个要搜索的索引库
        SearchRequestBuilder searchRequestBuilder = elasticsearchTemplate.getClient().prepareSearch("zth").setTypes("playclass");


        //创建组合查询
        BoolQueryBuilder boolQueryBuilder = new BoolQueryBuilder();

        if (playname != null && !"".equals(playname)) {
            boolQueryBuilder.should(QueryBuilders.matchQuery("playname", playname));
        }
        //设置查询的类型
        searchRequestBuilder.setSearchType(SearchType.DFS_QUERY_THEN_FETCH);
        searchRequestBuilder.setQuery(boolQueryBuilder);

        //分页
        searchRequestBuilder.setFrom((page - 1) * rows);
        searchRequestBuilder.setSize(rows);
        //设置高亮字段
        HighlightBuilder highlightBuilder = new HighlightBuilder();
        highlightBuilder.field("playname")
                .preTags("<font color='red'>")
                .postTags("</font>");
        searchRequestBuilder.highlighter(highlightBuilder);

        //直接搜索返回响应数据 （json）
        SearchResponse searchResponse = searchRequestBuilder.get();
        SearchHits hits = searchResponse.getHits();
        //获取总条数
        long totalHits = hits.getTotalHits();
        resultMap.put("total", totalHits);

        String a="";
        ArrayList<Map<String, Object>> list = new ArrayList<>();
        //获取Hits中json对象数据
        SearchHit[] hits1 = hits.getHits();
        System.out.println(hits1.length);
        for (SearchHit hit : hits1) {
            System.out.println(hit);
        }

        for (int i = 0; i < hits1.length; i++) {
            //获取Map对象
            Map<String, Object> sourceAsMap = hits1[i].getSourceAsMap();
            //获取高亮字段
            Map<String, HighlightField> highlightFields = hits1[i].getHighlightFields();
            //！！如果有高亮字段就取出赋给上面sourceAsMap中原有的名字给他替换掉！！
            if (playname != null && !"".equals(playname)) {
                sourceAsMap.put("playname", highlightFields.get("playname").getFragments()[0].toString());
            }
            System.out.println(sourceAsMap.size()+"map大小");
            list.add(sourceAsMap);
        }
        System.out.println(list);

        return list;

    }

    @Override
    public List<PlayClassgtj> queryEsAll(String video) {
    video="wu";
       List<PlayClassgtj> list=webUserService.queryEsAll(video);
        return list;
    }
}
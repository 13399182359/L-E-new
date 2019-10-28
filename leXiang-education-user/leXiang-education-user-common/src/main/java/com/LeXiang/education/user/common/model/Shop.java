package com.LeXiang.education.user.common.model;

import lombok.Data;
import lombok.ToString;
import org.springframework.data.elasticsearch.annotations.Document;
import org.springframework.data.elasticsearch.annotations.Field;
import org.springframework.data.elasticsearch.annotations.FieldType;


import java.io.Serializable;
@Document(indexName = "zth",type = "t_shangpin")
@Data
@ToString
public class Shop  implements Serializable {


    private static final long serialVersionUID = 2006762641515872124L;


    private String id;

    @Field(type = FieldType.Text, analyzer = "ik_max_word")
    //商品名称
    private String shopname;

    //优惠价格
    private Long reducedprice;



    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getShopname() {
        return shopname;
    }

    public void setShopname(String shopname) {
        this.shopname = shopname;
    }

    public Long getReducedprice() {
        return reducedprice;
    }

    public void setReducedprice(Long reducedprice) {
        this.reducedprice = reducedprice;
    }
}

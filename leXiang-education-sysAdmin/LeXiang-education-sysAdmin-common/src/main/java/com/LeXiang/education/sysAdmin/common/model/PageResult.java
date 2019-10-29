package com.LeXiang.education.sysAdmin.common.model;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;
import java.util.List;

/**
 * @类名: PageResult
 * @描述:
 * @作者: 王葛瑞
 * @时间: 2019-10-11 20:23
 **/
@ToString
public class PageResult implements Serializable {

    private int current;        //当前页
    private int end;             //尾页
    private int numPerPage;     //每页记录数
    private int totalCount;     //总记录数
    private List pageList;    //当前页数据



    public int getCurrent() {
        return current;
    }
    public void setCurrent(int current) {
        this.current = current;
    }
    public int getEnd() {
        return end;
    }
    public void setEnd(int end) {
        this.end = end;
    }
    public int getNumPerPage() {
        return numPerPage;
    }
    public void setNumPerPage(int numPerPage) {
        this.numPerPage = numPerPage;
    }
    public int getTotalCount() {
        return totalCount;
    }
    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
        this.end = (int)Math.ceil(totalCount/numPerPage)+1;//计算尾页
    }


    public List getPageList() {
        return pageList;
    }

    public void setPageList(List pageList) {
        this.pageList = pageList;
    }

    public PageResult() {
    }

    public PageResult(int current, int end, int numPerPage, int totalCount, List pageList) {
        this.current = current;
        this.end = end;
        this.numPerPage = numPerPage;
        this.totalCount = totalCount;
        this.pageList = pageList;
    }
}

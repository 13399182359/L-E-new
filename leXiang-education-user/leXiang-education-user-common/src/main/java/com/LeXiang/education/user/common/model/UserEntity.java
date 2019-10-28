package com.LeXiang.education.user.common.model;

import lombok.Data;
import lombok.ToString;
import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.Document;

import java.lang.annotation.Documented;

@Document(indexName = "jkit",type="user")
@Data
@ToString
public class UserEntity {
    @Id
    private  String id;
    private  String  name;

    private  Integer age;
    private Integer sex;
}

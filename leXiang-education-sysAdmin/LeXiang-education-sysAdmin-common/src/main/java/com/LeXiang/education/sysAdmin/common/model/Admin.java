package com.LeXiang.education.sysAdmin.common.model;


import lombok.Data;
import lombok.ToString;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Set;

@Data
@ToString
@Accessors(chain = true)
public class Admin implements Serializable {

    private Long   id;


    private String  username;

    private String  encodedPassword;






    private Set<Role> roles;


    public Admin() {
    }

    public Admin(Long id, String username, String encodedPassword, Set<Role> roles) {
        this.id = id;
        this.username = username;
        this.encodedPassword = encodedPassword;
        this.roles = roles;
    }



    @Override
    public String toString() {
        return "Admin{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", encodedPassword='" + encodedPassword + '\'' +
                ", roles=" + roles +
                '}';
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEncodedPassword() {
        return encodedPassword;
    }

    public void setEncodedPassword(String encodedPassword) {
        this.encodedPassword = encodedPassword;
    }

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }
}

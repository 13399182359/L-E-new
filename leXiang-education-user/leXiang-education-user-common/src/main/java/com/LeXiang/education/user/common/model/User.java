package com.LeXiang.education.user.common.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.Set;

/**
 * 用户基本信息
 *
 * @author wujing
 */
@Data
@Accessors(chain = true)
public class User implements Serializable {

	private static final long serialVersionUID = 1L;

	/**
	 * 主键
	 */


	private Long   id;




	private String address;

	private BigDecimal amount;



	private BigDecimal balance;

	@DateTimeFormat(pattern = "yyyy-MM-dd")

	private Date birth;

	private String email;

	private String encodedpassword;

	private Integer gender;

	private String mobile;

	private String name;

	private String phone;

	private Long point;
	@DateTimeFormat(pattern = "yyyy-MM-dd")

	private Date safekeyexpire;

	private String safekeyvalue;

	private String username;

	private String zipcode;

	private Long areaId;

	private Long memberrankId;







	private Set<Role> roles;


	public User() {
	}


	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public BigDecimal getAmount() {
		return amount;
	}

	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}

	public BigDecimal getBalance() {
		return balance;
	}

	public void setBalance(BigDecimal balance) {
		this.balance = balance;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEncodedpassword() {
		return encodedpassword;
	}

	public void setEncodedpassword(String encodedpassword) {
		this.encodedpassword = encodedpassword;
	}

	public Integer getGender() {
		return gender;
	}

	public void setGender(Integer gender) {
		this.gender = gender;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Long getPoint() {
		return point;
	}

	public void setPoint(Long point) {
		this.point = point;
	}

	public Date getSafekeyexpire() {
		return safekeyexpire;
	}

	public void setSafekeyexpire(Date safekeyexpire) {
		this.safekeyexpire = safekeyexpire;
	}

	public String getSafekeyvalue() {
		return safekeyvalue;
	}

	public void setSafekeyvalue(String safekeyvalue) {
		this.safekeyvalue = safekeyvalue;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public Long getAreaId() {
		return areaId;
	}

	public void setAreaId(Long areaId) {
		this.areaId = areaId;
	}

	public Long getMemberrankId() {
		return memberrankId;
	}

	public void setMemberrankId(Long memberrankId) {
		this.memberrankId = memberrankId;
	}

	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}
}

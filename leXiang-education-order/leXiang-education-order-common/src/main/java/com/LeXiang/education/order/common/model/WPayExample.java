package com.LeXiang.education.order.common.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class WPayExample implements Serializable {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public WPayExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andPayidIsNull() {
            addCriterion("payid is null");
            return (Criteria) this;
        }

        public Criteria andPayidIsNotNull() {
            addCriterion("payid is not null");
            return (Criteria) this;
        }

        public Criteria andPayidEqualTo(Long value) {
            addCriterion("payid =", value, "payid");
            return (Criteria) this;
        }

        public Criteria andPayidNotEqualTo(Long value) {
            addCriterion("payid <>", value, "payid");
            return (Criteria) this;
        }

        public Criteria andPayidGreaterThan(Long value) {
            addCriterion("payid >", value, "payid");
            return (Criteria) this;
        }

        public Criteria andPayidGreaterThanOrEqualTo(Long value) {
            addCriterion("payid >=", value, "payid");
            return (Criteria) this;
        }

        public Criteria andPayidLessThan(Long value) {
            addCriterion("payid <", value, "payid");
            return (Criteria) this;
        }

        public Criteria andPayidLessThanOrEqualTo(Long value) {
            addCriterion("payid <=", value, "payid");
            return (Criteria) this;
        }

        public Criteria andPayidIn(List<Long> values) {
            addCriterion("payid in", values, "payid");
            return (Criteria) this;
        }

        public Criteria andPayidNotIn(List<Long> values) {
            addCriterion("payid not in", values, "payid");
            return (Criteria) this;
        }

        public Criteria andPayidBetween(Long value1, Long value2) {
            addCriterion("payid between", value1, value2, "payid");
            return (Criteria) this;
        }

        public Criteria andPayidNotBetween(Long value1, Long value2) {
            addCriterion("payid not between", value1, value2, "payid");
            return (Criteria) this;
        }

        public Criteria andUsernameIsNull() {
            addCriterion("username is null");
            return (Criteria) this;
        }

        public Criteria andUsernameIsNotNull() {
            addCriterion("username is not null");
            return (Criteria) this;
        }

        public Criteria andUsernameEqualTo(String value) {
            addCriterion("username =", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameNotEqualTo(String value) {
            addCriterion("username <>", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameGreaterThan(String value) {
            addCriterion("username >", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameGreaterThanOrEqualTo(String value) {
            addCriterion("username >=", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameLessThan(String value) {
            addCriterion("username <", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameLessThanOrEqualTo(String value) {
            addCriterion("username <=", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameLike(String value) {
            addCriterion("username like", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameNotLike(String value) {
            addCriterion("username not like", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameIn(List<String> values) {
            addCriterion("username in", values, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameNotIn(List<String> values) {
            addCriterion("username not in", values, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameBetween(String value1, String value2) {
            addCriterion("username between", value1, value2, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameNotBetween(String value1, String value2) {
            addCriterion("username not between", value1, value2, "username");
            return (Criteria) this;
        }

        public Criteria andUsertypeIsNull() {
            addCriterion("usertype is null");
            return (Criteria) this;
        }

        public Criteria andUsertypeIsNotNull() {
            addCriterion("usertype is not null");
            return (Criteria) this;
        }

        public Criteria andUsertypeEqualTo(String value) {
            addCriterion("usertype =", value, "usertype");
            return (Criteria) this;
        }

        public Criteria andUsertypeNotEqualTo(String value) {
            addCriterion("usertype <>", value, "usertype");
            return (Criteria) this;
        }

        public Criteria andUsertypeGreaterThan(String value) {
            addCriterion("usertype >", value, "usertype");
            return (Criteria) this;
        }

        public Criteria andUsertypeGreaterThanOrEqualTo(String value) {
            addCriterion("usertype >=", value, "usertype");
            return (Criteria) this;
        }

        public Criteria andUsertypeLessThan(String value) {
            addCriterion("usertype <", value, "usertype");
            return (Criteria) this;
        }

        public Criteria andUsertypeLessThanOrEqualTo(String value) {
            addCriterion("usertype <=", value, "usertype");
            return (Criteria) this;
        }

        public Criteria andUsertypeLike(String value) {
            addCriterion("usertype like", value, "usertype");
            return (Criteria) this;
        }

        public Criteria andUsertypeNotLike(String value) {
            addCriterion("usertype not like", value, "usertype");
            return (Criteria) this;
        }

        public Criteria andUsertypeIn(List<String> values) {
            addCriterion("usertype in", values, "usertype");
            return (Criteria) this;
        }

        public Criteria andUsertypeNotIn(List<String> values) {
            addCriterion("usertype not in", values, "usertype");
            return (Criteria) this;
        }

        public Criteria andUsertypeBetween(String value1, String value2) {
            addCriterion("usertype between", value1, value2, "usertype");
            return (Criteria) this;
        }

        public Criteria andUsertypeNotBetween(String value1, String value2) {
            addCriterion("usertype not between", value1, value2, "usertype");
            return (Criteria) this;
        }

        public Criteria andPaymentIsNull() {
            addCriterion("payment is null");
            return (Criteria) this;
        }

        public Criteria andPaymentIsNotNull() {
            addCriterion("payment is not null");
            return (Criteria) this;
        }

        public Criteria andPaymentEqualTo(Double value) {
            addCriterion("payment =", value, "payment");
            return (Criteria) this;
        }

        public Criteria andPaymentNotEqualTo(Double value) {
            addCriterion("payment <>", value, "payment");
            return (Criteria) this;
        }

        public Criteria andPaymentGreaterThan(Double value) {
            addCriterion("payment >", value, "payment");
            return (Criteria) this;
        }

        public Criteria andPaymentGreaterThanOrEqualTo(Double value) {
            addCriterion("payment >=", value, "payment");
            return (Criteria) this;
        }

        public Criteria andPaymentLessThan(Double value) {
            addCriterion("payment <", value, "payment");
            return (Criteria) this;
        }

        public Criteria andPaymentLessThanOrEqualTo(Double value) {
            addCriterion("payment <=", value, "payment");
            return (Criteria) this;
        }

        public Criteria andPaymentIn(List<Double> values) {
            addCriterion("payment in", values, "payment");
            return (Criteria) this;
        }

        public Criteria andPaymentNotIn(List<Double> values) {
            addCriterion("payment not in", values, "payment");
            return (Criteria) this;
        }

        public Criteria andPaymentBetween(Double value1, Double value2) {
            addCriterion("payment between", value1, value2, "payment");
            return (Criteria) this;
        }

        public Criteria andPaymentNotBetween(Double value1, Double value2) {
            addCriterion("payment not between", value1, value2, "payment");
            return (Criteria) this;
        }

        public Criteria andBuytypeIsNull() {
            addCriterion("buytype is null");
            return (Criteria) this;
        }

        public Criteria andBuytypeIsNotNull() {
            addCriterion("buytype is not null");
            return (Criteria) this;
        }

        public Criteria andBuytypeEqualTo(Long value) {
            addCriterion("buytype =", value, "buytype");
            return (Criteria) this;
        }

        public Criteria andBuytypeNotEqualTo(Long value) {
            addCriterion("buytype <>", value, "buytype");
            return (Criteria) this;
        }

        public Criteria andBuytypeGreaterThan(Long value) {
            addCriterion("buytype >", value, "buytype");
            return (Criteria) this;
        }

        public Criteria andBuytypeGreaterThanOrEqualTo(Long value) {
            addCriterion("buytype >=", value, "buytype");
            return (Criteria) this;
        }

        public Criteria andBuytypeLessThan(Long value) {
            addCriterion("buytype <", value, "buytype");
            return (Criteria) this;
        }

        public Criteria andBuytypeLessThanOrEqualTo(Long value) {
            addCriterion("buytype <=", value, "buytype");
            return (Criteria) this;
        }

        public Criteria andBuytypeIn(List<Long> values) {
            addCriterion("buytype in", values, "buytype");
            return (Criteria) this;
        }

        public Criteria andBuytypeNotIn(List<Long> values) {
            addCriterion("buytype not in", values, "buytype");
            return (Criteria) this;
        }

        public Criteria andBuytypeBetween(Long value1, Long value2) {
            addCriterion("buytype between", value1, value2, "buytype");
            return (Criteria) this;
        }

        public Criteria andBuytypeNotBetween(Long value1, Long value2) {
            addCriterion("buytype not between", value1, value2, "buytype");
            return (Criteria) this;
        }

        public Criteria andPayremarkIsNull() {
            addCriterion("payremark is null");
            return (Criteria) this;
        }

        public Criteria andPayremarkIsNotNull() {
            addCriterion("payremark is not null");
            return (Criteria) this;
        }

        public Criteria andPayremarkEqualTo(String value) {
            addCriterion("payremark =", value, "payremark");
            return (Criteria) this;
        }

        public Criteria andPayremarkNotEqualTo(String value) {
            addCriterion("payremark <>", value, "payremark");
            return (Criteria) this;
        }

        public Criteria andPayremarkGreaterThan(String value) {
            addCriterion("payremark >", value, "payremark");
            return (Criteria) this;
        }

        public Criteria andPayremarkGreaterThanOrEqualTo(String value) {
            addCriterion("payremark >=", value, "payremark");
            return (Criteria) this;
        }

        public Criteria andPayremarkLessThan(String value) {
            addCriterion("payremark <", value, "payremark");
            return (Criteria) this;
        }

        public Criteria andPayremarkLessThanOrEqualTo(String value) {
            addCriterion("payremark <=", value, "payremark");
            return (Criteria) this;
        }

        public Criteria andPayremarkLike(String value) {
            addCriterion("payremark like", value, "payremark");
            return (Criteria) this;
        }

        public Criteria andPayremarkNotLike(String value) {
            addCriterion("payremark not like", value, "payremark");
            return (Criteria) this;
        }

        public Criteria andPayremarkIn(List<String> values) {
            addCriterion("payremark in", values, "payremark");
            return (Criteria) this;
        }

        public Criteria andPayremarkNotIn(List<String> values) {
            addCriterion("payremark not in", values, "payremark");
            return (Criteria) this;
        }

        public Criteria andPayremarkBetween(String value1, String value2) {
            addCriterion("payremark between", value1, value2, "payremark");
            return (Criteria) this;
        }

        public Criteria andPayremarkNotBetween(String value1, String value2) {
            addCriterion("payremark not between", value1, value2, "payremark");
            return (Criteria) this;
        }

        public Criteria andPaycreatdateIsNull() {
            addCriterion("paycreatdate is null");
            return (Criteria) this;
        }

        public Criteria andPaycreatdateIsNotNull() {
            addCriterion("paycreatdate is not null");
            return (Criteria) this;
        }

        public Criteria andPaycreatdateEqualTo(Date value) {
            addCriterion("paycreatdate =", value, "paycreatdate");
            return (Criteria) this;
        }

        public Criteria andPaycreatdateNotEqualTo(Date value) {
            addCriterion("paycreatdate <>", value, "paycreatdate");
            return (Criteria) this;
        }

        public Criteria andPaycreatdateGreaterThan(Date value) {
            addCriterion("paycreatdate >", value, "paycreatdate");
            return (Criteria) this;
        }

        public Criteria andPaycreatdateGreaterThanOrEqualTo(Date value) {
            addCriterion("paycreatdate >=", value, "paycreatdate");
            return (Criteria) this;
        }

        public Criteria andPaycreatdateLessThan(Date value) {
            addCriterion("paycreatdate <", value, "paycreatdate");
            return (Criteria) this;
        }

        public Criteria andPaycreatdateLessThanOrEqualTo(Date value) {
            addCriterion("paycreatdate <=", value, "paycreatdate");
            return (Criteria) this;
        }

        public Criteria andPaycreatdateIn(List<Date> values) {
            addCriterion("paycreatdate in", values, "paycreatdate");
            return (Criteria) this;
        }

        public Criteria andPaycreatdateNotIn(List<Date> values) {
            addCriterion("paycreatdate not in", values, "paycreatdate");
            return (Criteria) this;
        }

        public Criteria andPaycreatdateBetween(Date value1, Date value2) {
            addCriterion("paycreatdate between", value1, value2, "paycreatdate");
            return (Criteria) this;
        }

        public Criteria andPaycreatdateNotBetween(Date value1, Date value2) {
            addCriterion("paycreatdate not between", value1, value2, "paycreatdate");
            return (Criteria) this;
        }

        public Criteria andPaystatusIsNull() {
            addCriterion("paystatus is null");
            return (Criteria) this;
        }

        public Criteria andPaystatusIsNotNull() {
            addCriterion("paystatus is not null");
            return (Criteria) this;
        }

        public Criteria andPaystatusEqualTo(Integer value) {
            addCriterion("paystatus =", value, "paystatus");
            return (Criteria) this;
        }

        public Criteria andPaystatusNotEqualTo(Integer value) {
            addCriterion("paystatus <>", value, "paystatus");
            return (Criteria) this;
        }

        public Criteria andPaystatusGreaterThan(Integer value) {
            addCriterion("paystatus >", value, "paystatus");
            return (Criteria) this;
        }

        public Criteria andPaystatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("paystatus >=", value, "paystatus");
            return (Criteria) this;
        }

        public Criteria andPaystatusLessThan(Integer value) {
            addCriterion("paystatus <", value, "paystatus");
            return (Criteria) this;
        }

        public Criteria andPaystatusLessThanOrEqualTo(Integer value) {
            addCriterion("paystatus <=", value, "paystatus");
            return (Criteria) this;
        }

        public Criteria andPaystatusIn(List<Integer> values) {
            addCriterion("paystatus in", values, "paystatus");
            return (Criteria) this;
        }

        public Criteria andPaystatusNotIn(List<Integer> values) {
            addCriterion("paystatus not in", values, "paystatus");
            return (Criteria) this;
        }

        public Criteria andPaystatusBetween(Integer value1, Integer value2) {
            addCriterion("paystatus between", value1, value2, "paystatus");
            return (Criteria) this;
        }

        public Criteria andPaystatusNotBetween(Integer value1, Integer value2) {
            addCriterion("paystatus not between", value1, value2, "paystatus");
            return (Criteria) this;
        }

        public Criteria andPaylastdateIsNull() {
            addCriterion("paylastdate is null");
            return (Criteria) this;
        }

        public Criteria andPaylastdateIsNotNull() {
            addCriterion("paylastdate is not null");
            return (Criteria) this;
        }

        public Criteria andPaylastdateEqualTo(Date value) {
            addCriterion("paylastdate =", value, "paylastdate");
            return (Criteria) this;
        }

        public Criteria andPaylastdateNotEqualTo(Date value) {
            addCriterion("paylastdate <>", value, "paylastdate");
            return (Criteria) this;
        }

        public Criteria andPaylastdateGreaterThan(Date value) {
            addCriterion("paylastdate >", value, "paylastdate");
            return (Criteria) this;
        }

        public Criteria andPaylastdateGreaterThanOrEqualTo(Date value) {
            addCriterion("paylastdate >=", value, "paylastdate");
            return (Criteria) this;
        }

        public Criteria andPaylastdateLessThan(Date value) {
            addCriterion("paylastdate <", value, "paylastdate");
            return (Criteria) this;
        }

        public Criteria andPaylastdateLessThanOrEqualTo(Date value) {
            addCriterion("paylastdate <=", value, "paylastdate");
            return (Criteria) this;
        }

        public Criteria andPaylastdateIn(List<Date> values) {
            addCriterion("paylastdate in", values, "paylastdate");
            return (Criteria) this;
        }

        public Criteria andPaylastdateNotIn(List<Date> values) {
            addCriterion("paylastdate not in", values, "paylastdate");
            return (Criteria) this;
        }

        public Criteria andPaylastdateBetween(Date value1, Date value2) {
            addCriterion("paylastdate between", value1, value2, "paylastdate");
            return (Criteria) this;
        }

        public Criteria andPaylastdateNotBetween(Date value1, Date value2) {
            addCriterion("paylastdate not between", value1, value2, "paylastdate");
            return (Criteria) this;
        }

        public Criteria andOrderidIsNull() {
            addCriterion("orderid is null");
            return (Criteria) this;
        }

        public Criteria andOrderidIsNotNull() {
            addCriterion("orderid is not null");
            return (Criteria) this;
        }

        public Criteria andOrderidEqualTo(Long value) {
            addCriterion("orderid =", value, "orderid");
            return (Criteria) this;
        }

        public Criteria andOrderidNotEqualTo(Long value) {
            addCriterion("orderid <>", value, "orderid");
            return (Criteria) this;
        }

        public Criteria andOrderidGreaterThan(Long value) {
            addCriterion("orderid >", value, "orderid");
            return (Criteria) this;
        }

        public Criteria andOrderidGreaterThanOrEqualTo(Long value) {
            addCriterion("orderid >=", value, "orderid");
            return (Criteria) this;
        }

        public Criteria andOrderidLessThan(Long value) {
            addCriterion("orderid <", value, "orderid");
            return (Criteria) this;
        }

        public Criteria andOrderidLessThanOrEqualTo(Long value) {
            addCriterion("orderid <=", value, "orderid");
            return (Criteria) this;
        }

        public Criteria andOrderidIn(List<Long> values) {
            addCriterion("orderid in", values, "orderid");
            return (Criteria) this;
        }

        public Criteria andOrderidNotIn(List<Long> values) {
            addCriterion("orderid not in", values, "orderid");
            return (Criteria) this;
        }

        public Criteria andOrderidBetween(Long value1, Long value2) {
            addCriterion("orderid between", value1, value2, "orderid");
            return (Criteria) this;
        }

        public Criteria andOrderidNotBetween(Long value1, Long value2) {
            addCriterion("orderid not between", value1, value2, "orderid");
            return (Criteria) this;
        }

        public Criteria andPaytypeIsNull() {
            addCriterion("paytype is null");
            return (Criteria) this;
        }

        public Criteria andPaytypeIsNotNull() {
            addCriterion("paytype is not null");
            return (Criteria) this;
        }

        public Criteria andPaytypeEqualTo(Long value) {
            addCriterion("paytype =", value, "paytype");
            return (Criteria) this;
        }

        public Criteria andPaytypeNotEqualTo(Long value) {
            addCriterion("paytype <>", value, "paytype");
            return (Criteria) this;
        }

        public Criteria andPaytypeGreaterThan(Long value) {
            addCriterion("paytype >", value, "paytype");
            return (Criteria) this;
        }

        public Criteria andPaytypeGreaterThanOrEqualTo(Long value) {
            addCriterion("paytype >=", value, "paytype");
            return (Criteria) this;
        }

        public Criteria andPaytypeLessThan(Long value) {
            addCriterion("paytype <", value, "paytype");
            return (Criteria) this;
        }

        public Criteria andPaytypeLessThanOrEqualTo(Long value) {
            addCriterion("paytype <=", value, "paytype");
            return (Criteria) this;
        }

        public Criteria andPaytypeIn(List<Long> values) {
            addCriterion("paytype in", values, "paytype");
            return (Criteria) this;
        }

        public Criteria andPaytypeNotIn(List<Long> values) {
            addCriterion("paytype not in", values, "paytype");
            return (Criteria) this;
        }

        public Criteria andPaytypeBetween(Long value1, Long value2) {
            addCriterion("paytype between", value1, value2, "paytype");
            return (Criteria) this;
        }

        public Criteria andPaytypeNotBetween(Long value1, Long value2) {
            addCriterion("paytype not between", value1, value2, "paytype");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}
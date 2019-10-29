package com.LeXiang.education.order.common.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class WBankExample implements Serializable {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public WBankExample() {
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

        public Criteria andBankidIsNull() {
            addCriterion("bankid is null");
            return (Criteria) this;
        }

        public Criteria andBankidIsNotNull() {
            addCriterion("bankid is not null");
            return (Criteria) this;
        }

        public Criteria andBankidEqualTo(Long value) {
            addCriterion("bankid =", value, "bankid");
            return (Criteria) this;
        }

        public Criteria andBankidNotEqualTo(Long value) {
            addCriterion("bankid <>", value, "bankid");
            return (Criteria) this;
        }

        public Criteria andBankidGreaterThan(Long value) {
            addCriterion("bankid >", value, "bankid");
            return (Criteria) this;
        }

        public Criteria andBankidGreaterThanOrEqualTo(Long value) {
            addCriterion("bankid >=", value, "bankid");
            return (Criteria) this;
        }

        public Criteria andBankidLessThan(Long value) {
            addCriterion("bankid <", value, "bankid");
            return (Criteria) this;
        }

        public Criteria andBankidLessThanOrEqualTo(Long value) {
            addCriterion("bankid <=", value, "bankid");
            return (Criteria) this;
        }

        public Criteria andBankidIn(List<Long> values) {
            addCriterion("bankid in", values, "bankid");
            return (Criteria) this;
        }

        public Criteria andBankidNotIn(List<Long> values) {
            addCriterion("bankid not in", values, "bankid");
            return (Criteria) this;
        }

        public Criteria andBankidBetween(Long value1, Long value2) {
            addCriterion("bankid between", value1, value2, "bankid");
            return (Criteria) this;
        }

        public Criteria andBankidNotBetween(Long value1, Long value2) {
            addCriterion("bankid not between", value1, value2, "bankid");
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

        public Criteria andBanknameIsNull() {
            addCriterion("bankname is null");
            return (Criteria) this;
        }

        public Criteria andBanknameIsNotNull() {
            addCriterion("bankname is not null");
            return (Criteria) this;
        }

        public Criteria andBanknameEqualTo(String value) {
            addCriterion("bankname =", value, "bankname");
            return (Criteria) this;
        }

        public Criteria andBanknameNotEqualTo(String value) {
            addCriterion("bankname <>", value, "bankname");
            return (Criteria) this;
        }

        public Criteria andBanknameGreaterThan(String value) {
            addCriterion("bankname >", value, "bankname");
            return (Criteria) this;
        }

        public Criteria andBanknameGreaterThanOrEqualTo(String value) {
            addCriterion("bankname >=", value, "bankname");
            return (Criteria) this;
        }

        public Criteria andBanknameLessThan(String value) {
            addCriterion("bankname <", value, "bankname");
            return (Criteria) this;
        }

        public Criteria andBanknameLessThanOrEqualTo(String value) {
            addCriterion("bankname <=", value, "bankname");
            return (Criteria) this;
        }

        public Criteria andBanknameLike(String value) {
            addCriterion("bankname like", value, "bankname");
            return (Criteria) this;
        }

        public Criteria andBanknameNotLike(String value) {
            addCriterion("bankname not like", value, "bankname");
            return (Criteria) this;
        }

        public Criteria andBanknameIn(List<String> values) {
            addCriterion("bankname in", values, "bankname");
            return (Criteria) this;
        }

        public Criteria andBanknameNotIn(List<String> values) {
            addCriterion("bankname not in", values, "bankname");
            return (Criteria) this;
        }

        public Criteria andBanknameBetween(String value1, String value2) {
            addCriterion("bankname between", value1, value2, "bankname");
            return (Criteria) this;
        }

        public Criteria andBanknameNotBetween(String value1, String value2) {
            addCriterion("bankname not between", value1, value2, "bankname");
            return (Criteria) this;
        }

        public Criteria andOpenbankIsNull() {
            addCriterion("openbank is null");
            return (Criteria) this;
        }

        public Criteria andOpenbankIsNotNull() {
            addCriterion("openbank is not null");
            return (Criteria) this;
        }

        public Criteria andOpenbankEqualTo(String value) {
            addCriterion("openbank =", value, "openbank");
            return (Criteria) this;
        }

        public Criteria andOpenbankNotEqualTo(String value) {
            addCriterion("openbank <>", value, "openbank");
            return (Criteria) this;
        }

        public Criteria andOpenbankGreaterThan(String value) {
            addCriterion("openbank >", value, "openbank");
            return (Criteria) this;
        }

        public Criteria andOpenbankGreaterThanOrEqualTo(String value) {
            addCriterion("openbank >=", value, "openbank");
            return (Criteria) this;
        }

        public Criteria andOpenbankLessThan(String value) {
            addCriterion("openbank <", value, "openbank");
            return (Criteria) this;
        }

        public Criteria andOpenbankLessThanOrEqualTo(String value) {
            addCriterion("openbank <=", value, "openbank");
            return (Criteria) this;
        }

        public Criteria andOpenbankLike(String value) {
            addCriterion("openbank like", value, "openbank");
            return (Criteria) this;
        }

        public Criteria andOpenbankNotLike(String value) {
            addCriterion("openbank not like", value, "openbank");
            return (Criteria) this;
        }

        public Criteria andOpenbankIn(List<String> values) {
            addCriterion("openbank in", values, "openbank");
            return (Criteria) this;
        }

        public Criteria andOpenbankNotIn(List<String> values) {
            addCriterion("openbank not in", values, "openbank");
            return (Criteria) this;
        }

        public Criteria andOpenbankBetween(String value1, String value2) {
            addCriterion("openbank between", value1, value2, "openbank");
            return (Criteria) this;
        }

        public Criteria andOpenbankNotBetween(String value1, String value2) {
            addCriterion("openbank not between", value1, value2, "openbank");
            return (Criteria) this;
        }

        public Criteria andBankaccountIsNull() {
            addCriterion("bankaccount is null");
            return (Criteria) this;
        }

        public Criteria andBankaccountIsNotNull() {
            addCriterion("bankaccount is not null");
            return (Criteria) this;
        }

        public Criteria andBankaccountEqualTo(Long value) {
            addCriterion("bankaccount =", value, "bankaccount");
            return (Criteria) this;
        }

        public Criteria andBankaccountNotEqualTo(Long value) {
            addCriterion("bankaccount <>", value, "bankaccount");
            return (Criteria) this;
        }

        public Criteria andBankaccountGreaterThan(Long value) {
            addCriterion("bankaccount >", value, "bankaccount");
            return (Criteria) this;
        }

        public Criteria andBankaccountGreaterThanOrEqualTo(Long value) {
            addCriterion("bankaccount >=", value, "bankaccount");
            return (Criteria) this;
        }

        public Criteria andBankaccountLessThan(Long value) {
            addCriterion("bankaccount <", value, "bankaccount");
            return (Criteria) this;
        }

        public Criteria andBankaccountLessThanOrEqualTo(Long value) {
            addCriterion("bankaccount <=", value, "bankaccount");
            return (Criteria) this;
        }

        public Criteria andBankaccountIn(List<Long> values) {
            addCriterion("bankaccount in", values, "bankaccount");
            return (Criteria) this;
        }

        public Criteria andBankaccountNotIn(List<Long> values) {
            addCriterion("bankaccount not in", values, "bankaccount");
            return (Criteria) this;
        }

        public Criteria andBankaccountBetween(Long value1, Long value2) {
            addCriterion("bankaccount between", value1, value2, "bankaccount");
            return (Criteria) this;
        }

        public Criteria andBankaccountNotBetween(Long value1, Long value2) {
            addCriterion("bankaccount not between", value1, value2, "bankaccount");
            return (Criteria) this;
        }

        public Criteria andBankareaidIsNull() {
            addCriterion("bankareaid is null");
            return (Criteria) this;
        }

        public Criteria andBankareaidIsNotNull() {
            addCriterion("bankareaid is not null");
            return (Criteria) this;
        }

        public Criteria andBankareaidEqualTo(Long value) {
            addCriterion("bankareaid =", value, "bankareaid");
            return (Criteria) this;
        }

        public Criteria andBankareaidNotEqualTo(Long value) {
            addCriterion("bankareaid <>", value, "bankareaid");
            return (Criteria) this;
        }

        public Criteria andBankareaidGreaterThan(Long value) {
            addCriterion("bankareaid >", value, "bankareaid");
            return (Criteria) this;
        }

        public Criteria andBankareaidGreaterThanOrEqualTo(Long value) {
            addCriterion("bankareaid >=", value, "bankareaid");
            return (Criteria) this;
        }

        public Criteria andBankareaidLessThan(Long value) {
            addCriterion("bankareaid <", value, "bankareaid");
            return (Criteria) this;
        }

        public Criteria andBankareaidLessThanOrEqualTo(Long value) {
            addCriterion("bankareaid <=", value, "bankareaid");
            return (Criteria) this;
        }

        public Criteria andBankareaidIn(List<Long> values) {
            addCriterion("bankareaid in", values, "bankareaid");
            return (Criteria) this;
        }

        public Criteria andBankareaidNotIn(List<Long> values) {
            addCriterion("bankareaid not in", values, "bankareaid");
            return (Criteria) this;
        }

        public Criteria andBankareaidBetween(Long value1, Long value2) {
            addCriterion("bankareaid between", value1, value2, "bankareaid");
            return (Criteria) this;
        }

        public Criteria andBankareaidNotBetween(Long value1, Long value2) {
            addCriterion("bankareaid not between", value1, value2, "bankareaid");
            return (Criteria) this;
        }

        public Criteria andBanksiteIsNull() {
            addCriterion("banksite is null");
            return (Criteria) this;
        }

        public Criteria andBanksiteIsNotNull() {
            addCriterion("banksite is not null");
            return (Criteria) this;
        }

        public Criteria andBanksiteEqualTo(String value) {
            addCriterion("banksite =", value, "banksite");
            return (Criteria) this;
        }

        public Criteria andBanksiteNotEqualTo(String value) {
            addCriterion("banksite <>", value, "banksite");
            return (Criteria) this;
        }

        public Criteria andBanksiteGreaterThan(String value) {
            addCriterion("banksite >", value, "banksite");
            return (Criteria) this;
        }

        public Criteria andBanksiteGreaterThanOrEqualTo(String value) {
            addCriterion("banksite >=", value, "banksite");
            return (Criteria) this;
        }

        public Criteria andBanksiteLessThan(String value) {
            addCriterion("banksite <", value, "banksite");
            return (Criteria) this;
        }

        public Criteria andBanksiteLessThanOrEqualTo(String value) {
            addCriterion("banksite <=", value, "banksite");
            return (Criteria) this;
        }

        public Criteria andBanksiteLike(String value) {
            addCriterion("banksite like", value, "banksite");
            return (Criteria) this;
        }

        public Criteria andBanksiteNotLike(String value) {
            addCriterion("banksite not like", value, "banksite");
            return (Criteria) this;
        }

        public Criteria andBanksiteIn(List<String> values) {
            addCriterion("banksite in", values, "banksite");
            return (Criteria) this;
        }

        public Criteria andBanksiteNotIn(List<String> values) {
            addCriterion("banksite not in", values, "banksite");
            return (Criteria) this;
        }

        public Criteria andBanksiteBetween(String value1, String value2) {
            addCriterion("banksite between", value1, value2, "banksite");
            return (Criteria) this;
        }

        public Criteria andBanksiteNotBetween(String value1, String value2) {
            addCriterion("banksite not between", value1, value2, "banksite");
            return (Criteria) this;
        }

        public Criteria andBankphoneIsNull() {
            addCriterion("bankphone is null");
            return (Criteria) this;
        }

        public Criteria andBankphoneIsNotNull() {
            addCriterion("bankphone is not null");
            return (Criteria) this;
        }

        public Criteria andBankphoneEqualTo(Long value) {
            addCriterion("bankphone =", value, "bankphone");
            return (Criteria) this;
        }

        public Criteria andBankphoneNotEqualTo(Long value) {
            addCriterion("bankphone <>", value, "bankphone");
            return (Criteria) this;
        }

        public Criteria andBankphoneGreaterThan(Long value) {
            addCriterion("bankphone >", value, "bankphone");
            return (Criteria) this;
        }

        public Criteria andBankphoneGreaterThanOrEqualTo(Long value) {
            addCriterion("bankphone >=", value, "bankphone");
            return (Criteria) this;
        }

        public Criteria andBankphoneLessThan(Long value) {
            addCriterion("bankphone <", value, "bankphone");
            return (Criteria) this;
        }

        public Criteria andBankphoneLessThanOrEqualTo(Long value) {
            addCriterion("bankphone <=", value, "bankphone");
            return (Criteria) this;
        }

        public Criteria andBankphoneIn(List<Long> values) {
            addCriterion("bankphone in", values, "bankphone");
            return (Criteria) this;
        }

        public Criteria andBankphoneNotIn(List<Long> values) {
            addCriterion("bankphone not in", values, "bankphone");
            return (Criteria) this;
        }

        public Criteria andBankphoneBetween(Long value1, Long value2) {
            addCriterion("bankphone between", value1, value2, "bankphone");
            return (Criteria) this;
        }

        public Criteria andBankphoneNotBetween(Long value1, Long value2) {
            addCriterion("bankphone not between", value1, value2, "bankphone");
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
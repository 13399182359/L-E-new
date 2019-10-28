package com.LeXiang.userDao;

import com.LeXiang.education.user.common.model.PlayClassgtj;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;

public interface EsUserDao extends ElasticsearchRepository<PlayClassgtj,Long> {
}

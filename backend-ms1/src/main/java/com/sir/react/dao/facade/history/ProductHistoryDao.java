package com.sir.react.dao.facade.history;

import com.sir.react.zynerator.repository.AbstractHistoryRepository;
import com.sir.react.bean.history.ProductHistory;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductHistoryDao extends AbstractHistoryRepository<ProductHistory,Long> {

}

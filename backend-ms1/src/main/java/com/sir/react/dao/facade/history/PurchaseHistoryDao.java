package com.sir.react.dao.facade.history;

import com.sir.react.zynerator.repository.AbstractHistoryRepository;
import com.sir.react.bean.history.PurchaseHistory;
import org.springframework.stereotype.Repository;

@Repository
public interface PurchaseHistoryDao extends AbstractHistoryRepository<PurchaseHistory,Long> {

}

package com.sir.react.dao.facade.history;

import com.sir.react.zynerator.repository.AbstractHistoryRepository;
import com.sir.react.bean.history.PurchaseItemHistory;
import org.springframework.stereotype.Repository;

@Repository
public interface PurchaseItemHistoryDao extends AbstractHistoryRepository<PurchaseItemHistory,Long> {

}

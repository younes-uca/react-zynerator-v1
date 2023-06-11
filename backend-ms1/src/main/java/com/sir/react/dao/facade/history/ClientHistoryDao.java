package com.sir.react.dao.facade.history;

import com.sir.react.zynerator.repository.AbstractHistoryRepository;
import com.sir.react.bean.history.ClientHistory;
import org.springframework.stereotype.Repository;

@Repository
public interface ClientHistoryDao extends AbstractHistoryRepository<ClientHistory,Long> {

}

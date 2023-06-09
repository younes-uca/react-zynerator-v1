package ma.sir.walo.dao.facade.history;

import ma.sir.walo.zynerator.repository.AbstractHistoryRepository;
import ma.sir.walo.bean.history.PurchaseItemHistory;
import org.springframework.stereotype.Repository;

@Repository
public interface PurchaseItemHistoryDao extends AbstractHistoryRepository<PurchaseItemHistory,Long> {

}

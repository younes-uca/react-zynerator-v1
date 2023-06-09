package ma.sir.walo.dao.facade.history;

import ma.sir.walo.zynerator.repository.AbstractHistoryRepository;
import ma.sir.walo.bean.history.PurchaseHistory;
import org.springframework.stereotype.Repository;

@Repository
public interface PurchaseHistoryDao extends AbstractHistoryRepository<PurchaseHistory,Long> {

}

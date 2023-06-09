package ma.sir.walo.dao.facade.history;

import ma.sir.walo.zynerator.repository.AbstractHistoryRepository;
import ma.sir.walo.bean.history.ProductHistory;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductHistoryDao extends AbstractHistoryRepository<ProductHistory,Long> {

}

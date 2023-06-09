package ma.sir.walo.dao.facade.history;

import ma.sir.walo.zynerator.repository.AbstractHistoryRepository;
import ma.sir.walo.bean.history.ClientHistory;
import org.springframework.stereotype.Repository;

@Repository
public interface ClientHistoryDao extends AbstractHistoryRepository<ClientHistory,Long> {

}

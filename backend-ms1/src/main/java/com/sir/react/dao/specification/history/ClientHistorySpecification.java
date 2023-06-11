package  com.sir.react.dao.specification.history;

import com.sir.react.zynerator.specification.AbstractHistorySpecification;
import com.sir.react.dao.criteria.history.ClientHistoryCriteria;
import com.sir.react.bean.history.ClientHistory;


public class ClientHistorySpecification extends AbstractHistorySpecification<ClientHistoryCriteria, ClientHistory> {

    public ClientHistorySpecification(ClientHistoryCriteria criteria) {
        super(criteria);
    }

    public ClientHistorySpecification(ClientHistoryCriteria criteria, boolean distinct) {
        super(criteria, distinct);
    }

}

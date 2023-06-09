package  ma.sir.walo.dao.specification.history;

import ma.sir.walo.zynerator.specification.AbstractHistorySpecification;
import ma.sir.walo.dao.criteria.history.ClientHistoryCriteria;
import ma.sir.walo.bean.history.ClientHistory;


public class ClientHistorySpecification extends AbstractHistorySpecification<ClientHistoryCriteria, ClientHistory> {

    public ClientHistorySpecification(ClientHistoryCriteria criteria) {
        super(criteria);
    }

    public ClientHistorySpecification(ClientHistoryCriteria criteria, boolean distinct) {
        super(criteria, distinct);
    }

}

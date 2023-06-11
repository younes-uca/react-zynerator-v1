package  com.sir.react.dao.specification.history;

import com.sir.react.zynerator.specification.AbstractHistorySpecification;
import com.sir.react.dao.criteria.history.PurchaseHistoryCriteria;
import com.sir.react.bean.history.PurchaseHistory;


public class PurchaseHistorySpecification extends AbstractHistorySpecification<PurchaseHistoryCriteria, PurchaseHistory> {

    public PurchaseHistorySpecification(PurchaseHistoryCriteria criteria) {
        super(criteria);
    }

    public PurchaseHistorySpecification(PurchaseHistoryCriteria criteria, boolean distinct) {
        super(criteria, distinct);
    }

}

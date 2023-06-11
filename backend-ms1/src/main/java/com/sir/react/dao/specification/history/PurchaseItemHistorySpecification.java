package  com.sir.react.dao.specification.history;

import com.sir.react.zynerator.specification.AbstractHistorySpecification;
import com.sir.react.dao.criteria.history.PurchaseItemHistoryCriteria;
import com.sir.react.bean.history.PurchaseItemHistory;


public class PurchaseItemHistorySpecification extends AbstractHistorySpecification<PurchaseItemHistoryCriteria, PurchaseItemHistory> {

    public PurchaseItemHistorySpecification(PurchaseItemHistoryCriteria criteria) {
        super(criteria);
    }

    public PurchaseItemHistorySpecification(PurchaseItemHistoryCriteria criteria, boolean distinct) {
        super(criteria, distinct);
    }

}

package  ma.sir.walo.dao.specification.history;

import ma.sir.walo.zynerator.specification.AbstractHistorySpecification;
import ma.sir.walo.dao.criteria.history.PurchaseItemHistoryCriteria;
import ma.sir.walo.bean.history.PurchaseItemHistory;


public class PurchaseItemHistorySpecification extends AbstractHistorySpecification<PurchaseItemHistoryCriteria, PurchaseItemHistory> {

    public PurchaseItemHistorySpecification(PurchaseItemHistoryCriteria criteria) {
        super(criteria);
    }

    public PurchaseItemHistorySpecification(PurchaseItemHistoryCriteria criteria, boolean distinct) {
        super(criteria, distinct);
    }

}

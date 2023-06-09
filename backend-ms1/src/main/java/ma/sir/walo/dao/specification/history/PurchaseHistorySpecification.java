package  ma.sir.walo.dao.specification.history;

import ma.sir.walo.zynerator.specification.AbstractHistorySpecification;
import ma.sir.walo.dao.criteria.history.PurchaseHistoryCriteria;
import ma.sir.walo.bean.history.PurchaseHistory;


public class PurchaseHistorySpecification extends AbstractHistorySpecification<PurchaseHistoryCriteria, PurchaseHistory> {

    public PurchaseHistorySpecification(PurchaseHistoryCriteria criteria) {
        super(criteria);
    }

    public PurchaseHistorySpecification(PurchaseHistoryCriteria criteria, boolean distinct) {
        super(criteria, distinct);
    }

}

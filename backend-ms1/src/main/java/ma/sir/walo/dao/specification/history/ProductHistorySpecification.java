package  ma.sir.walo.dao.specification.history;

import ma.sir.walo.zynerator.specification.AbstractHistorySpecification;
import ma.sir.walo.dao.criteria.history.ProductHistoryCriteria;
import ma.sir.walo.bean.history.ProductHistory;


public class ProductHistorySpecification extends AbstractHistorySpecification<ProductHistoryCriteria, ProductHistory> {

    public ProductHistorySpecification(ProductHistoryCriteria criteria) {
        super(criteria);
    }

    public ProductHistorySpecification(ProductHistoryCriteria criteria, boolean distinct) {
        super(criteria, distinct);
    }

}

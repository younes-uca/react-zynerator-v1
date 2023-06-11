package  com.sir.react.dao.specification.history;

import com.sir.react.zynerator.specification.AbstractHistorySpecification;
import com.sir.react.dao.criteria.history.ProductHistoryCriteria;
import com.sir.react.bean.history.ProductHistory;


public class ProductHistorySpecification extends AbstractHistorySpecification<ProductHistoryCriteria, ProductHistory> {

    public ProductHistorySpecification(ProductHistoryCriteria criteria) {
        super(criteria);
    }

    public ProductHistorySpecification(ProductHistoryCriteria criteria, boolean distinct) {
        super(criteria, distinct);
    }

}

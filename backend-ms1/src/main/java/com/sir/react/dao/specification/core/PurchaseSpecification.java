package  com.sir.react.dao.specification.core;

import com.sir.react.zynerator.specification.AbstractSpecification;
import com.sir.react.dao.criteria.core.PurchaseCriteria;
import com.sir.react.bean.core.Purchase;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.util.ArrayList;
import java.util.List;

public class PurchaseSpecification extends  AbstractSpecification<PurchaseCriteria, Purchase>  {

    @Override
    public void constructPredicates() {
        addPredicateId("id", criteria);
        addPredicate("reference", criteria.getReference(),criteria.getReferenceLike());
        addPredicate("image", criteria.getImage(),criteria.getImageLike());
        addPredicateBigDecimal("total", criteria.getTotal(), criteria.getTotalMin(), criteria.getTotalMax());
        addPredicateFk("client","id", criteria.getClient()==null?null:criteria.getClient().getId());
        addPredicateFk("client","id", criteria.getClients());
        addPredicateFk("client","email", criteria.getClient()==null?null:criteria.getClient().getEmail());
    }

    public PurchaseSpecification(PurchaseCriteria criteria) {
        super(criteria);
    }

    public PurchaseSpecification(PurchaseCriteria criteria, boolean distinct) {
        super(criteria, distinct);
    }

}

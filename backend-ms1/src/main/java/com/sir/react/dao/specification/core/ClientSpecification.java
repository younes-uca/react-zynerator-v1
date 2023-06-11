package  com.sir.react.dao.specification.core;

import com.sir.react.zynerator.specification.AbstractSpecification;
import com.sir.react.dao.criteria.core.ClientCriteria;
import com.sir.react.bean.core.Client;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.util.ArrayList;
import java.util.List;

public class ClientSpecification extends  AbstractSpecification<ClientCriteria, Client>  {

    @Override
    public void constructPredicates() {
        addPredicateId("id", criteria);
        addPredicate("fullName", criteria.getFullName(),criteria.getFullNameLike());
        addPredicate("email", criteria.getEmail(),criteria.getEmailLike());
    }

    public ClientSpecification(ClientCriteria criteria) {
        super(criteria);
    }

    public ClientSpecification(ClientCriteria criteria, boolean distinct) {
        super(criteria, distinct);
    }

}

package com.sir.react.dao.facade.core;

import org.springframework.data.jpa.repository.Query;
import com.sir.react.zynerator.repository.AbstractRepository;
import com.sir.react.bean.core.Purchase;
import org.springframework.stereotype.Repository;
import com.sir.react.bean.core.Purchase;
import java.util.List;


@Repository
public interface PurchaseDao extends AbstractRepository<Purchase,Long>  {
    Purchase findByReference(String reference);
    int deleteByReference(String reference);

    List<Purchase> findByClientId(Long id);
    int deleteByClientId(Long id);

    @Query("SELECT NEW Purchase(item.id,item.reference) FROM Purchase item")
    List<Purchase> findAllOptimized();
}

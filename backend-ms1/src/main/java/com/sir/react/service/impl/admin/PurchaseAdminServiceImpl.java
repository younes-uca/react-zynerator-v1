package com.sir.react.service.impl.admin;

import com.sir.react.bean.core.Purchase;
import com.sir.react.bean.history.PurchaseHistory;
import com.sir.react.dao.criteria.core.PurchaseCriteria;
import com.sir.react.dao.criteria.history.PurchaseHistoryCriteria;
import com.sir.react.dao.facade.core.PurchaseDao;
import com.sir.react.dao.facade.history.PurchaseHistoryDao;
import com.sir.react.dao.specification.core.PurchaseSpecification;
import com.sir.react.service.facade.admin.PurchaseAdminService;
import com.sir.react.zynerator.service.AbstractServiceImpl;
import com.sir.react.zynerator.util.ListUtil;
import org.springframework.stereotype.Service;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.sir.react.bean.core.PurchaseItem;

import com.sir.react.service.facade.admin.ClientAdminService ;
import com.sir.react.service.facade.admin.PurchaseItemAdminService ;


import java.util.List;
@Service
public class PurchaseAdminServiceImpl extends AbstractServiceImpl<Purchase,PurchaseHistory, PurchaseCriteria, PurchaseHistoryCriteria, PurchaseDao,
PurchaseHistoryDao> implements PurchaseAdminService {


    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class, readOnly = false)
    public Purchase create(Purchase t) {
        super.create(t);
        if (t.getPurchaseItems() != null) {
            for (PurchaseItem element : t.getPurchaseItems()) {
                element.setPurchase(t);
                purchaseItemService.create(element);
            }

        }
        return t;
    }

    public Purchase findWithAssociatedLists(Long id){
        Purchase result = dao.findById(id).orElse(null);
        if(result!=null && result.getId() != null) {
            result.setPurchaseItems(purchaseItemService.findByPurchaseId(id));
        }
        return result;
    }
    @Transactional
    public void deleteAssociatedLists(Long id) {
        purchaseItemService.deleteByPurchaseId(id);
    }


    public void updateWithAssociatedLists(Purchase purchase){
    if(purchase !=null && purchase.getId() != null){
            List<List<PurchaseItem>> resultPurchaseItems= purchaseItemService.getToBeSavedAndToBeDeleted(purchaseItemService.findByPurchaseId(purchase.getId()),purchase.getPurchaseItems());
            purchaseItemService.delete(resultPurchaseItems.get(1));
            ListUtil.emptyIfNull(resultPurchaseItems.get(0)).forEach(e -> e.setPurchase(purchase));
            purchaseItemService.update(resultPurchaseItems.get(0),true);
    }
    }

    public Purchase findByReferenceEntity(Purchase t){
        return  dao.findByReference(t.getReference());
    }

    public List<Purchase> findByClientId(Long id){
        return dao.findByClientId(id);
    }
    public int deleteByClientId(Long id){
        return dao.deleteByClientId(id);
    }




    public void configure() {
        super.configure(Purchase.class,PurchaseHistory.class, PurchaseHistoryCriteria.class, PurchaseSpecification.class);
    }

    @Autowired
    private ClientAdminService clientService ;
    @Autowired
    private PurchaseItemAdminService purchaseItemService ;

    public PurchaseAdminServiceImpl(PurchaseDao dao, PurchaseHistoryDao historyDao) {
        super(dao, historyDao);
    }

}
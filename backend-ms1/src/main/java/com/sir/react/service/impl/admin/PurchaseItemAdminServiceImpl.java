package com.sir.react.service.impl.admin;

import com.sir.react.bean.core.PurchaseItem;
import com.sir.react.bean.history.PurchaseItemHistory;
import com.sir.react.dao.criteria.core.PurchaseItemCriteria;
import com.sir.react.dao.criteria.history.PurchaseItemHistoryCriteria;
import com.sir.react.dao.facade.core.PurchaseItemDao;
import com.sir.react.dao.facade.history.PurchaseItemHistoryDao;
import com.sir.react.dao.specification.core.PurchaseItemSpecification;
import com.sir.react.service.facade.admin.PurchaseItemAdminService;
import com.sir.react.zynerator.service.AbstractServiceImpl;
import com.sir.react.zynerator.util.ListUtil;
import org.springframework.stereotype.Service;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;


import com.sir.react.service.facade.admin.ProductAdminService ;
import com.sir.react.service.facade.admin.PurchaseAdminService ;


import java.util.List;
@Service
public class PurchaseItemAdminServiceImpl extends AbstractServiceImpl<PurchaseItem,PurchaseItemHistory, PurchaseItemCriteria, PurchaseItemHistoryCriteria, PurchaseItemDao,
PurchaseItemHistoryDao> implements PurchaseItemAdminService {




    public List<PurchaseItem> findByProductId(Long id){
        return dao.findByProductId(id);
    }
    public int deleteByProductId(Long id){
        return dao.deleteByProductId(id);
    }
    public List<PurchaseItem> findByPurchaseId(Long id){
        return dao.findByPurchaseId(id);
    }
    public int deleteByPurchaseId(Long id){
        return dao.deleteByPurchaseId(id);
    }




    public void configure() {
        super.configure(PurchaseItem.class,PurchaseItemHistory.class, PurchaseItemHistoryCriteria.class, PurchaseItemSpecification.class);
    }

    @Autowired
    private ProductAdminService productService ;
    @Autowired
    private PurchaseAdminService purchaseService ;

    public PurchaseItemAdminServiceImpl(PurchaseItemDao dao, PurchaseItemHistoryDao historyDao) {
        super(dao, historyDao);
    }

}
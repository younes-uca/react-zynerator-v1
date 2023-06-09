package ma.sir.walo.service.impl.admin;

import ma.sir.walo.bean.core.PurchaseItem;
import ma.sir.walo.bean.history.PurchaseItemHistory;
import ma.sir.walo.dao.criteria.core.PurchaseItemCriteria;
import ma.sir.walo.dao.criteria.history.PurchaseItemHistoryCriteria;
import ma.sir.walo.dao.facade.core.PurchaseItemDao;
import ma.sir.walo.dao.facade.history.PurchaseItemHistoryDao;
import ma.sir.walo.dao.specification.core.PurchaseItemSpecification;
import ma.sir.walo.service.facade.admin.PurchaseItemAdminService;
import ma.sir.walo.zynerator.service.AbstractServiceImpl;
import ma.sir.walo.zynerator.util.ListUtil;
import org.springframework.stereotype.Service;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;


import ma.sir.walo.service.facade.admin.ProductAdminService ;
import ma.sir.walo.service.facade.admin.PurchaseAdminService ;


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
package ma.sir.walo.service.facade.admin;

import java.util.List;
import ma.sir.walo.bean.core.PurchaseItem;
import ma.sir.walo.dao.criteria.core.PurchaseItemCriteria;
import ma.sir.walo.dao.criteria.history.PurchaseItemHistoryCriteria;
import ma.sir.walo.zynerator.service.IService;


public interface PurchaseItemAdminService extends  IService<PurchaseItem,PurchaseItemCriteria, PurchaseItemHistoryCriteria>  {

    List<PurchaseItem> findByProductId(Long id);
    int deleteByProductId(Long id);
    List<PurchaseItem> findByPurchaseId(Long id);
    int deleteByPurchaseId(Long id);



}

package ma.sir.walo.service.facade.admin;

import java.util.List;
import ma.sir.walo.bean.core.Purchase;
import ma.sir.walo.dao.criteria.core.PurchaseCriteria;
import ma.sir.walo.dao.criteria.history.PurchaseHistoryCriteria;
import ma.sir.walo.zynerator.service.IService;


public interface PurchaseAdminService extends  IService<Purchase,PurchaseCriteria, PurchaseHistoryCriteria>  {

    List<Purchase> findByClientId(Long id);
    int deleteByClientId(Long id);



}

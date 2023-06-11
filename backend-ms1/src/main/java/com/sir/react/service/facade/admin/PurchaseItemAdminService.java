package com.sir.react.service.facade.admin;

import java.util.List;
import com.sir.react.bean.core.PurchaseItem;
import com.sir.react.dao.criteria.core.PurchaseItemCriteria;
import com.sir.react.dao.criteria.history.PurchaseItemHistoryCriteria;
import com.sir.react.zynerator.service.IService;


public interface PurchaseItemAdminService extends  IService<PurchaseItem,PurchaseItemCriteria, PurchaseItemHistoryCriteria>  {

    List<PurchaseItem> findByProductId(Long id);
    int deleteByProductId(Long id);
    List<PurchaseItem> findByPurchaseId(Long id);
    int deleteByPurchaseId(Long id);



}

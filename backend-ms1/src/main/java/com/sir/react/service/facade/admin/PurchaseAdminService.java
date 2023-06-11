package com.sir.react.service.facade.admin;

import java.util.List;
import com.sir.react.bean.core.Purchase;
import com.sir.react.dao.criteria.core.PurchaseCriteria;
import com.sir.react.dao.criteria.history.PurchaseHistoryCriteria;
import com.sir.react.zynerator.service.IService;


public interface PurchaseAdminService extends  IService<Purchase,PurchaseCriteria, PurchaseHistoryCriteria>  {

    List<Purchase> findByClientId(Long id);
    int deleteByClientId(Long id);



}

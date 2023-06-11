package com.sir.react.service.facade.admin;

import java.util.List;
import com.sir.react.bean.core.Product;
import com.sir.react.dao.criteria.core.ProductCriteria;
import com.sir.react.dao.criteria.history.ProductHistoryCriteria;
import com.sir.react.zynerator.service.IService;


public interface ProductAdminService extends  IService<Product,ProductCriteria, ProductHistoryCriteria>  {




}

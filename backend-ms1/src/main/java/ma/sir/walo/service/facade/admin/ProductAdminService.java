package ma.sir.walo.service.facade.admin;

import java.util.List;
import ma.sir.walo.bean.core.Product;
import ma.sir.walo.dao.criteria.core.ProductCriteria;
import ma.sir.walo.dao.criteria.history.ProductHistoryCriteria;
import ma.sir.walo.zynerator.service.IService;


public interface ProductAdminService extends  IService<Product,ProductCriteria, ProductHistoryCriteria>  {




}

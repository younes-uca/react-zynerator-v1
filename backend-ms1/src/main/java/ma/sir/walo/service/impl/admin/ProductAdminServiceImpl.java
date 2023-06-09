package ma.sir.walo.service.impl.admin;

import ma.sir.walo.bean.core.Product;
import ma.sir.walo.bean.history.ProductHistory;
import ma.sir.walo.dao.criteria.core.ProductCriteria;
import ma.sir.walo.dao.criteria.history.ProductHistoryCriteria;
import ma.sir.walo.dao.facade.core.ProductDao;
import ma.sir.walo.dao.facade.history.ProductHistoryDao;
import ma.sir.walo.dao.specification.core.ProductSpecification;
import ma.sir.walo.service.facade.admin.ProductAdminService;
import ma.sir.walo.zynerator.service.AbstractServiceImpl;
import ma.sir.walo.zynerator.util.ListUtil;
import org.springframework.stereotype.Service;
import java.util.List;






import java.util.List;
@Service
public class ProductAdminServiceImpl extends AbstractServiceImpl<Product,ProductHistory, ProductCriteria, ProductHistoryCriteria, ProductDao,
ProductHistoryDao> implements ProductAdminService {



    public Product findByReferenceEntity(Product t){
        return  dao.findByCode(t.getCode());
    }





    public void configure() {
        super.configure(Product.class,ProductHistory.class, ProductHistoryCriteria.class, ProductSpecification.class);
    }


    public ProductAdminServiceImpl(ProductDao dao, ProductHistoryDao historyDao) {
        super(dao, historyDao);
    }

}
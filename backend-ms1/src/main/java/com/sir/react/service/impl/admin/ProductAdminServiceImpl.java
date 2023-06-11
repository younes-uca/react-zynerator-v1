package com.sir.react.service.impl.admin;

import com.sir.react.bean.core.Product;
import com.sir.react.bean.history.ProductHistory;
import com.sir.react.dao.criteria.core.ProductCriteria;
import com.sir.react.dao.criteria.history.ProductHistoryCriteria;
import com.sir.react.dao.facade.core.ProductDao;
import com.sir.react.dao.facade.history.ProductHistoryDao;
import com.sir.react.dao.specification.core.ProductSpecification;
import com.sir.react.service.facade.admin.ProductAdminService;
import com.sir.react.zynerator.service.AbstractServiceImpl;
import com.sir.react.zynerator.util.ListUtil;
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
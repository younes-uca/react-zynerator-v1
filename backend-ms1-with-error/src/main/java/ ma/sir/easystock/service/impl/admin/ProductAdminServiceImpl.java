package  ma.sir.easystock.service.impl.admin;

import  ma.sir.easystock.bean.core.Product;
import  ma.sir.easystock.bean.history.ProductHistory;
import  ma.sir.easystock.dao.criteria.core.ProductCriteria;
import  ma.sir.easystock.dao.criteria.history.ProductHistoryCriteria;
import  ma.sir.easystock.dao.facade.core.ProductDao;
import  ma.sir.easystock.dao.facade.history.ProductHistoryDao;
import  ma.sir.easystock.dao.specification.core.ProductSpecification;
import  ma.sir.easystock.service.facade.admin.ProductAdminService;
import  ma.sir.easystock.zynerator.service.AbstractServiceImpl;
import  ma.sir.easystock.zynerator.service.Attribute;
import  ma.sir.easystock.zynerator.util.ListUtil;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.ArrayList;







import java.util.List;
@Service
public class ProductAdminServiceImpl extends AbstractServiceImpl<Product,ProductHistory, ProductCriteria, ProductHistoryCriteria, ProductDao,
ProductHistoryDao> implements ProductAdminService {
public static final List<Attribute> ATTRIBUTES = new ArrayList();
    static{
    ATTRIBUTES.add(new Attribute("id","Long"));
    ATTRIBUTES.add(new Attribute("code"));
    ATTRIBUTES.add(new Attribute("reference"));
    }



    public Product findByReferenceEntity(Product t){
        return  dao.findByCode(t.getCode());
    }



    @Override
    protected List<Attribute> getAttributes() {
        return ATTRIBUTES;
    }


    public void configure() {
        super.configure(Product.class,ProductHistory.class, ProductHistoryCriteria.class, ProductSpecification.class);
    }


    public ProductAdminServiceImpl(ProductDao dao, ProductHistoryDao historyDao) {
        super(dao, historyDao);
    }

}
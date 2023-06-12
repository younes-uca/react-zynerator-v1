package  com.sir.react;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sir.react.zynerator.security.bean.Permission;
import com.sir.react.zynerator.security.bean.Role;
import com.sir.react.zynerator.security.bean.User;
import com.sir.react.zynerator.security.common.AuthoritiesConstants;
import com.sir.react.zynerator.security.service.facade.RoleService;
import com.sir.react.zynerator.security.service.facade.UserService;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import java.util.*;
import java.util.stream.Stream;
import org.springframework.beans.factory.annotation.Autowired;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import org.springframework.cache.annotation.EnableCaching;


import com.sir.react.bean.core.*;
import com.sir.react.service.facade.admin.*;



import org.springframework.web.client.RestTemplate;

@SpringBootApplication
@EnableCaching
//@EnableFeignClients("com.sir.react.required.facade")
public class ReactApplication {
    public static ConfigurableApplicationContext ctx;

    public static void main(String[] args) {
        ctx=SpringApplication.run(ReactApplication.class, args);
    }


    @Bean
    RestTemplate restTemplate(){
        return new RestTemplate();
    }
    @Autowired
    private ObjectMapper objectMapper;

    @Bean
    ObjectMapper objectMapper(){
        return new ObjectMapper();
    }
    public static ConfigurableApplicationContext getCtx() {
        return ctx;
    }

    @Bean
    public CommandLineRunner demo(UserService userService, RoleService roleService) {
    return (args) -> {
        if(true){

            createClient();
            createProduct();


    // Role admin

        User userForAdmin = new User("admin");

        Role roleForAdmin = new Role();
        roleForAdmin.setAuthority(AuthoritiesConstants.ADMIN);
        List<Permission> permissionsForAdmin = new ArrayList<>();
        addPermissionForAdmin(permissionsForAdmin);
        roleForAdmin.setPermissions(permissionsForAdmin);
        if(userForAdmin.getRoles()==null)
            userForAdmin.setRoles(new ArrayList<>());

        userForAdmin.getRoles().add(roleForAdmin);
        userService.save(userForAdmin);
            }
        };
    }



    private void createClient(){
        String fullName = "fullName";
        String email = "email";
        for (int i = 1; i < 100; i++) {
            Client item = new Client();
            item.setFullName(fakeString(fullName, i));
            item.setEmail(fakeString(email, i));
            clientService.create(item);
        }
    }
    private void createProduct(){
        String code = "code";
        String reference = "reference";
        for (int i = 1; i < 100; i++) {
            Product item = new Product();
            item.setCode(fakeString(code, i));
            item.setReference(fakeString(reference, i));
            productService.create(item);
        }
    }

    private static String fakeString(String attributeName, int i) {
        return attributeName + i;
    }

    private static Long fakeLong(String attributeName, int i) {
        return  10L * i;
    }
    private static Integer fakeInteger(String attributeName, int i) {
        return  10 * i;
    }

    private static Double fakeDouble(String attributeName, int i) {
        return 10D * i;
    }

    private static BigDecimal fakeBigDecimal(String attributeName, int i) {
        return  BigDecimal.valueOf(i*1L*10);
    }

    private static Boolean fakeBoolean(String attributeName, int i) {
        return i % 2 == 0 ? true : false;
    }
    private static LocalDateTime fakeLocalDateTime(String attributeName, int i) {
        return LocalDateTime.now().plusDays(i);
    }
    private static void addPermissionForAdmin(List<Permission> permissions){
        permissions.add(new Permission("Client.edit"));
        permissions.add(new Permission("Client.list"));
        permissions.add(new Permission("Client.view"));
        permissions.add(new Permission("Client.add"));
        permissions.add(new Permission("Client.delete"));
        permissions.add(new Permission("Product.edit"));
        permissions.add(new Permission("Product.list"));
        permissions.add(new Permission("Product.view"));
        permissions.add(new Permission("Product.add"));
        permissions.add(new Permission("Product.delete"));
        permissions.add(new Permission("PurchaseItem.edit"));
        permissions.add(new Permission("PurchaseItem.list"));
        permissions.add(new Permission("PurchaseItem.view"));
        permissions.add(new Permission("PurchaseItem.add"));
        permissions.add(new Permission("PurchaseItem.delete"));
        permissions.add(new Permission("Purchase.edit"));
        permissions.add(new Permission("Purchase.list"));
        permissions.add(new Permission("Purchase.view"));
        permissions.add(new Permission("Purchase.add"));
        permissions.add(new Permission("Purchase.delete"));
    }

    @Autowired
    ClientAdminService clientService;
    @Autowired
    ProductAdminService productService;
}



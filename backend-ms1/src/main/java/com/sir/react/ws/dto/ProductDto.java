package  com.sir.react.ws.dto;

import com.sir.react.zynerator.audit.Log;
import com.sir.react.zynerator.dto.AuditBaseDto;
import com.fasterxml.jackson.annotation.JsonInclude;



@JsonInclude(JsonInclude.Include.NON_NULL)
public class ProductDto  extends AuditBaseDto {

    private String code  ;
    private String reference  ;




    public ProductDto(){
        super();
    }



    @Log
    public String getCode(){
        return this.code;
    }
    public void setCode(String code){
        this.code = code;
    }

    @Log
    public String getReference(){
        return this.reference;
    }
    public void setReference(String reference){
        this.reference = reference;
    }






}

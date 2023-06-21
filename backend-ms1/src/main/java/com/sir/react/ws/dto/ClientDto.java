package  com.sir.react.ws.dto;

import com.sir.react.zynerator.audit.Log;
import com.sir.react.zynerator.dto.AuditBaseDto;
import com.fasterxml.jackson.annotation.JsonInclude;



@JsonInclude(JsonInclude.Include.NON_NULL)
public class ClientDto  extends AuditBaseDto {

    private String fullName  ;
    private String email  ;
    private Boolean present;




    public ClientDto(){
        super();
    }



    @Log
    public String getFullName(){
        return this.fullName;
    }
    public void setFullName(String fullName){
        this.fullName = fullName;
    }

    @Log
    public String getEmail(){
        return this.email;
    }
    public void setEmail(String email){
        this.email = email;
    }

    public Boolean getPresent() {
        return this.present;
    }

    public void setPresent(Boolean present) {
        present = present;
    }
}

import {BaseCriteria} from 'src/app/zynerator/criteria/BaseCriteria.model';





export class ClientCriteria  extends  BaseCriteria {


    public id: number;

    public fullName: string;
    public fullNameLike: string;
    public email: string;
    public emailLike: string;
 constructor(
   public id: number = 0,
   public fullName: string = '',
   public email: string = '',
 ) {
   super();
 }

}

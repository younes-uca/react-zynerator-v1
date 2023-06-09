import {BaseCriteria} from 'src/app/zynerator/criteria/BaseCriteria.model';





export class ProductCriteria  extends  BaseCriteria {


    public id: number;

    public code: string;
    public codeLike: string;
    public reference: string;
    public referenceLike: string;
 constructor(
   public id: number = 0,
   public code: string = '',
   public reference: string = '',
 ) {
   super();
 }

}

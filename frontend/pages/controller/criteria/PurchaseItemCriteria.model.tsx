import {BaseCriteria} from 'src/app/zynerator/criteria/BaseCriteria.model';

import {PurchaseCriteria} from 'PurchaseCriteria.model';
import {ProductCriteria} from 'ProductCriteria.model';




export class PurchaseItemCriteria  extends  BaseCriteria {


    public id: number;

     public price: number;
     public priceMin: number;
     public priceMax: number;
     public quantity: number;
     public quantityMin: number;
     public quantityMax: number;
  public product: ProductCriteria ;
  public products: Array<ProductCriteria> ;
  public purchase: PurchaseCriteria ;
  public purchases: Array<PurchaseCriteria> ;
 constructor(
   public id: number = 0,
   public price: number = 0,
   public quantity: number = 0,
   public priceMax: string = '',
   public priceMin: string = '',
   public quantityMax: string = '',
   public quantityMin: string = '',
   public product: ProductDto = new ProductDto(),
   public purchase: PurchaseDto = new PurchaseDto(),
 ) {
   super();
 }

}

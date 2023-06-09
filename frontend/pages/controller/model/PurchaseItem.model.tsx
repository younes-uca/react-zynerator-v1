import {BaseDto} from "/pages/zynerator/dto/BaseDto.model";
import {PurchaseDto} from 'pages/controller/model/Purchase.model';
import {ProductDto} from 'pages/controller/model/Product.model';

export class PurchaseItemDto extends BaseDto{


    public id: number;
    public price: number;
    public quantity: number;
    public priceMax: string ;
    public priceMin: string ;
    public quantityMax: string ;
    public quantityMin: string ;
    public product: ProductDto ;
    public purchase: PurchaseDto ;

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

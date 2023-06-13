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

}

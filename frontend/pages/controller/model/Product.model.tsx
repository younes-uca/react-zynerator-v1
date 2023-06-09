import {BaseDto} from "/pages/zynerator/dto/BaseDto.model";

export class ProductDto extends BaseDto{


    public id: number;
    public code: string;
    public reference: string;

   constructor(
     public id: number = 0,
     public code: string = '',
     public reference: string = '',
   ) {
     super();
   }





}

import axios, { AxiosResponse } from "axios";
import { API_URL } from '/layout/AppConfig';
import {BaseCriteria} from "/pages/zynerator/criteria/BaseCriteria.model";
import {PaginatedList} from "/pages/zynerator/dto/PaginatedList.model";
import {BaseDto} from "/pages/zynerator/dto/BaseDto.model";
import {ProductDto} from '/pages/controller/model/Product.model';



export const ProductService = {

   getList(): Promise<AxiosResponse<ProductDto[]>> {
     return axios.get(API_URL + 'product/');
   },

   save(item: ProductDto): Promise<AxiosResponse<ProductDto>> {
     return axios.post(API_URL + 'product/', item);
   },

   update(item: ProductDto): Promise<AxiosResponse<ProductDto>> {
      return axios.put(API_URL + 'product/', item);
   },

   delete(id: number): Promise<AxiosResponse<ProductDto>> {
      return axios.delete(API_URL + 'product/id/'+ id);
   },

   deleteList(items: ProductDto[]): Promise<AxiosResponse<string>> {
      return axios.post(API_URL + 'product/multiple', items);
   },

   findPaginatedByCriteria(criteria:ProductCriteria):Promise<AxiosResponse<PaginatedList<BaseDto>>> {
     return axios.post<PaginatedList<BaseDto>>(API_URL + `product/find-paginated-by-criteria`, criteria);
   }
};


import axios, { AxiosResponse } from "axios";
import { API_URL } from '/layout/AppConfig';
import {BaseCriteria} from "/pages/zynerator/criteria/BaseCriteria.model";
import {PaginatedList} from "/pages/zynerator/dto/PaginatedList.model";
import {BaseDto} from "/pages/zynerator/dto/BaseDto.model";
import {ProductDto} from '/pages/controller/model/Product.model';



export const ProductService = {

   getList(): Promise<AxiosResponse<Product[]>> {
     return axios.get(API_URL + 'product/');
   },

   save(item: Product): Promise<AxiosResponse<Product>> {
     return axios.post(API_URL + 'product/', item);
   },

   update(item: Product): Promise<AxiosResponse<Product>> {
      return axios.put(API_URL + 'product/', item);
   },

   delete(id: number): Promise<AxiosResponse<Product>> {
      return axios.delete(API_URL + 'product/id/${id}');
   },

   deleteList(items: Product[]): Promise<AxiosResponse<string>> {
      return axios.post(API_URL + 'product/multiple', items);
   },

   findPaginatedByCriteria(criteria: BaseCriteria):Promise<AxiosResponse<PaginatedList<BaseDto>>> {
     return axios.post<PaginatedList<BaseDto>>(API_URL + `product/find-paginated-by-criteria`, criteria);
   }
};


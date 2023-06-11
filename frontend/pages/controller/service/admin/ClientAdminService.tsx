import axios, { AxiosResponse } from "axios";
import { API_URL } from '/layout/AppConfig';
import {BaseCriteria} from "/pages/zynerator/criteria/BaseCriteria.model";
import {PaginatedList} from "/pages/zynerator/dto/PaginatedList.model";
import {BaseDto} from "/pages/zynerator/dto/BaseDto.model";
import {ClientDto} from '/pages/controller/model/Client.model';



export const ClientService = {

   getList(): Promise<AxiosResponse<ClientDto[]>> {
     return axios.get(API_URL + 'client/');
   },

   save(item: ClientDto): Promise<AxiosResponse<ClientDto>> {
     return axios.post(API_URL + 'client/', item);
   },

   update(item: ClientDto): Promise<AxiosResponse<ClientDto>> {
      return axios.put(API_URL + 'client/', item);
   },

   delete(id: number): Promise<AxiosResponse<ClientDto>> {
      return axios.delete(API_URL + 'client/id/${id}');
   },

   deleteList(items: ClientDto[]): Promise<AxiosResponse<string>> {
      return axios.post(API_URL + 'client/multiple', items);
   },

   findPaginatedByCriteria(criteria: BaseCriteria):Promise<AxiosResponse<PaginatedList<BaseDto>>> {
     return axios.post<PaginatedList<BaseDto>>(API_URL + `client/find-paginated-by-criteria`, criteria);
   }
};


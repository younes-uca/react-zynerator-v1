import {Button} from 'primereact/button';
import {Column} from 'primereact/column';
import 'primereact/resources/themes/saga-blue/theme.css';
import 'primereact/resources/primereact.min.css';
import 'primeicons/primeicons.css';
import {DataTable} from 'primereact/datatable';
import {Dialog} from 'primereact/dialog';
import {FileUpload} from 'primereact/fileupload';
import {InputText} from 'primereact/inputtext';
import {Toast} from 'primereact/toast';
import {Toolbar} from 'primereact/toolbar';
import React, {useEffect, useRef, useState} from 'react';
import { Paginator } from 'primereact/paginator';
import {BaseCriteria} from '/pages/zynerator/criteria/BaseCriteria.model';
import {MessageService} from '/pages/controller/service/MessageService';
import {Card} from "primereact/card";
import {Calendar} from "primereact/calendar";
import {InputNumber} from "primereact/inputnumber";
import {Dropdown} from "primereact/dropdown";
import {AxiosResponse} from "axios";

import {PurchaseService} from '/pages/controller/service/Purchase.service';
import {PurchaseDto}  from '/pages/controller/model/Purchase.model';
import {PurchaseCriteria} from "/pages/controller/criteria/PurchaseCriteria.model";

import {ProductDto} from '/pages/controller/model/Product.model';
import {ProductService} from '/pages/controller/service/Product.service';
import {ClientDto} from '/pages/controller/model/Client.model';
import {ClientService} from '/pages/controller/service/Client.service';
import {PurchaseItemDto} from '/pages/controller/model/PurchaseItem.model';
import {PurchaseItemService} from '/pages/controller/service/PurchaseItem.service';

import Edit from '/pages/module/admin/view/purchase/purchase-admin/edit-admin/purchase-edit-admin.component';
import Create from '/pages/module/admin/view/purchase/purchase-admin/create-admin/purchase-create-admin.component';
import View from '/pages/module/admin/view/purchase/purchase-admin/view-admin/purchase-view-admin.component';

const List = () => {

    const emptyItem = new PurchaseDto();
    const [items, setItems] = useState<PurchaseDto[]>([]);
    const [deleteItemDialog, setDeleteItemDialog] = useState(false);
    const [deleteItemsDialog, setDeleteItemsDialog] = useState(false);
    const [item, setItem] = useState<PurchaseDto>(emptyItem);
    const [selectedItems, setSelectedItems] = useState<PurchaseDto[]>([]);
    const [globalFilter, setGlobalFilter] = useState('');
    const [showCreateDialog, setShowCreateDialog] = useState<boolean>(false);
    const [showEditDialog, setShowEditDialog] = useState<boolean>(false);
    const [showViewDialog, setShowViewDialog] = useState<boolean>(false);
    const [selectedItem, setSelectedItem] = useState<PurchaseDto | null>(null);
    const [rows, setRows] = useState<number>(10);
    const [totalRecords, setTotalRecords] = useState(0);
    const [criteria, setCriteria] = useState(new PurchaseCriteria());
    const [first, setFirst] = useState(0);
    const toast = useRef<Toast>();
    const dt = useRef<DataTable<PurchaseDto[]>>();
    const [findByCriteriaShow, setFindByCriteriaShow] = useState(false);
    const [isSearchTriggered, setIsSearchTriggered] = useState(false);

    const [products, setProducts] = useState<ProductDto[]>([]);
    type ProductResponse = AxiosResponse<ProductDto[]>;
    const [clients, setClients] = useState<ClientDto[]>([]);
    type ClientResponse = AxiosResponse<ClientDto[]>;
    const [purchaseItems, setPurchaseItems] = useState<PurchaseItemDto[]>([]);
    type PurchaseItemResponse = AxiosResponse<PurchaseItemDto[]>;

    const showSearch = () => { setFindByCriteriaShow(!findByCriteriaShow); };

    const handleValidateClick = () => {setIsSearchTriggered(true);};

    const handleCancelClick = () => {
        setCriteria(new PurchaseCriteria());
        setIsSearchTriggered(true);
    };

    useEffect(() => {
        const fetchData = async () => {
            try {
                const [productsResponse ,clientsResponse ] = await Promise.all<ProductResponse,ClientResponse>([
                    ProductService.getList(),
                    ClientService.getList(),
                ]);
                setProducts(productsResponse.data);
                setClients(clientsResponse.data);
            } catch (error) {
                console.error(error);
            }
        };
        if (isSearchTriggered) {
            fetchItems(criteria);
            setIsSearchTriggered(false);
        }
        fetchData();
        fetchItems(criteria);
    }, [isSearchTriggered]);

    const fetchItems = async (criteria) => {
        try {
            const response = await PurchaseService.findPaginatedByCriteria(criteria);
            const paginatedItems = response.data;
            setTotalRecords(paginatedItems.dataSize);
            setItems(paginatedItems.list);
        } catch (error) {
            console.log(error);
        }
    };

    const onPage = (event) => {
        const updatedCriteria = { ...criteria, page: event.page,maxResults: event.rows };
        setCriteria(updatedCriteria);
        setFirst(event.first);
        fetchItems(updatedCriteria);
    };

    const showCreateModal = (): void => {
        setShowCreateDialog(true);
    };

    const showEditModal = (item: PurchaseDto) => {
        setSelectedItem(item);
        setShowEditDialog(true);
    };

    const showViewModal = (item: PurchaseDto) => {
        setSelectedItem(item);
        setShowViewDialog(true);
    };

    const add = (item) => {
        setItems([...items, item]);
    };

    const update = (updatedItem: PurchaseDto) => {
        const updatedList = items.map((item) => {
            if (item.id === updatedItem.id) { return updatedItem; }
            return item;
        });
        setItems(updatedList);
    };

   const hideDeleteItemDialog = () => {
        setDeleteItemDialog(false);
   };

   const hideDeleteItemsDialog = () => {
        setDeleteItemsDialog(false);
   };

    const confirmDeleteItem = (item: PurchaseDto) => {
        setSelectedItem(item);
        setDeleteItemDialog(true);
    };

    const deleteItem = async () => {
        try{
            await PurchaseService.delete(selectedItem?.id);
            setDeleteItemDialog(false);
            setItem(emptyItem);
            let _items = items.filter((val) => val.id !== selectedItem?.id);
            setItems(_items);
            MessageService.showToast(toast, { severity: 'success', summary: 'Successful', detail: 'Purchase Deleted', life: 3000 });
        } catch (error) {
            console.log(error);
        }
    };

    const exportCSV = () => {
        dt.current?.exportCSV();
    };

    const confirmDeleteSelected = () => {
        setDeleteItemsDialog(true);
    };

    const deleteSelectedItems = async () => {
        await PurchaseService.deleteList(selectedItems);
        let _items = items.filter((val) => !selectedItems.includes(val));
        setItems(_items);
        setDeleteItemsDialog(false);
        setSelectedItems(null);
        MessageService.showToast(toast, { severity: 'success', summary: 'Successful', detail: 'Purchases Deleted', life: 3000 });
    };

   const leftToolbarTemplate = () => {
       return (
           <React.Fragment>
               <div className="my-2">
                   <Button label="New" icon="pi pi-plus" severity="success" className=" mr-2" onClick={ showCreateModal} />
                   <Button label="Delete" icon="pi pi-trash" severity="danger" className=" mr-2" onClick={confirmDeleteSelected} disabled={!selectedItems || !selectedItems.length} />
                   <Button label="Search" icon={`pi pi-${findByCriteriaShow ? 'angle-down' : 'angle-right'}`} className=" mr-2" severity="warning" onClick={showSearch} />
               </div>
           </React.Fragment>
       );
   };

   const rightToolbarTemplate = () => {
       return (
           <React.Fragment>
               <FileUpload mode="basic" accept="image/*" maxFileSize={1000000} chooseLabel="Import" className="mr-2 inline-block" />
               <Button label="Export" icon="pi pi-upload" severity="help" onClick={exportCSV} />
           </React.Fragment>
       );
   };

    const actionBodyTemplate = (rowData: PurchaseDto) => {
       return ( <>
           <Button icon="pi pi-pencil" rounded severity="success" className="mr-1" onClick={() => showEditModal(rowData)} />
           <Button icon="pi pi-trash" rounded  severity="danger" className="mr-1"  onClick={() => confirmDeleteItem(rowData)} />
           <Button icon="pi pi-eye" rounded severity="info" className="mr-1" onClick={() => showViewModal(rowData)} /> < />
       );
    };

    const header = (
        <div className="flex flex-column md:flex-row md:justify-content-between md:align-items-center">
        <h5 className="m-0">Manage Purchases</h5>
        <span className="block mt-2 md:mt-0 p-input-icon-left"><i className="pi pi-search" />
        <InputText type="search" onInput={(e) => setGlobalFilter(e.currentTarget.value)} placeholder="Search..." /> </span>
        </div>
    );

    const deleteItemDialogFooter = ( <>
        <Button label="No" icon="pi pi-times" text onClick={hideDeleteItemDialog} />
        <Button label="Yes" icon="pi pi-check" text onClick={deleteItem} /> < />
    );

    const deleteItemsDialogFooter = ( <>
        <Button label="No" icon="pi pi-times" text onClick={hideDeleteItemsDialog} />
        <Button label="Yes" icon="pi pi-check" text onClick={deleteSelectedItems} /> < />
    );

return (
    <div className="grid crud-demo">
        <div className="col-12">
            <div className="card">
                <Toast ref={toast} />
                <Toolbar className="mb-4" left={leftToolbarTemplate} right={rightToolbarTemplate}></Toolbar>
                {findByCriteriaShow && (
                <Card>
                    <div className="search-container">
                        <div className="grid">
                                        <span className="p-float-label mr-3 align-search-items mt-4">
                                        <InputText id="1" value={criteria.reference} onChange={(e) => setCriteria({ ...criteria, reference: e.target.value })} />
                                        <label htmlFor="1">Reference</label>
                                        </span>
                                        <span className="p-float-label mr-3 align-search-items mt-4">
                                        <Calendar id="2-1" value={criteria.purchaseDateFrom} onChange={(e) => setCriteria({ ...criteria, purchaseDateFrom: e.value as Date })} dateFormat="dd-MM-yy" />
                                        <label htmlFor="2-1">PurchaseDate Min</label>
                                        </span>
                                        <span className="p-float-label mr-3 align-search-items mt-4">
                                        <Calendar id="2-2" value={criteria.purchaseDateTo} onChange={(e) => setCriteria({ ...criteria, purchaseDateTo: e.value as Date })} dateFormat="dd-MM-yy" />
                                        <label htmlFor="2-2">PurchaseDate Max</label>
                                        </span>
                                        <span className="p-float-label mr-3 align-search-items mt-4">
                                        <InputText id="3" value={criteria.image} onChange={(e) => setCriteria({ ...criteria, image: e.target.value })} />
                                        <label htmlFor="3">Image</label>
                                        </span>
                                        <span className="p-float-label mr-3 align-search-items mt-4">
                                        <InputNumber id="4-1" value={criteria.totalMin} onChange={(e) => setCriteria({ ...criteria, totalMin: e.value })} mode="decimal" />
                                        <label htmlFor="4-1">Total Min</label>
                                        </span>
                                        <span className="p-float-label mr-3 align-search-items mt-4">
                                        <InputNumber id="4-2" value={criteria.totalMax} onChange={(e) => setCriteria({ ...criteria, totalMax: e.value })} mode="decimal" />
                                        <label htmlFor="4-2">Total Max</label>
                                        </span>
                                        <span className="p-float-label mr-3 align-search-items mt-4">
                                        <InputText id="5" value={criteria.description} onChange={(e) => setCriteria({ ...criteria, description: e.target.value })} />
                                        <label htmlFor="5">Description</label>
                                        </span>
                                        <span className="p-float-label mr-3 align-search-items mt-4">
                                        <Dropdown id="6" value={criteria.client} options={clients} onChange={(e) => setCriteria({ ...criteria, client: e.target.value })} optionLabel="fullName" filter showClear placeholder="Client" />
                                        </span>
                        </div>
                        <div style={{ marginTop : '1rem', display: 'flex', justifyContent: 'flex-end' }} >
                            <Button label="Validate" icon="pi pi-sort-amount-down" className="p-button-info mr-2" onClick={handleValidateClick} />
                            <Button label="Cancel" className="p-button-secondary mr-2"  icon="pi pi-times" onClick={handleCancelClick} />
                    </div>
                        </div>
                </Card>
                )}
                <DataTable ref={dt} value={items} selection={selectedItems} onSelectionChange={(e) => setSelectedItems(e.value as PurchaseDto[])} dataKey="id" className="datatable-responsive" globalFilter={globalFilter} header={header} responsiveLayout="scroll" >
                    <Column selectionMode="multiple" headerStyle={{ width: '4rem' }}> </Column>
                    
                    <Column field="reference" header="Reference" sortable headerStyle={{ minWidth: '15rem' }}></Column>
                    
                    
                    <Column field="purchaseDate" header="PurchaseDate" sortable headerStyle={{ minWidth: '15rem' }}></Column>
                    
                    
                    <Column field="image" header="Image" sortable headerStyle={{ minWidth: '15rem' }}></Column>
                    
                    
                    <Column field="total" header="Total" sortable headerStyle={{ minWidth: '15rem' }}></Column>
                    
                    
                    <Column field="client.fullName" header="Client" sortable headerStyle={{ minWidth: '15rem' }}></Column>
                    
                    <Column header="Actions" body={actionBodyTemplate} headerStyle={{minWidth: '10rem'}}></Column>
                </DataTable>
                <div className="p-d-flex p-ai-center p-jc-between">
                    <Paginator onPageChange={onPage} first={first} rows={rows} totalRecords={totalRecords} />
                </div>
                <Create visible={showCreateDialog} onClose={() => setShowCreateDialog(false)} add={add} showToast={toast} list={items} />
                <Edit  visible={showEditDialog} onClose={() =>  { setShowEditDialog(false); setSelectedItem(null); }} showToast={toast} selectedItem={selectedItem} update={update} />
                <View visible={showViewDialog} onClose={() =>  { setShowViewDialog(false); setSelectedItem(null); }} selectedItem={selectedItem} />
                <Dialog visible={deleteItemDialog} style={{width: '450px'}} header="Confirm" modal footer={deleteItemDialogFooter} onHide={hideDeleteItemDialog}>
                    <div className="flex align-items-center justify-content-center">
                    <i className="pi pi-exclamation-triangle mr-3" style={{fontSize: '2rem'}}/>
                    {item && (<span>Are you sure you want to delete purchase <b>{item.id}</b>?</span>)}
                    </div>
                </Dialog>
                <Dialog visible={deleteItemsDialog} style={{width: '450px'}} header="Confirm" modal footer={deleteItemsDialogFooter} onHide={hideDeleteItemsDialog} >
                    <div className="flex align-items-center justify-content-center">
                    <i className="pi pi-exclamation-triangle mr-3" style={{fontSize: '2rem'}} />
                    {item && <span>Are you sure you want to delete the selected purchases?</span>}
                    </div>
                </Dialog>
            </div>
        </div>
    </div>
);
};
export default List;


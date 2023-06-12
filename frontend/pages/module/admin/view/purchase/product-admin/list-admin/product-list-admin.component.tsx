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
import {ProductDto} from "../../../../../../controller/model/Product.model";
import {ProductService} from "../../../../../../controller/service/admin/ProductAdminService";
import Create from "../create-admin/product-create-admin.component";


const List = () => {
const emptyItem = new ProductDto();

const [items, setItems] = useState<ProductDto[]>([]);
    const [deleteItemDialog, setDeleteItemDialog] = useState(false);
    const [deleteItemsDialog, setDeleteItemsDialog] = useState(false);
    const [item, setItem] = useState<ProductDto>(emptyItem);
    const [selectedItems, setSelectedItems] = useState<ProductDto[]>([]);
    const [globalFilter, setGlobalFilter] = useState('');
    const [showCreateDialog, setShowCreateDialog] = useState<boolean>(false);
    const [showEditDialog, setShowEditDialog] = useState<boolean>(false);
    const [showViewDialog, setShowViewDialog] = useState<boolean>(false);
    const [selectedItem, setSelectedItem] = useState<ProductDto | null>(null);
    const [rows, setRows] = useState<number>(10);
    const [totalRecords, setTotalRecords] = useState(0);
    const [criteria, setCriteria] = useState(new BaseCriteria());
    const [first, setFirst] = useState(0);
    const toast = useRef<Toast>();
    const dt = useRef<DataTable<ProductDto[]>>();


     useEffect(() => {
            fetchItems(criteria);
        }, [criteria]);

         const fetchItems = async (criteria) => {
                try {
                    const response = await ProductService.findPaginatedByCriteria(criteria);
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

    const showEditModal = (item: ProductDto) => {
     setSelectedItem(item);
      setShowEditDialog(true);
      };
     const showViewModal = (item: ProductDto) => {
      setSelectedItem(item);
       setShowViewDialog(true);
       };

      const add = (item) => {
       setItems([...items, item]);
       };


   const update = (updatedItem: ProductDto) => {
       const updatedList = items.map((item) => {
       if (item.id === updatedItem.id) {
          return updatedItem;
            }
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

   const confirmDeleteItem = (item: ProductDto) => {
    setSelectedItem(item);
    setDeleteItemDialog(true);
     };

  const deleteItem = async () => {
      try{
      await ProductService.delete(selectedItem?.id);
      setDeleteItemDialog(false);
      setItem(emptyItem);
      let _items = items.filter((val) => val.id !== selectedItem?.id);
       setItems(_items);
       MessageService.showToast(toast, { severity: 'success', summary: 'Successful', detail: 'Product Deleted', life: 3000 });
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
        await ProductService.deleteList(selectedItems);
        let _items = items.filter((val) => !selectedItems.includes(val));
        setItems(_items);
        setDeleteItemsDialog(false);
        setSelectedItems(null);
        MessageService.showToast(toast, { severity: 'success', summary: 'Successful', detail: 'Products Deleted', life: 3000 });
    };

   const leftToolbarTemplate = () => {
           return (
               <React.Fragment>
                   <div className="my-2">
                       <Button label="New" icon="pi pi-plus" severity="success" className=" mr-2" onClick={ showCreateModal}/>
                       <Button label="Delete" icon="pi pi-trash" severity="danger" onClick={confirmDeleteSelected}
                               disabled={!selectedItems || !selectedItems.length}/>
                   </div>
               </React.Fragment>
           );
       };

       const rightToolbarTemplate = () => {
           return (
               <React.Fragment>
                   <FileUpload mode="basic" accept="image/*" maxFileSize={1000000} chooseLabel="Import"
                               className="mr-2 inline-block"/>
                   <Button label="Export" icon="pi pi-upload" severity="help" onClick={exportCSV}/>
               </React.Fragment>
           );
       };
       const actionBodyTemplate = (rowData: ProductDto) => {
            return (
            <>
                <Button icon="pi pi-pencil" rounded severity="success" className="mr-1"
                        onClick={() => showEditModal(rowData)}/>
                <Button icon="pi pi-trash" rounded severity="warning" onClick={() => confirmDeleteItem(rowData)}/>
                <Button icon="pi pi-eye" rounded severity="info" className="mr-1" onClick={() => showViewModal(rowData)}/> </>
        );
    };

 const header = (
        <div className="flex flex-column md:flex-row md:justify-content-between md:align-items-center">
            <h5 className="m-0">Manage 'Products'</h5>
            <span className="block mt-2 md:mt-0 p-input-icon-left">
                <i className="pi pi-search"/>
                <InputText type="search" onInput={(e) => setGlobalFilter(e.currentTarget.value)}
                           placeholder="Search..."/>
            </span>
        </div>
    );

    const deleteItemDialogFooter = (
            <>
                <Button label="No" icon="pi pi-times" text onClick={hideDeleteItemDialog}/>
                <Button label="Yes" icon="pi pi-check" text onClick={deleteItem}/>
            </>
        );
        const deleteItemsDialogFooter = (
            <>
                <Button label="No" icon="pi pi-times" text onClick={hideDeleteItemsDialog}/>
                <Button label="Yes" icon="pi pi-check" text onClick={deleteSelectedItems}/>
            </>
        );
 return (
        <div className="grid crud-demo">
            <div className="col-12">
                <div className="card">
                    <Toast ref={toast}/>
                    <Toolbar className="mb-4" left={leftToolbarTemplate} right={rightToolbarTemplate}></Toolbar>

                   <DataTable
                        ref={dt} value={items} selection={selectedItems}
                        onSelectionChange={(e) => setSelectedItems(e.value as ProductDto[])}
                        dataKey="id"
                        className="datatable-responsive"
                        globalFilter={globalFilter} header={header} responsiveLayout="scroll"
                    >
                     <Column selectionMode="multiple" headerStyle={{ width: '4rem' }}></Column>
                          <Column field="code" header="{{'Code' | translate}}" sortable headerStyle={{ minWidth: '15rem' }}></Column>
                          <Column field="reference" header="{{'Reference' | translate}}" sortable headerStyle={{ minWidth: '15rem' }}></Column>
                      <Column header="Actions" body={actionBodyTemplate} headerStyle={{minWidth: '10rem'}}></Column>

                    </DataTable>
            <div className="p-d-flex p-ai-center p-jc-between">
            <Paginator
             onPageChange={onPage}
             first={first}
              rows={rows}
              totalRecords={totalRecords}
              />

        </div>

             <Create visible={showCreateDialog} onClose={() => setShowCreateDialog(false)} add={add} showToast={toast} list={items} />
       {/*     <Edit  visible={showEditDialog} onClose={() =>  { setShowEditDialog(false); setSelectedItem(null); }} showToast={toast} selectedItem={selectedItem} update={update}/>
            <View visible={showViewDialog} onClose={() =>  { setShowViewDialog(false); setSelectedItem(null); }} selectedItem={selectedItem} />*/}

 <Dialog visible={deleteItemDialog} style={{width: '450px'}} header="Confirm" modal
          footer={deleteItemDialogFooter} onHide={hideDeleteItemDialog}>
         <div className="flex align-items-center justify-content-center">
           <i className="pi pi-exclamation-triangle mr-3" style={{fontSize: '2rem'}}/>
                   {item && (
                   <span>
                      Are you sure you want to delete product <b>{item.id}</b>?
                       </span>
                            )}
                        </div>
                    </Dialog>

                    <Dialog visible={deleteItemsDialog} style={{width: '450px'}} header="Confirm" modal
                            footer={deleteItemsDialogFooter} onHide={hideDeleteItemsDialog}>
                        <div className="flex align-items-center justify-content-center">
                            <i className="pi pi-exclamation-triangle mr-3" style={{fontSize: '2rem'}}/>
                            {item && <span>Are you sure you want to delete the selected 'products'?</span>}
                        </div>
                    </Dialog>
                     </div>
               </div>
                   </div>
                        );
                    };


       export default List;


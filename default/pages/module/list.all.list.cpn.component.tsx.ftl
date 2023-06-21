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

import {${pojo.name}Service} from '/pages/controller/service/${pojo.name?cap_first}.service';
import {${pojo.name?cap_first}Dto}  from '/pages/controller/model/${pojo.name?cap_first}.model';
import {${pojo.name?cap_first}Criteria} from "/pages/controller/criteria/${pojo.name?cap_first}Criteria.model";

import Edit from '/pages/module/admin/view/${pojo.subModule.name}/${pojo.name?uncap_first}-admin/edit-admin/${pojo.name?uncap_first}-edit-admin.component';
import Create from '/pages/module/admin/view/${pojo.subModule.name}/${pojo.name?uncap_first}-admin/create-admin/${pojo.name?uncap_first}-create-admin.component';
import View from '/pages/module/admin/view/${pojo.subModule.name}/${pojo.name?uncap_first}-admin/view-admin/${pojo.name?uncap_first}-view-admin.component';

<#list pojo.fieldsSimple as simpleField>
  <#if simpleField.dateTime>
      <#assign dateFieldName = simpleField.name>
  </#if>
</#list>
    const List = () => {
    const emptyItem = new ${pojo.name}Dto();

    const [items, setItems] = useState<${pojo.name}Dto[]>([]);
    const [deleteItemDialog, setDeleteItemDialog] = useState(false);
    const [deleteItemsDialog, setDeleteItemsDialog] = useState(false);
    const [item, setItem] = useState<${pojo.name}Dto>(emptyItem);
    const [selectedItems, setSelectedItems] = useState<${pojo.name}Dto[]>([]);
    const [globalFilter, setGlobalFilter] = useState('');
    const [showCreateDialog, setShowCreateDialog] = useState<boolean>(false);
    const [showEditDialog, setShowEditDialog] = useState<boolean>(false);
    const [showViewDialog, setShowViewDialog] = useState<boolean>(false);
    const [selectedItem, setSelectedItem] = useState<${pojo.name}Dto | null>(null);
    const [rows, setRows] = useState<number>(10);
    const [totalRecords, setTotalRecords] = useState(0);
    const [criteria, setCriteria] = useState(new ${pojo.name}Criteria());
    const [first, setFirst] = useState(0);
    const toast = useRef<Toast>();
    const dt = useRef<DataTable<${pojo.name}Dto[]>>();
    const [findByCriteriaShow, setFindByCriteriaShow] = useState(false);

    const showSearch = () => {
        setFindByCriteriaShow(!findByCriteriaShow);
    };

    useEffect(() => {
        fetchItems(criteria);
    }, [criteria]);

    const fetchItems = async (criteria) => {
        try {
            const response = await ${pojo.name?cap_first}Service.findPaginatedByCriteria(criteria);
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

    const showEditModal = (item: ${pojo.name?cap_first}Dto) => {
        setSelectedItem(item);
        setShowEditDialog(true);
    };

    const showViewModal = (item: ${pojo.name?cap_first}Dto) => {
        setSelectedItem(item);
        setShowViewDialog(true);
    };

    const add = (item) => {
        setItems([...items, item]);
    };

    const update = (updatedItem: ${pojo.name?cap_first}Dto) => {
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

    const confirmDeleteItem = (item: ${pojo.name?cap_first}Dto) => {
        setSelectedItem(item);
        setDeleteItemDialog(true);
    };

    const deleteItem = async () => {
        try{
            await ${pojo.name?cap_first}Service.delete(selectedItem?.id);
            setDeleteItemDialog(false);
            setItem(emptyItem);
            let _items = items.filter((val) => val.id !== selectedItem?.id);
            setItems(_items);
            MessageService.showToast(toast, { severity: 'success', summary: 'Successful', detail: '${pojo.name} Deleted', life: 3000 });
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
        await ${pojo.name?cap_first}Service.deleteList(selectedItems);
        let _items = items.filter((val) => !selectedItems.includes(val));
        setItems(_items);
        setDeleteItemsDialog(false);
        setSelectedItems(null);
        MessageService.showToast(toast, { severity: 'success', summary: 'Successful', detail: '${pojo.name}s Deleted', life: 3000 });
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
               <Button icon="pi pi-trash" rounded severity="warning" onClick={() => confirmDeleteItem(rowData)} />
               <Button icon="pi pi-eye" rounded severity="info" className="mr-1" onClick={() => showViewModal(rowData)} /> < />
           );
       };

           const header = (
        <div className="flex flex-column md:flex-row md:justify-content-between md:align-items-center">
            <h5 className="m-0">Manage ${pojo.name}s</h5>
            <span className="block mt-2 md:mt-0 p-input-icon-left"><i className="pi pi-search" />
            <InputText type="search" onInput={(e) => setGlobalFilter(e.currentTarget.value)} placeholder="Search..." /> </span>
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
                <Toast ref={toast} />
                <Toolbar className="mb-4" left={leftToolbarTemplate} right={rightToolbarTemplate}></Toolbar>
                <DataTable ref={dt} value={items} selection={selectedItems} onSelectionChange={(e) => setSelectedItems(e.value as ${pojo.name}Dto[])} dataKey="id" className="datatable-responsive" globalFilter={globalFilter} header={header} responsiveLayout="scroll" >
                    <Column selectionMode="multiple" headerStyle={{ width: '4rem' }}> </Column>
                    <#assign i=0>
                    <#list pojo.fields as field>
                    <#if field.name != pojo.id.name && !field.large && !field.list>
                    <#assign i++>
                    <#if i &gt; 9> <!-- </#if>
                    <#if field.simple && !field.notIncluded  && !field.password>
                    <Column field="${field.name}" header="${field.name?cap_first}" sortable headerStyle={{ minWidth: '15rem' }}></Column>
                    <#elseif field.generic>
                    <Column field="${field.name}.${field.typeAsPojo.labelOrReferenceOrId.name}" header="${field.name?cap_first}" sortable headerStyle={{ minWidth: '15rem' }}></Column>
                    </#if>
                    <#if field.dateTime>
                    <Column field="${field.name} | date :'dd/MM/yyyy HH:mm'" header="${field.name?cap_first}" sortable headerStyle={{ minWidth: '15rem' }}></Column>

                    <#elseif field.bool>
                    <td><i *ngIf="element.${field.name}" class="pi pi-check checked-toogle"></i>
                    <i *ngIf="!element.${field.name}" class="pi pi-times unchecked-toogle"></i>
                    </td>
                    </#if>
                    <#if i &gt; 9> --> </#if>
                    </#if>
                    </#list>
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
                    {item && (<span>Are you sure you want to delete ${pojo.formatedNameLowerCase?uncap_first} <b>{item.id}</b>?</span>)}
                    </div>
                </Dialog>

                <Dialog visible={deleteItemsDialog} style={{width: '450px'}} header="Confirm" modal footer={deleteItemsDialogFooter} onHide={hideDeleteItemsDialog} >
                    <div className="flex align-items-center justify-content-center">
                    <i className="pi pi-exclamation-triangle mr-3" style={{fontSize: '2rem'}} />
                    {item && <span>Are you sure you want to delete the selected ${pojo.formatedNameLowerCase?uncap_first}s?</span>}
                    </div>
                </Dialog>
            </div>
        </div>
    </div>
);
};
export default List;


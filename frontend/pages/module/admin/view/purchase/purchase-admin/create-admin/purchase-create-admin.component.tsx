import {Button} from 'primereact/button';
import {Column} from 'primereact/column';
import {Dropdown} from 'primereact/dropdown';
import {TabView, TabPanel} from 'primereact/tabview';
import {DataTable} from 'primereact/datatable';
import {Dialog} from 'primereact/dialog';
import {InputNumber, InputNumberChangeEvent} from 'primereact/inputnumber';
import {InputText} from 'primereact/inputtext';
import {classNames} from 'primereact/utils';
import { InputTextarea } from 'primereact/inputtextarea';
import {AxiosResponse} from 'axios';
import React, {useEffect, useState} from 'react';
import {Calendar, CalendarChangeEvent} from 'primereact/calendar';
import { format } from 'date-fns';
import {InputNumberChangeEvent} from 'primereact/inputnumber';
import { InputSwitch } from "primereact/inputswitch";
import {MultiSelect} from "primereact/multiselect";
import {MessageService} from "/pages/controller/service/MessageService";
import {PurchaseService} from '/pages/controller/service/Purchase.service';
import  {PurchaseDto}  from '/pages/controller/model/Purchase.model';
import {PurchaseItemDto} from '/pages/controller/model/PurchaseItem.model';
import {PurchaseItemService} from '/pages/controller/service/PurchaseItem.service';
import {ProductDto} from '/pages/controller/model/Product.model';
import {ProductService} from '/pages/controller/service/Product.service';
import {ClientDto} from '/pages/controller/model/Client.model';
import {ClientService} from '/pages/controller/service/Client.service';
const Create = ({visible, onClose, add, showToast, list}) => {

    const emptyItem = new PurchaseDto();
    const [items, setItems] = useState<PurchaseDto[]>([list]);
    const [item, setItem] = useState<PurchaseDto>(emptyItem);
    const [submitted, setSubmitted] = useState(false); const [activeIndex, setActiveIndex] = useState<number>(0);
    const [activeTab, setActiveTab] = useState(0);
    const [purchaseItems, setPurchaseItems] = useState<PurchaseItemDto[]>([]);
    type PurchaseItemResponse = AxiosResponse<PurchaseItemDto[]>;
    const [products, setProducts] = useState<ProductDto[]>([]);
    type ProductResponse = AxiosResponse<ProductDto[]>;
    const [clients, setClients] = useState<ClientDto[]>([]);
    type ClientResponse = AxiosResponse<ClientDto[]>;
    const [purchaseItem, setPurchaseItem] = useState<PurchaseItemDto>(new PurchaseItemDto());

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
        fetchData();
    }, []);

    const onDropdownChange = (e, field) => {
        setItem((prevState) => ({ ...prevState, [field]: e.value, }));
    };



    const addPurchaseItems = () => {
        setSubmitted(true);
        if( item.purchaseItems == null )
        item.purchaseItems = new Array<PurchaseItemDto>();
        let _item = purchaseItem;
        if (!_item.id) {
            item.purchaseItems.push(_item);
            MessageService.showToast(showToast, { severity: 'success', summary: 'Successful', detail: 'PurchaseItem Created', life: 3000 });
            setItem((prevState :any) => ({...prevState, purchaseItems: item.purchaseItems }));
        } else {
            const updatedItems = item.purchaseItems.map((item) => item.id === purchaseItem.id ? {...purchaseItem} : item);
            MessageService.showToast(showToast, { severity: 'success', summary: 'Successful', detail: 'PurchaseItem Updated', life: 3000 });
            setItem((prevState :any) => ({ ...prevState, PurchaseItems: updatedItems}));
        }
        setPurchaseItem(new PurchaseItemDto());
    };

    const deletePurchaseItem = (rowData) => {
        const updatedItems = item.purchaseItems.filter((val) => val !== rowData);
        setItem((prevState :any) => ({...prevState,purchaseItems: updatedItems }));
        setPurchaseItem(new PurchaseItemDto());
        MessageService.showToast(showToast, {severity: 'success', summary: 'Successful', detail: 'PurchaseItem Deleted', life: 3000});
    };

    const editPurchaseItem = (rowData) => {
         setActiveTab(0);
         setPurchaseItem(rowData);

    };

    const onInputNumerChangePurchaseItems = (e, name) => {
         const val = e.value || 0;
         setPurchaseItem((prevPurchaseItems) => ({...prevPurchaseItems, [name]: val, }));
    };

    const onMultiSelectChangePurchaseItems = (e, field) => {
        if (e && e.value && Array.isArray(e.value)) {
            const selectedValues = e.value.map(option => option && option.value);
            setPurchaseItem(prevState => ({ ...prevState, [field]: selectedValues, }));
        }
    };
    const onDropdownChangePurchaseItems = (e, fieldName) => {
        setPurchaseItem((prevPurchaseItem) => ({
            ...prevPurchaseItem,
            [fieldName]: e.value
        }));
    };


    const onBooleanInputChangePurchaseItems = (e: any, name: string) => {
       const val = e.value;
       setPurchaseItem((prevItem) => ({ ...prevItem, [name]: val, }));
    };

    const onInputDateChangePurchaseItems = (e: CalendarChangeEvent, name: string) => {
        const val = e.value || ''; // Utilisez e.value au lieu de e.target.value
        let _item = { ...purchaseItem};
        _item[`${name}`] = val;
        setPurchaseItem(_item);
    };

    const onInputTextChangePurchaseItems = (e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>, name: string) => {
         const val = (e.target && e.target.value) || '';
         let _item = {...purchaseItem};
         _item[`${name}`] = val;
         setPurchaseItem(_item);
    };

    const onTabChange = (e: { index: number }) => { setActiveIndex(e.index); };

    const hideDialog = () => {
        setSubmitted(false);
        onClose();
    };

    const saveItem = async () => {
        setSubmitted(true);
        let _items = [...items];
        let _item = {...item};
        if (!_item.id) {
             await PurchaseService.save(_item);
              _items.push(_item);
             add(_item);
             MessageService.showToast(showToast, { severity: 'success', summary: 'Successful', detail: 'Purchase Created', life: 3000 });
        }
        setItems(_items);
        onClose();
        setItem(emptyItem);
        setItem({...item, PurchaseItems: null, });
        setPurchaseItem(new PurchaseItemDto());
    };

    const onInputTextChange = (e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>, name: string) => {
        const val = (e.target && e.target.value) || '';
        let _item = {...item};
        _item[`${name}`] = val;
        setItem(_item);
    };

    const onInputDateChange = (e: CalendarChangeEvent, name: string) => {
        const val = e.value || ''; // Utilisez e.value au lieu de e.target.value
        let _item = { ...item};
        _item[`${name}`] = val;
        setItem(_item);
    };

    const onInputNumerChange = (e: InputNumberChangeEvent, name: string) => {
        const val = e.value === null ? null : +e.value;
        setItem((prevItem) => ({ ...prevItem, [name]: val, }));
    };

    const onMultiSelectChange = (e, field) => {
      if (e && e.value && Array.isArray(e.value)) {
         const selectedValues = e.value.map(option => option && option.value);
         setItem(prevState => ({ ...prevState, [field]: selectedValues, }));
      }
    };

    const onBooleanInputChange = (e: any, name: string) => {
       const val = e.value;
       setItem((prevItem) => ({ ...prevItem, [name]: val, }));
    };

    const itemDialogFooter = ( <>
        <Button label="Cancel" icon="pi pi-times" text onClick={hideDialog} />
        <Button label="Save" icon="pi pi-check" text onClick={saveItem} /> < />
    );

return(
    <Dialog visible={visible} style={{width: '70vw'}} header="Purchase" modal className="p-fluid" footer={itemDialogFooter} onHide={hideDialog} >
        <TabView activeIndex={activeIndex} onTabChange={onTabChange}>
            <TabPanel header="Purchase">
                <div className="formgrid grid">
                    <div className="field col-6">
                    <label htmlFor="reference">Reference</label>
                    <InputText id="reference" value={item.reference} onChange={(e) => onInputTextChange(e, 'reference')} required autoFocus className={classNames({'p-invalid': submitted && !item.reference})} />
                    {submitted && !item.reference && <small className="p-invalid">Reference is required.</small>}
                    </div>
                    <div className="field col-6">
                    <label htmlFor="purchaseDate">PurchaseDate</label>
                    <Calendar id="purchaseDate" value={item.purchaseDate} onChange={(e) => onInputDateChange(e, 'purchaseDate')} dateFormat="dd/mm/yy" showTime />
                    </div>
                    <div className="field col-6">
                    <label htmlFor="image">Image</label>
                    <InputText id="image" value={item.image} onChange={(e) => onInputTextChange(e, 'image')} required autoFocus className={classNames({'p-invalid': submitted && !item.image})} />
                    {submitted && !item.image && <small className="p-invalid">Image is required.</small>}
                    </div>
                    <div className="field col-6">
                    <label htmlFor="total">Total</label>
                    <InputNumber id="total" value={item.total} onChange={(e) => onInputNumerChange(e, 'total')} />
                    </div>
                    <div className="field col-6">
                    <label htmlFor="description">Description</label>
                    <span className="p-float-label">
                    <InputTextarea id="description" value={item.description} onChange={(e) => onInputTextChange(e, 'description')} rows={5} cols={30}/>
                    </span>
                    </div>
                    <div className="field col-6">
                    <label htmlFor="client">Client</label>
                    <Dropdown  id="clientDropdown"  value={item.client} options={clients} onChange={(e) => onDropdownChange(e, 'client')}   placeholder="Sélectionnez un client" filter filterPlaceholder="Rechercher un client" optionLabel="fullName" />
                    </div>
                </div>
            </TabPanel>
            <TabPanel header="purchaseItems">
                <TabView activeIndex={activeTab} onTabChange={(e) => setActiveTab(e.index)}>
                    <TabPanel header="Creation">
                        <div className="grid">
                            <div className="field col-6">
                            <label htmlFor="product">Product</label>
                            <Dropdown id="productDropdown" value={purchaseItem.product} options={products} onChange={(e) => onDropdownChangePurchaseItems(e, 'product')} placeholder="Sélectionnez un produit" filter  filterPlaceholder="Rechercher un product"  optionLabel="reference" />
                             </div>
                            <div className="field col-6">
                            <label htmlFor="price">Price</label>
                            <InputNumber id="price" value={purchaseItem.price}  onValueChange={(e) => onInputNumerChangePurchaseItems(e, 'price')}/>
                            </div>
                            <div className="field col-6">
                            <label htmlFor="quantity">Quantity</label>
                            <InputNumber id="quantity" value={purchaseItem.quantity}  onValueChange={(e) => onInputNumerChangePurchaseItems(e, 'quantity')}/>
                            </div>
                            <div className="field col-1">
                                <Button icon="pi pi-plus" label="OK" class="mt-4" onClick={addPurchaseItems} />
                            </div>
                        </div>
                    </TabPanel>
                    <TabPanel header="Liste">
                    <div className="card">
                    <DataTable value={item.purchaseItems} tableStyle={{minWidth: '50rem'}} dataKey="id">
                        <Column field="product.reference" header="Product"></Column>
                        <Column field="price" header="Price"></Column>
                        <Column field="quantity" header="Quantity"></Column>
                        <Column header="Actions" body={(rowData)=> (<div>
                        <Button icon="pi pi-times" rounded severity="warning" className="mr-2 p-button-danger" onClick={()=> deletePurchaseItem(rowData)} />
                        <Button icon="pi pi-pencil" rounded severity="success" className="mr-2" onClick={()=> editPurchaseItem(rowData)} /> </div>)}></Column>
                    </DataTable>
                    </div>
                    </TabPanel>
                < /TabView>
            </TabPanel>
        </TabView>
    </Dialog>
);
};
export default Create;

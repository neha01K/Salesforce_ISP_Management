import { LightningElement,api } from 'lwc';

export default class ApiDecoratorChildCmponent extends LightningElement {
    @api message;
    @api foundProduct;
    @api isProductThere;

    parentCalled = false;


    get hasProduct(){
        return this.isProductThere=="true"? true:false;
    }

    @api handleParentCall(){
        this.parentCalled = true;
    }
}
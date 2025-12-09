import { LightningElement } from 'lwc';

export default class ChildEventTrigger extends LightningElement {

  selectedProduct;

  handleFiringEvent(){
    this.selectedProduct = 'mouse pad';
    let custEvent = new CustomEvent('sendSelectedProducts',{
      detail: this.selectedProduct
    });

    this.dispatchEvent(custEvent);
  }
}
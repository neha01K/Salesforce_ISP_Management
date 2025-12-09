import { LightningElement } from 'lwc';

export default class ChildToParentEvents extends LightningElement {

  finalValue;
  handleProductSelection(custEvent){
    this.finalValue = custEvent.detail;
  }    
}
import { LightningElement, api } from 'lwc';

export default class LoadACustomViewRecord extends LightningElement {

  @api recordId;
  objectApiName = 'Case';
  fields = ['ContactId','Priority', 'Status', 'CaseNumber'];
}
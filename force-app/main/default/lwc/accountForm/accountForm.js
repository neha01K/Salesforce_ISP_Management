import { LightningElement, api } from 'lwc';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import PHONE_FIELD from '@salesforce/schema/Account.Phone';

export default class AccountForm extends LightningElement {

  @api recordId;
  objectApiName = 'Account';
  myfields = [NAME_FIELD, PHONE_FIELD];
}
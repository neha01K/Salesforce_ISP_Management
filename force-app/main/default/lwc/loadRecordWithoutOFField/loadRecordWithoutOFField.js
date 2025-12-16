import { LightningElement, api, wire } from 'lwc';

import CASE_NUMBER from '@salesforce/schema/Case.CaseNumber';
import STATUS from '@salesforce/schema/Case.Origin';

export default class LoadRecordWithoutOFField extends LightningElement {

  @api recordId

}
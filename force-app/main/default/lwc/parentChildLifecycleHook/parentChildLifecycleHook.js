import { LightningElement } from 'lwc';

export default class ParentChildLifecycleHook extends LightningElement {
  constructor(){
    super();
    console.log("Parent Constructor called");
  }

  connectedCallback(){
    console.log("Parent Connected Callback called");
  }

  renderedCallback(){
    console.log("Parent Renedered Callback called");
  }

  disconnectedCallback(){
    console.log("Parent Disconnection happened here");
  }

  errorCallback(){
    console.log("Parent error callback called here");
  }

  parentButton(){
    console.log("parent button clicked");
  }
}
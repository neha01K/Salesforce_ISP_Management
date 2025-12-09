import { LightningElement } from 'lwc';

export default class LifecycleHooks extends LightningElement {
  username = 'Subhasini';

  handleNameChange(){
    this.username = 'Vinod';
  }

  constructor(){
    super();
    //console.log("Constructor is called");
  }

  connectedCallback(){
    //console.log("Connected Callback is called");
  }

  renderedCallback(){
    //console.log("Renedering happened here");
  }

  disconnectedCallback(){
    //console.log("Disconnection happened here");
  }

  errorCallback(){
    //console.log("error callback called here");
  }
}
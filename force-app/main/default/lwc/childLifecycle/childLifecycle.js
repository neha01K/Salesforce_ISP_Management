import { LightningElement } from 'lwc';

export default class ChildLifecycle extends LightningElement {

  constructor(){
    super();
    console.log("Child Constructor is called");
  }

  connectedCallback(){
    console.log("Child Connected Callback is called");
  }

  renderedCallback(){
    console.log("Child Renedered here");
  }

  disconnectedCallback(){
    console.log("Child Disconnection happened here");
  }

  errorCallback(){
    console.log("Child error callback called here");
  }

  childButton(){
    console.log("child button clicked");
  }
}
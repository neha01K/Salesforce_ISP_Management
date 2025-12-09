import { LightningElement } from 'lwc';

export default class CheckReactivity extends LightningElement {

  userAddress = '19 Street, Yemen';

  personalDetails = {
    "result": [
      {
        "message": "Hello, Tevin! Your order number is: #20",
        "phoneNumber": "1-248-446-6824",
        "phoneVariation": "+90 357 321 10 64",
        "status": "disabled",
        "name": {
          "first": "Gonzalo",
          "middle": "Phoenix",
          "last": "Green"
        },
        "username": "Gonzalo-Green",
        "password": "YAH0cMyn3GYs7iw",
        "emails": [
          "Jewell_OKeefe15@gmail.com",
          "Natalia.Okuneva39@example.com"
        ],
        "location": {
          "street": "7852 O'Hara Crescent",
          "city": "Pflugerville",
          "state": "Texas",
          "country": "Congo",
          "zip": "61004",
          "coordinates": {
            "latitude": "86.7144",
            "longitude": "14.0568"
          }
        },
        "website": "https://spiteful-dungeon.net/",
        "domain": "stormy-heartwood.org",
        "job": {
          "title": "National Usability Facilitator",
          "descriptor": "Forward",
          "area": "Research",
          "type": "Technician",
          "company": "Ebert - McDermott"
        },
        "creditCard": {
          "number": "5544-3485-4431-6941",
          "cvv": "996",
          "issuer": "discover"
        },
        "uuid": "e523fb32-6259-4834-91a6-2f2f313cf14a",
        "objectId": "6937b0d12b782e2bd4294bb9"
      },
      {
        "message": "Hello, Kane! Your order number is: #75",
        "phoneNumber": "252-234-6779",
        "phoneVariation": "+90 332 451 10 78",
        "status": "disabled",
        "name": {
          "first": "Madisyn",
          "middle": "Jaden",
          "last": "Fisher"
        },
        "username": "Madisyn-Fisher",
        "password": "2nsf_FZeso7CK0V",
        "emails": [
          "Kailyn.Hermann@example.com",
          "Juwan.McClure@gmail.com"
        ],
        "location": {
          "street": "57237 Bath Street",
          "city": "Smithamborough",
          "state": "North Dakota",
          "country": "Bolivia",
          "zip": "63490-9546",
          "coordinates": {
            "latitude": "53.0923",
            "longitude": "-71.9128"
          }
        },
        "website": "https://occasional-everybody.info/",
        "domain": "admirable-dime.net",
        "job": {
          "title": "Investor Usability Designer",
          "descriptor": "National",
          "area": "Branding",
          "type": "Designer",
          "company": "Pagac, Hickle and O'Conner"
        },
        "creditCard": {
          "number": "3528-7716-8223-3526",
          "cvv": "101",
          "issuer": "visa"
        },
        "uuid": "6f01604a-fcc2-48f1-8f61-6fcc904a16ca",
        "objectId": "6937b0d12b782e2bd4294bba"
      }
    ]
  }

  updateAddress(){
    this.userAddress = '9 Street, Yemen';
  }

  // get personalDetailsObj(){
  //   return JSON.parse(this.personalDetails);
  // }
}
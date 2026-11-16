# India Pincode Lookup API

India Pincode Lookup is an Indian PIN code API covering all ~19,300 PIN codes and ~157,000 post offices. Look up a PIN code to get its district, state, ISO state code, India Post circle, region, division and post office count, or search by post office, district or state, while paid plans add coordinates, every post office with its type and delivery status, and nearby PIN codes by distance.

[![npm version](https://img.shields.io/npm/v/@apiverve/indiapincode.svg)](https://www.npmjs.com/package/@apiverve/indiapincode)

This is a JavaScript wrapper for the [India Pincode Lookup API](https://apiverve.com/marketplace/indiapincode?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/indiapincode
```

Using yarn:
```shell
yarn add @apiverve/indiapincode
```

---

## Configuration

Before using the India Pincode Lookup API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=referral&utm_content=readme)

The India Pincode Lookup API documentation is found here: [https://docs.apiverve.com/ref/indiapincode](https://docs.apiverve.com/ref/indiapincode?utm_source=npm&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const indiapincodeAPI = require('@apiverve/indiapincode');
const api = new indiapincodeAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  pincode: "110001",
  office: "Connaught Place",
  district: "Pune",
  state: "Maharashtra",
  nearby: false,
  radius: 10,
  limit: 10
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  pincode: "110001",
  office: "Connaught Place",
  district: "Pune",
  state: "Maharashtra",
  nearby: false,
  radius: 10,
  limit: 10
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  pincode: "110001",
  office: "Connaught Place",
  district: "Pune",
  state: "Maharashtra",
  nearby: false,
  radius: 10,
  limit: 10
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "count": 1,
    "totalMatches": 1,
    "results": [
      {
        "pincode": "560001",
        "district": "Bengaluru Urban",
        "state": "Karnataka",
        "stateCode": "KA",
        "circle": "Karnataka Circle",
        "region": "Bengaluru HQ Region",
        "division": "BANGALORE GPO DIVISION",
        "latitude": 12.98247,
        "longitude": 77.59456,
        "timezone": "Asia/Kolkata",
        "postOfficeCount": 10,
        "deliveryOfficeCount": 1,
        "postOffices": [
          {
            "name": "Bengaluru G.P.O.",
            "officeType": "head_office",
            "delivery": true,
            "latitude": 12.9716,
            "longitude": 77.59456
          },
          {
            "name": "Bengaluru Foreign Post S.O",
            "officeType": "sub_office",
            "delivery": false,
            "latitude": 13.03,
            "longitude": 77.6007
          },
          {
            "name": "CMM Court Complex S.O",
            "officeType": "sub_office",
            "delivery": false,
            "latitude": 12.97949,
            "longitude": 77.59418
          },
          {
            "name": "Dr. Ambedkar Veedhi S.O",
            "officeType": "sub_office",
            "delivery": false,
            "latitude": 12.98114,
            "longitude": 77.59536
          },
          {
            "name": "HighCourt S.O",
            "officeType": "sub_office",
            "delivery": false,
            "latitude": 12.96842,
            "longitude": 77.56919
          },
          {
            "name": "Legislators Home S.O",
            "officeType": "sub_office",
            "delivery": false,
            "latitude": 12.98386,
            "longitude": 77.58961
          },
          {
            "name": "Mahatma Gandhi Road S.O",
            "officeType": "sub_office",
            "delivery": false,
            "latitude": 12.16103,
            "longitude": 78.00022
          },
          {
            "name": "Rajbhavan S.O",
            "officeType": "sub_office",
            "delivery": false,
            "latitude": 12.98247,
            "longitude": 77.5913
          },
          {
            "name": "Vasanthanagar S.O",
            "officeType": "sub_office",
            "delivery": false,
            "latitude": 12.99351,
            "longitude": 77.5921
          },
          {
            "name": "Vidhana Soudha S.O",
            "officeType": "sub_office",
            "delivery": false,
            "latitude": 12.98747,
            "longitude": 77.60475
          }
        ],
        "nearby": [
          {
            "pincode": "560009",
            "district": "Bengaluru Urban",
            "state": "Karnataka",
            "distanceKm": 1.57
          },
          {
            "pincode": "560042",
            "district": "Bengaluru Urban",
            "state": "Karnataka",
            "distanceKm": 1.93
          }
        ]
      }
    ]
  }
}
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=referral&utm_content=readme) and [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

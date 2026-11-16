# [India Pincode Lookup API](https://apiverve.com/marketplace/indiapincode?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)

India Pincode Lookup is an Indian PIN code API covering all ~19,300 PIN codes and ~157,000 post offices. Look up a PIN code to get its district, state, ISO state code, India Post circle, region, division and post office count, or search by post office, district or state, while paid plans add coordinates, every post office with its type and delivery status, and nearby PIN codes by distance.

The India Pincode Lookup API provides a simple, reliable way to integrate india pincode lookup functionality into your applications. Built for developers who need production-ready india pincode lookup capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/indiapincode?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/indiapincode?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-GET-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/indiapincode)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.IndiaPincodeLookup)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-indiapincode/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_indiapincode)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/indiapincode)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_indiapincode)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callIndiaPincodeLookupAPI() {
    try {
        const params = new URLSearchParams({
            pincode: '110001',
            office: 'Connaught Place',
            district: 'Pune',
            state: 'Maharashtra',
            radius: 10,
            limit: 10
        });

        const response = await fetch(`https://api.apiverve.com/v1/indiapincode?${params}`, {
            method: 'GET',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE'
            }
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callIndiaPincodeLookupAPI();
```

### Using cURL

```bash
curl -X GET "https://api.apiverve.com/v1/indiapincode?pincode=110001&office=Connaught%20Place&district=Pune&state=Maharashtra&radius=10&limit=10" \
  -H "x-api-key: YOUR_API_KEY_HERE"
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/indiapincode
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/indiapincode) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.IndiaPincodeLookup
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.IndiaPincodeLookup) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-indiapincode
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-indiapincode/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_indiapincode
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_indiapincode) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/indiapincode
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/indiapincode) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_indiapincode
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_indiapincode) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:indiapincode-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/indiapincode-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [India Pincode Lookup API](https://apiverve.com/marketplace/indiapincode?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/indiapincode](https://docs.apiverve.com/ref/indiapincode)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The India Pincode Lookup API is commonly used for:

- **Web Applications** - Add india pincode lookup features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with india pincode lookup capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the India Pincode Lookup API:

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

## Support & Community

- 🏠 **API Home**: [India Pincode Lookup API](https://apiverve.com/marketplace/indiapincode?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.

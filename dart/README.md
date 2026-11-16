# India Pincode Lookup API - Dart/Flutter Client

India Pincode Lookup is an Indian PIN code API covering all ~19,300 PIN codes and ~157,000 post offices. Look up a PIN code to get its district, state, ISO state code, India Post circle, region, division and post office count, or search by post office, district or state, while paid plans add coordinates, every post office with its type and delivery status, and nearby PIN codes by distance.

[![pub package](https://img.shields.io/pub/v/apiverve_indiapincode.svg)](https://pub.dev/packages/apiverve_indiapincode)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [India Pincode Lookup API](https://apiverve.com/marketplace/indiapincode?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_indiapincode: ^1.2.6
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_indiapincode/apiverve_indiapincode.dart';

void main() async {
  final client = IndiapincodeClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'pincode': '110001',
      'office': 'Connaught Place',
      'district': 'Pune',
      'state': 'Maharashtra',
      'nearby': true,
      'radius': 10,
      'limit': 10
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [India Pincode Lookup API](https://apiverve.com/marketplace/indiapincode?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/indiapincode](https://docs.apiverve.com/ref/indiapincode?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)

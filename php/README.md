# India Pincode Lookup API - PHP Package

India Pincode Lookup is an Indian PIN code API covering all ~19,300 PIN codes and ~157,000 post offices. Look up a PIN code to get its district, state, ISO state code, India Post circle, region, division and post office count, or search by post office, district or state, while paid plans add coordinates, every post office with its type and delivery status, and nearby PIN codes by distance.

## Installation

Install via Composer:

```bash
composer require apiverve/indiapincode
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Indiapincode\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'pincode' => '110001',
    'office' => 'Connaught Place',
    'district' => 'Pune',
    'state' => 'Maharashtra',
    'nearby' => true,
    'radius' => 10,
    'limit' => 10
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Indiapincode\Client;
use APIVerve\Indiapincode\Exceptions\APIException;
use APIVerve\Indiapincode\Exceptions\ValidationException;

try {
    $response = $client->execute(['pincode' => '110001', 'office' => 'Connaught Place', 'district' => 'Pune', 'state' => 'Maharashtra', 'nearby' => true, 'radius' => 10, 'limit' => 10]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/indiapincode?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/indiapincode?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/indiapincode?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).

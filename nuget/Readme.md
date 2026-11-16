India Pincode Lookup API
============

India Pincode Lookup is an Indian PIN code API covering all ~19,300 PIN codes and ~157,000 post offices. Look up a PIN code to get its district, state, ISO state code, India Post circle, region, division and post office count, or search by post office, district or state, while paid plans add coordinates, every post office with its type and delivery status, and nearby PIN codes by distance.


[![NuGet version](https://img.shields.io/nuget/v/APIVerve.API.IndiaPincodeLookup.svg)](https://www.nuget.org/packages/APIVerve.API.IndiaPincodeLookup)

This is a .NET wrapper for the [India Pincode Lookup API](https://apiverve.com/marketplace/indiapincode?utm_source=nuget&utm_medium=referral&utm_content=readme)

---

## Installation

Using the .NET CLI:
```
dotnet add package APIVerve.API.IndiaPincodeLookup
```

Using the Package Manager:
```
nuget install APIVerve.API.IndiaPincodeLookup
```

Using the Package Manager Console:
```
Install-Package APIVerve.API.IndiaPincodeLookup
```

From within Visual Studio:

1. Open the Solution Explorer
2. Right-click on a project within your solution
3. Click on Manage NuGet Packages
4. Click on the Browse tab and search for "APIVerve.API.IndiaPincodeLookup"
5. Click on the APIVerve.API.IndiaPincodeLookup package, select the appropriate version in the right-tab and click Install

---

## Configuration

Before using the India Pincode Lookup API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=nuget&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```csharp
using System;
using APIVerve.API.IndiaPincodeLookup;

class Program
{
    static async Task Main(string[] args)
    {
        // Initialize the API client
        var apiClient = new IndiaPincodeLookupAPIClient("[YOUR_API_KEY]");

        var queryOptions = new IndiaPincodeLookupQueryOptions {
            Pincode = "110001",
            Office = "Connaught Place",
            District = "Pune",
            State = "Maharashtra",
            Nearby = true,
            Radius = 10,
            Limit = 10
        };

        // Make the API call
        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                // Access response data using the strongly-typed ResponseObj properties
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Exception: {ex.Message}");
        }
    }
}
```

---

## Usage

The India Pincode Lookup API documentation is found here: [https://docs.apiverve.com/ref/indiapincode](https://docs.apiverve.com/ref/indiapincode?utm_source=nuget&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

###### Authentication
India Pincode Lookup API uses API Key-based authentication. When you create an instance of the API client, you can pass your API Key as a parameter.

```csharp
// Create an instance of the API client
var apiClient = new IndiaPincodeLookupAPIClient("[YOUR_API_KEY]");
```

---

## Usage Examples

### Basic Usage (Async/Await Pattern - Recommended)

The modern async/await pattern provides the best performance and code readability:

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.IndiaPincodeLookup;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new IndiaPincodeLookupAPIClient("[YOUR_API_KEY]");

        var queryOptions = new IndiaPincodeLookupQueryOptions {
            Pincode = "110001",
            Office = "Connaught Place",
            District = "Pune",
            State = "Maharashtra",
            Nearby = true,
            Radius = 10,
            Limit = 10
        };

        var response = await apiClient.ExecuteAsync(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

### Synchronous Usage

If you need to use synchronous code, you can use the `Execute` method:

```csharp
using System;
using APIVerve.API.IndiaPincodeLookup;

public class Example
{
    public static void Main(string[] args)
    {
        var apiClient = new IndiaPincodeLookupAPIClient("[YOUR_API_KEY]");

        var queryOptions = new IndiaPincodeLookupQueryOptions {
            Pincode = "110001",
            Office = "Connaught Place",
            District = "Pune",
            State = "Maharashtra",
            Nearby = true,
            Radius = 10,
            Limit = 10
        };

        var response = apiClient.Execute(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

---

## Error Handling

The API client provides comprehensive error handling. Here are some examples:

### Handling API Errors

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.IndiaPincodeLookup;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new IndiaPincodeLookupAPIClient("[YOUR_API_KEY]");

        var queryOptions = new IndiaPincodeLookupQueryOptions {
            Pincode = "110001",
            Office = "Connaught Place",
            District = "Pune",
            State = "Maharashtra",
            Nearby = true,
            Radius = 10,
            Limit = 10
        };

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            // Check for API-level errors
            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
                Console.WriteLine($"Status: {response.Status}");
                return;
            }

            // Success - use the data
            Console.WriteLine("Request successful!");
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
        catch (ArgumentException ex)
        {
            // Invalid API key or parameters
            Console.WriteLine($"Invalid argument: {ex.Message}");
        }
        catch (System.Net.Http.HttpRequestException ex)
        {
            // Network or HTTP errors
            Console.WriteLine($"Network error: {ex.Message}");
        }
        catch (Exception ex)
        {
            // Other errors
            Console.WriteLine($"Unexpected error: {ex.Message}");
        }
    }
}
```

### Comprehensive Error Handling with Retry Logic

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.IndiaPincodeLookup;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new IndiaPincodeLookupAPIClient("[YOUR_API_KEY]");

        // Configure retry behavior (max 3 retries)
        apiClient.SetMaxRetries(3);        // Retry up to 3 times (default: 0, max: 3)
        apiClient.SetRetryDelay(2000);     // Wait 2 seconds between retries

        var queryOptions = new IndiaPincodeLookupQueryOptions {
            Pincode = "110001",
            Office = "Connaught Place",
            District = "Pune",
            State = "Maharashtra",
            Nearby = true,
            Radius = 10,
            Limit = 10
        };

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Failed after retries: {ex.Message}");
        }
    }
}
```

---

## Advanced Features

### Custom Headers

Add custom headers to your requests:

```csharp
var apiClient = new IndiaPincodeLookupAPIClient("[YOUR_API_KEY]");

// Add custom headers
apiClient.AddCustomHeader("X-Custom-Header", "custom-value");
apiClient.AddCustomHeader("X-Request-ID", Guid.NewGuid().ToString());

var queryOptions = new IndiaPincodeLookupQueryOptions {
    Pincode = "110001",
    Office = "Connaught Place",
    District = "Pune",
    State = "Maharashtra",
    Nearby = true,
    Radius = 10,
    Limit = 10
};

var response = await apiClient.ExecuteAsync(queryOptions);

// Remove a header
apiClient.RemoveCustomHeader("X-Custom-Header");

// Clear all custom headers
apiClient.ClearCustomHeaders();
```

### Request Logging

Enable logging for debugging:

```csharp
var apiClient = new IndiaPincodeLookupAPIClient("[YOUR_API_KEY]", isDebug: true);

// Or use a custom logger
apiClient.SetLogger(message =>
{
    Console.WriteLine($"[LOG] {DateTime.Now:yyyy-MM-dd HH:mm:ss} - {message}");
});

var queryOptions = new IndiaPincodeLookupQueryOptions {
    Pincode = "110001",
    Office = "Connaught Place",
    District = "Pune",
    State = "Maharashtra",
    Nearby = true,
    Radius = 10,
    Limit = 10
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Retry Configuration

Customize retry behavior for failed requests:

```csharp
var apiClient = new IndiaPincodeLookupAPIClient("[YOUR_API_KEY]");

// Set retry options
apiClient.SetMaxRetries(3);           // Retry up to 3 times (default: 0, max: 3)
apiClient.SetRetryDelay(1500);        // Wait 1.5 seconds between retries (default: 1000ms)

var queryOptions = new IndiaPincodeLookupQueryOptions {
    Pincode = "110001",
    Office = "Connaught Place",
    District = "Pune",
    State = "Maharashtra",
    Nearby = true,
    Radius = 10,
    Limit = 10
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Dispose Pattern

The API client implements `IDisposable` for proper resource cleanup:

```csharp
var queryOptions = new IndiaPincodeLookupQueryOptions {
    Pincode = "110001",
    Office = "Connaught Place",
    District = "Pune",
    State = "Maharashtra",
    Nearby = true,
    Radius = 10,
    Limit = 10
};

using (var apiClient = new IndiaPincodeLookupAPIClient("[YOUR_API_KEY]"))
{
    var response = await apiClient.ExecuteAsync(queryOptions);
    Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
}
// HttpClient is automatically disposed here
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

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=nuget&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=nuget&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.IndiaPincodeLookup
{
    /// <summary>
    /// Query options for the India Pincode Lookup API
    /// </summary>
    public class IndiaPincodeLookupQueryOptions
    {
        /// <summary>
        /// Six-digit PIN code
        /// </summary>
        [JsonProperty("pincode")]
        public string Pincode { get; set; }

        /// <summary>
        /// Post office name or part of it
        /// </summary>
        [JsonProperty("office")]
        public string Office { get; set; }

        /// <summary>
        /// District name
        /// </summary>
        [JsonProperty("district")]
        public string District { get; set; }

        /// <summary>
        /// State or union territory name
        /// </summary>
        [JsonProperty("state")]
        public string State { get; set; }

        /// <summary>
        /// With pincode, include the PIN codes within radius km
        /// </summary>
        [JsonProperty("nearby")]
        public bool? Nearby { get; set; }

        /// <summary>
        /// Radius in km for nearby (1-50)
        /// </summary>
        [JsonProperty("radius")]
        public double? Radius { get; set; }

        /// <summary>
        /// Maximum PIN codes to return for searches (1-50)
        /// </summary>
        [JsonProperty("limit")]
        public int? Limit { get; set; }
    }
}

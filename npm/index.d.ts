declare module '@apiverve/indiapincode' {
  export interface indiapincodeOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface indiapincodeResponse {
    status: string;
    error: string | null;
    data: IndiaPincodeLookupData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface IndiaPincodeLookupData {
      count:        number | null;
      totalMatches: number | null;
      results:      Result[];
  }
  
  interface Result {
      pincode:             null | string;
      district:            null | string;
      state:               null | string;
      stateCode:           null | string;
      circle:              null | string;
      region:              null | string;
      division:            null | string;
      latitude:            number | null;
      longitude:           number | null;
      timezone:            null | string;
      postOfficeCount:     number | null;
      deliveryOfficeCount: number | null;
      postOffices:         PostOffice[];
      nearby:              Nearby[];
  }
  
  interface Nearby {
      pincode:    null | string;
      district:   null | string;
      state:      null | string;
      distanceKM: number | null;
  }
  
  interface PostOffice {
      name:       null | string;
      officeType: OfficeType | null;
      delivery:   boolean | null;
      latitude:   number | null;
      longitude:  number | null;
  }
  
  enum OfficeType {
      HeadOffice = "head_office",
      SubOffice = "sub_office",
  }

  export default class indiapincodeWrapper {
    constructor(options: indiapincodeOptions);

    execute(callback: (error: any, data: indiapincodeResponse | null) => void): Promise<indiapincodeResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: indiapincodeResponse | null) => void): Promise<indiapincodeResponse>;
    execute(query?: Record<string, any>): Promise<indiapincodeResponse>;
  }
}

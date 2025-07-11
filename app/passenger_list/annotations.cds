using PassengerService as service from '../../srv/passenger-service';

annotate service.Passenger with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : CustomerID,
            },
            {
                $Type : 'UI.DataField',
                Value : FirstName,
            },
            {
                $Type : 'UI.DataField',
                Value : LastName,
            },
            {
                $Type : 'UI.DataField',
                Value : Title,
            },
            {
                $Type : 'UI.DataField',
                Value : PhoneNumber,
            },
            {
                $Type : 'UI.DataField',
                Value : EMailAddress,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Address',
            ID : 'Address',
            Target : '@UI.FieldGroup#Adress',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : CustomerID,
        },
        {
            $Type : 'UI.DataField',
            Value : FirstName,
        },
        {
            $Type : 'UI.DataField',
            Value : LastName,
        },
        {
            $Type : 'UI.DataField',
            Value : PostalCode,
        },
    ],
    UI.FieldGroup #Adress : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : Street,
            },
            {
                $Type : 'UI.DataField',
                Value : PostalCode,
            },
            {
                $Type : 'UI.DataField',
                Value : City,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CountryCode_code',
                Value : CountryCode_code,
            },
        ],
    },
);

annotate service.Booking with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : BookingID,
        },
        {
            $Type : 'UI.DataField',
            Value : BookingDate,
        },
        {
            $Type : 'UI.DataField',
            Value : ConnectionID,
        },
        {
            $Type : 'UI.DataField',
            Value : FlightDate,
        },
        {
            $Type : 'UI.DataField',
            Value : FlightPrice,
        },
        {
            $Type : 'UI.DataField',
            Value : BookingStatus_code,
        },
    ],
    UI.LineItem #tableMacro : [
        {
            $Type : 'UI.DataField',
            Value : BookingID,
        },
        {
            $Type : 'UI.DataField',
            Value : BookingDate,
        },
        {
            $Type : 'UI.DataField',
            Value : BookingStatus_code,
        },
        {
            $Type : 'UI.DataField',
            Value : CurrencyCode_code,
        },
    ],
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Booking Information',
            ID : 'BookingInformation',
            Target : '@UI.FieldGroup#BookingInformation',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Flight Information',
            ID : 'FlightInformation',
            Target : '@UI.FieldGroup#FlightInformation',
        },
    ],
    UI.FieldGroup #BookingInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : BookingDate,
            },
            {
                $Type : 'UI.DataField',
                Value : BookingID,
            },
            {
                $Type : 'UI.DataField',
                Value : BookingStatus_code,
            },
            {
                $Type : 'UI.DataField',
                Value : CurrencyCode_code,
            },
            {
                $Type : 'UI.DataField',
                Value : to_Customer_CustomerID,
            },
        ],
    },
    UI.FieldGroup #FlightInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : ConnectionID,
            },
            {
                $Type : 'UI.DataField',
                Value : FlightDate,
            },
            {
                $Type : 'UI.DataField',
                Value : FlightPrice,
            },
            {
                $Type : 'UI.DataField',
                Value : to_Carrier_AirlineID,
            },
            {
                $Type : 'UI.DataField',
                Value : to_BookSupplement.to_Booking.to_Flight.PlaneType,
            },
            {
                $Type : 'UI.DataField',
                Value : to_Flight.to_Connection.DepartureTime,
                Label : 'DepartureTime',
            },
            {
                $Type : 'UI.DataField',
                Value : to_Flight.to_Connection.ArrivalTime,
                Label : 'ArrivalTime',
            },
        ],
    },
)
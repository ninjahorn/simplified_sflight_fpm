using { sap.fe.cap.travel as my } from '../db/schema';

service PassengerService @(path:'/passenger') {

    entity Passenger as projection on my.Passenger {
        *,
        to_Booking : Association to many Booking on to_Booking.to_Customer.CustomerID = $self.CustomerID
    };

    entity Booking as projection on my.Booking;

}
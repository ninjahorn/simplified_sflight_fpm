sap.ui.define([
    "sap/m/MessageToast",
    "sap/ui/core/message/MessageType"
], function(MessageToast, MessageType) {
    'use strict';

    return {
        showLastBooking: function(oEvent) {
            const oTable = this.byId("toPassengerBookingsTable")
            const messageParams = {
                type: MessageType.Information,
                message: "Das ist eine Message. Hier kommt Information zur letzten Buchung hin!",
                processor: oTable
            };
            oTable.addMessage(messageParams)
            MessageToast.show("Hallo, ich bin ein Toast")
        }
    };
});

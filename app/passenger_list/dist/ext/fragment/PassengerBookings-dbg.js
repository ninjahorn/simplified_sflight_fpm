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
        },

        openTableDialog: function(oEvent) {
            MessageToast.show("OPEN DIALOG")
                this.loadFragment({
                    id: "tableDialog",
                    name: "passengerlist.ext.fragment.TableDialog",
                    controller: this
                });
                this.then(function (dialog) {
                    dialog.open();
                });
        },

        closeDialog: function(closeBtn) {
            closeBtn.getSource().getParent().close();
        }
    }
});

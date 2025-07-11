sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'passengerlist/test/integration/FirstJourney',
		'passengerlist/test/integration/pages/PassengerList',
		'passengerlist/test/integration/pages/PassengerObjectPage'
    ],
    function(JourneyRunner, opaJourney, PassengerList, PassengerObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('passengerlist') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePassengerList: PassengerList,
					onThePassengerObjectPage: PassengerObjectPage
                }
            },
            opaJourney.run
        );
    }
);
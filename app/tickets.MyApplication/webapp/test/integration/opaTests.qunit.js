sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'tickets/MyApplication/test/integration/FirstJourney',
		'tickets/MyApplication/test/integration/pages/tickets_ContactsList',
		'tickets/MyApplication/test/integration/pages/tickets_ContactsObjectPage'
    ],
    function(JourneyRunner, opaJourney, tickets_ContactsList, tickets_ContactsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('tickets/MyApplication') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThetickets_ContactsList: tickets_ContactsList,
					onThetickets_ContactsObjectPage: tickets_ContactsObjectPage
                }
            },
            opaJourney.run
        );
    }
);
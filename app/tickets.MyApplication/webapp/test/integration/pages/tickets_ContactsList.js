sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'tickets.MyApplication',
            componentId: 'tickets_ContactsList',
            entitySet: 'tickets_Contacts'
        },
        CustomPageDefinitions
    );
});
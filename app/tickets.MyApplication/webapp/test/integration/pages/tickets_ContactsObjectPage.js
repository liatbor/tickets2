sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'tickets.MyApplication',
            componentId: 'tickets_ContactsObjectPage',
            entitySet: 'tickets_Contacts'
        },
        CustomPageDefinitions
    );
});
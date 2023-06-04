using { Northwind_full_url } from './external/Northwind_full_url.cds';

using { tickets as my } from '../db/schema';

using tickets from '../db/schema';

@path : 'service/tickets'
service ticketsService
{
    annotate tickets with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'authenticated-user' ] }
    ];

    entity tickets as
        projection on my.tickets;

    entity Customers as
        projection on Northwind_full_url.Customers;
}

annotate ticketsService with @requires :
[
    'authenticated-user'
];

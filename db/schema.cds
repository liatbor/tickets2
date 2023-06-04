using { Northwind_full_url } from '../srv/external/Northwind_full_url.cds'; 
namespace tickets;

using
{
    Country,
    Currency,
    Language,
    User,
    cuid,
    extensible,
    managed,
    temporal
}
from '@sap/cds/common';

entity Contacts
{
    key ID : UUID
        @Core.Computed;
    firstName : String(100);
    lastName : String(100);
    email : String(100);
}

entity tickets
{
    key ID : UUID
        @Core.Computed;
    message : String(100);
    status : String(100);
}

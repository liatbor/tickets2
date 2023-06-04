using {tickets} from '../db/schema';
using {pdm} from '../db/pdm-schema';
using from  '../db/data-privacy';
@requires: 'PersonalDataManager'
@path: 'service/pdm'
@PersonalDataManagerService: true
service PDMService {
  entity tickets_Contacts as projection on tickets.Contacts;
}
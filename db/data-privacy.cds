using {pdm} from './pdm-schema';
using {tickets} from './schema';
annotate tickets.Contacts with @(PersonalData.EntitySemantics: 'DataSubject')
{
  ID     @PersonalData.FieldSemantics: 'DataSubjectID';
  firstName     @PersonalData.IsPotentiallyPersonal;
  lastName     @PersonalData.IsPotentiallyPersonal;
  email     @PersonalData.IsPotentiallyPersonal;
}
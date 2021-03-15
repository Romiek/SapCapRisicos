using { managed, sap } from '@sap/cds/common';
namespace sap.capire.risicos;

entity Risicos      : managed {
  key ID            : Integer                 @title : 'ID';
  dossiernummer     : localized String(24)    @title : 'Dossiernummer';
  omschrijving      : localized String(1111)  @title : 'Omschrijving';
  oorzaak           : localized String(1111)  @title : 'Oorzaak';
  beleidsargument   : localized String(2)     @title : 'Beleidsargument';
}

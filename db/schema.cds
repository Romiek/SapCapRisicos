using { managed, sap } from '@sap/cds/common';
namespace sap.capire.risicos;

entity Risicos      : managed {
  key ID            : Integer;
  dossiernummer     : localized String(24);
  omschrijving      : localized String(1111);
  oorzaak           : localized String(1111);
  beleidsargument   : localized String(2);
  risicocluster     : Integer;
}

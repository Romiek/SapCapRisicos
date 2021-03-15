using { sap.capire.risicos as my } from '../db/schema';
service RisicosService @(_requires:'authenticated-user') {
  entity Risicos as projection on my.Risicos;
}

//@odata.draft.enabled
annotate RisicosService.Risicos with @(
	UI: {
    HeaderInfo: {
			TypeName: 'Risico',
      TypeNamePlural: 'Risicos',
			Title: {
			  Label: 'Project', //A label is possible but it is not considered on the ObjectPage yet
			  Value: dossiernummer
			},
			Description: {
				Label: 'Omschrijving ',
				Value: omschrijving
			}
		},
		SelectionFields: [ ID, createdAt, createdBy ],
		LineItem: [
			{Value: dossiernummer, Label:'Dossiernummer'},
			{Value: omschrijving, Label:'Omschrijving'},
			{Value: oorzaak, Label:'Oorzaak'}
		],
		Facets: [
			{
        $Type: 'UI.CollectionFacet',
        Label: 'Risico info',
        Facets: [
            {$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup#Main', Label: 'Main Facet'}
        ]
      }
		],
    FieldGroup#Main: {
          Data: [
              { Value: ID },
              { Value: dossiernummer },
              { Value: omschrijving },
              { Value: oorzaak },              
          ]
      }
  }
);

using { RisicosService } from '../../srv/risicos-service';

@odata.draft.enabled
annotate RisicosService.Risicos with @(
	UI: {
		SelectionFields: [ createdAt, createdBy ],
		LineItem: [
			{Value: dossiernummer, Label:'Dossiernummer'},
			{Value: omschrijving, Label:'Omschrijving'},
			{Value: oorzaak, Label:'Oorzaak'}
		],
		HeaderInfo: {
			TypeName: 'Dossiernummer', TypeNamePlural: 'Dossiernummers',
			Title: {
				Label: 'Dossiernummer ', //A label is possible but it is not considered on the ObjectPage yet
				Value: dossiernummer
			},
			Description: {Value: omschrijving}
		},
	},
) {
	createdAt @UI.HiddenFilter:false;
	createdBy @UI.HiddenFilter:false;
};
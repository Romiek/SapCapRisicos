
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
			TypeName: 'Risico', TypeNamePlural: 'Risicos',
			// Title: {
			// 	Label: 'Dossiernummer', //A label is possible but it is not considered on the ObjectPage yet
			// 	Value: ID
			// },
			// Description: {
			// 	Label: 'Omschrijving ',
			// 	Value: omschrijving
			// }
		},
		Identification: [ //Is the main field group
			{Value: createdBy, Label:'Aangelegd door'},
			{Value: createdAt, Label:'Aangelegd op'},
			{Value: ID },
		],
		HeaderFacets: [
			{$Type: 'UI.ReferenceFacet', Label: '{i18n>Created}', Target: '@UI.FieldGroup#Created'},
			{$Type: 'UI.ReferenceFacet', Label: '{i18n>Modified}', Target: '@UI.FieldGroup#Modified'},
		],
		Facets: [
			{$Type: 'UI.ReferenceFacet', Label: '{i18n>Details}', Target: '@UI.FieldGroup#Details'}
		],
		FieldGroup#Details: {
			Data: [
				{Value: omschrijving, Label:'Omschrijving'},
				{Value: oorzaak, Label:'Oorzaak'},
				{Value: beleidsargument, Label:'Beleidsargument'}
			]
		},
		FieldGroup#Created: {
			Data: [
				{Value: createdBy},
				{Value: createdAt},
			]
		},
		FieldGroup#Modified: {
			Data: [
				{Value: modifiedBy},
				{Value: modifiedAt},
			]
		},
	},
) {
	createdAt @UI.HiddenFilter:false;
	createdBy @UI.HiddenFilter:false;
};
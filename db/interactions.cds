namespace app.interactions;

using { Country } from '@sap/cds/common';
type BusinessKey: String(10);
type SDate: DateTime;
type LText: String(1024);

entity Interaction_Header {
    key ID: Integer;
    ITEMS: Composition of many Interaction_Items on ITEMS.INHeader = $self;
    PARTNER: BusinessKey;
    LOG_DATE: SDate;
    BPCOUNTRY: Country;
}

entity Interaction_Items {
    key INHeader: Association to Interaction_Header;
    key TEXT_ID: BusinessKey;
    LANGU: String(2);
    LOGTEXT: LText;
}


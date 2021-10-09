using app.interactions from '../db/interactions';
service CatalogService {
    entity Interactions_Header as projection on interactions.Interaction_Header;
    entity Interactons_Items as projection on interactions.Interaction_Items;
}
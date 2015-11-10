module ArenaApi
  class Item < Resource
    has_many :bom_items, class_name: BOMItem
    has_many :files, class_name: FileAssociation

    # attribute :additionalAttributes, Array #This is an array of additional attributes. Each additional attribute entry includes a value and apiName. The apiName is used to identify this additional attribute.
    # attribute :category,          String   #REFERENCE: The category to which the item is assigned. Contains guid attribute.
    # attribute :creationDateTime,  DateTime #The date and time an item was created
    # attribute :creator,           String   #REFERENCE: The creator of an item. Contains the attribute fullName.
    # attribute :description,       String   #The description of an item
    # attribute :effectiveDateTime, String   #The date and time the effective revision of an item was made effective.
    # attribute :guid,              String   #The unique identifier for an object
    # attribute :isAssembly,        Boolean  #Indicates whether or not an item is an assembly.
    # attribute :lifecyclePhase,    String   #REFERENCE: Contains the name of the lifecycle phase(e.g. In Design).
    # attribute :name,              String   #The name of an item
    # attribute :modifiedBom,       Boolean  #Indicates whether or not the BOM view of an item contains working modifications.
    # attribute :modifiedFiles,     Boolean  #Indicates whether or not the Files view of an item contains working modifications.
    # attribute :modifiedSourcing,  Boolean  #Indicates whether or not the Sourcing view of an item contains working modifications.
    # attribute :modifiedSpecs,     Boolean  #Indicates whether or not the Specs view of an item contains working modifications.
    # attribute :number,            String   #The number of an item
    # attribute :offTheShelf,       Boolean  #Indicates whether or not an item's Procurement Type is off the shelf.
    # attribute :owner,             String   #REFERENCE: The owner of an item. Contains the attribute fullName.
    # attribute :productionCost,    Float   #The production cost of an item
    # attribute :prototypeCost,     Float   #The prototype cost of an item
    # attribute :revisionNumber,    String   #The revision of an item
    # attribute :shared,            Boolean  #Indicates whether or not an item is shared with suppliers.
    # attribute :standardCost,      Float   #The standard cost of an item
    # attribute :targetCost,        Float   #The target cost of an item
    # attribute :targetPrice,       Float   #The target price of an item
    # attribute :uom,               String   #The unit of measure of an item
  end
end

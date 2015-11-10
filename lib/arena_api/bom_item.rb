module ArenaApi
  class BOMItem < Resource
    set_prefix "/#{API_VERSION}/items/:item_id/"
    set_collection_name 'bom'

    # attribute :additionalAttributes, Array #This is an array of additional attributes. Each additional attribute entry includes a value and apiName. The apiName is used to identify this additional attribute.
    # attribute :creationDateTime,     String #The date and time a BOM Line was created
    # attribute :guid,                 String #REFERENCE: The child item. Contains the attribute guid.
    # attribute :lineNumber,           Integer #The BOM line number of a child item
    # attribute :notes,                String #The BOM Notes of a child item
    # attribute :refDes,               String #The reference designator values of a child item
    # attribute :quantity,             Integer #The quantity of a child item
  end
end

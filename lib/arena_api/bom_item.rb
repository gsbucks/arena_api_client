module ArenaApi
  class BOMItem < Resource
    set_prefix "/#{API_VERSION}/items/:item_id/"
    set_collection_name 'bom'
  end
end

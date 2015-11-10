module ArenaApi
  class Item < Resource
    has_many :bom_items, class_name: BOMItem
    has_many :files, class_name: FileAssociation
  end
end

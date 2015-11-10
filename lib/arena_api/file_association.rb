require 'arena_api/binary_format'

module ArenaApi
  class FileAssociation < Resource
    set_prefix "/#{API_VERSION}/items/:item_id/"
    set_collection_name 'files'

    has_one :file, class_name: File

    def content
      begin
        original_format = self.class.format
        self.class.format = BinaryFormat
        return get(:content)
      ensure
        self.class.format = original_format
      end
    end

    # attribute :file,    String  #REFERENCE: The associated file. See File object.
    # attribute :guid,    String  #The unique identifier for a file association.
    # attribute :primary, Boolean #Indicates whether or not a file is primary (primary files are linked from the main view of objects to which they are associated.)
  end
end


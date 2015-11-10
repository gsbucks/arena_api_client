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
  end
end


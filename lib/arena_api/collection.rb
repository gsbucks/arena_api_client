module ArenaApi
  class Collection < ActiveResource::Collection
    attr_accessor :count
    def initialize(parsed = {})
      @elements = parsed['results']
      @count = parsed['count']
    end
  end
end

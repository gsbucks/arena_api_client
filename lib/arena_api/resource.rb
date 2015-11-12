require 'arena_api/session'
require 'arena_api/collection'

module ArenaApi
  class Resource < ::ActiveResource::Base
    set_prefix "/#{API_VERSION}/"
    self.site = 'https://api.arenasolutions.com'
    self.include_format_in_path = false
    self.collection_parser = Collection

    alias_attribute :id, :guid

    def self.headers
      { 'arena_session_id' => session_token }
    end

    def self.session_token
      (@@session ||= Session.create).token
    end

  end
end

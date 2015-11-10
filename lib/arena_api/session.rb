require 'virtus'
require 'rest-client'

module ArenaApi
  class Session
    include Virtus.model

    attribute :arenaSessionId, String
    attribute :workspaceId, Integer
    attribute :workspaceName, String
    attribute :workspaceRequestLimit, Integer

    alias_attribute :token, :arenaSessionId

    def self.create
      resp = RestClient.post(
        URI.join(Resource.site, Resource.prefix, 'login').to_s,
        login_params.to_json,
        content_type: :json, accept: :json
      )

      new(JSON.parse(resp))
    rescue RestClient::BadRequest => e
      raise ArenaApi::BadRequest,
        'Arena could not handle request. Ensure API is enabled and sent parameters match API',
        e.inspect
    end

    private

    def self.login_params
      {
        email: Configuration.email,
        password: Configuration.password,
        workspaceId: Configuration.workspace
      }
    end
  end
end

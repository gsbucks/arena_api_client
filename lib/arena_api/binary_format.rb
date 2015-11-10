module ArenaApi
  module BinaryFormat
    extend self

    def extension
      ''
    end

    def mime_type
      'application/json'
    end

    def encode(hash, options = nil)
      raise ArgumentError, 'PDF submission not supported'
    end

    def decode(content)
      content
    end
  end
end


require "sentinelli/version"

module Sentinelli


  class Error < StandardError; end
  # Your code goes here...

  class Sentinelli

    def self.new(org_key)
      @organization_key = org_key
      @url = 'https://localhost:3000/'
    end

    def self.set_key(org_key)
      @organization_key = org_key
    end

    def self.send_error(error_data)
      Timeout::timeout(0.5) do
        url = @url + 'registeredError'
        response = RestClient.post url, error_data,
                                  'access_key': @organization_key
        puts response.body
      end
    rescue Timeout::Error
      puts 'Theres a problem with the connection.... retry later.'
    end
  end
end

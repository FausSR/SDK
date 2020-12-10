require "sentinelli/version"
require 'rest-client'

module Sentinelli

  class SentinelliReport

    def self.new(org_key)
      @organization_key = org_key
      @url = 'http://localhost:3000/'
    end

    def self.set_key(org_key)
      @organization_key = org_key
    end

    def self.send_error(error_data)
      Timeout::timeout(0.5) do
        url = @url + 'registeredError'
        response = RestClient.post url, error_data,
                                  'access_key': @organization_key
        json_response = JSON.parse(response.body)

        if(json_response["status"] == 200)
            puts json_response["message"]
        else
            raise SentinelliReportException.new(json_response["message"])
        end
      rescue RestClient::ExceptionWithResponse => err
        raise SentinelliReportException.new(err.message)
      end
    rescue Timeout::Error
      raise SentinelliReportException.new("There was a problem connecting to the API")
    end
  end

  private

  class SentinelliReportException < StandardError
    def initialize(data)
      @data = data
    end
    def self.message
      @data
    end
  end



end
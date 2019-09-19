require 'rest-client'

class Api::External
    def self.get(url)
        response = RestClient.get(url)
        json_response(response.body, response.code)
    end    

    def self.json_response(body, status)
        data = JSON.parse(body)
        {
            status: status,
            data: data
        } 
    end
end
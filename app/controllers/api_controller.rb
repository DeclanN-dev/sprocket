class ApiController < ApplicationController
    def index
        key = Rails.application.credentials.api_key
        response = HTTParty.get("http://api.weatherapi.com/v1/current.json", query: { q: params[:query], key: key }, headers: { "Content-Type" => "application/json" })
        puts response.code
        @current = JSON.parse(response.body)["current"]
        @location = JSON.parse(response.body)["location"]
    end
end

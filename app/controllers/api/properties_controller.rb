class Api::PropertiesController < ApplicationController
  def index
    render jsonapi: properties
  end

  private

  def properties
    @properties ||= client.properties
  end

  def client
    @client ||= EasyBroker::Client.new(api_key: ENV["EASYBROKER_API_KEY"])
  end
end

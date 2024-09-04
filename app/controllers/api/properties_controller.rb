class Api::PropertiesController < ApplicationController
  def index
    respond_to do |format|
      format.json { render json: EasyBrokerPropertySerializer.new(properties).serializable_hash }
    end
  end

  private

  def properties
    @properties ||= client.properties
  end

  def client
    @client ||= EasyBroker::Client.new(api_key: ENV["EASYBROKER_API_KEY"])
  end
end

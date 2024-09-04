class EasyBroker::Client
  def initialize(api_key:)
    @api_key = api_key
  end

  def properties
    api.get_properties.try(:[], "content")&.map do |property_attrs|
      EasyBroker::Property.new(property_attrs)
    end || []
  end

  private

  def api
    @api ||= EasyBroker::Api.new(api_key: @api_key)
  end
end

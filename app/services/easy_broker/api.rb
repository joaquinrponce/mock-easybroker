class EasyBroker::Api
  def initialize(api_key:)
    @api_key = api_key
  end

  def get_properties
    send_request do
      connection.get("properties")
    end
  end

  private

  def base_url
    ENV["EASYBROKER_API_URL"]
  end

  def send_request(&block)
    response = yield
    if response.success?
      JSON.parse(response.body)
    else
      nil
    end
  end

  def connection
    @conn ||= Faraday.new(
      url: base_url,
      headers: {
        "X-Authorization": @api_key,
        'accept': "application/json"
      }
    )
  end
end

describe Api::PropertiesController, type: :controller do
  def parsed_body
    JSON.parse(response.body)
  end

  describe "index" do
    let(:properties) { [ build(:easy_broker_property), build(:easy_broker_property) ] }

    before do
      allow(EasyBroker::Client).to receive(:new).and_return(double(properties: properties))
      get :index, format: :json
    end

    let(:property_keys) { %w[public_id title title_image_full title_image_thumb location operations bedrooms bathrooms parking_spaces property_type lot_size construction_size updated_at agent show_prices share_commission] }

    it "renders a list of properties" do
      expect(response.status).to eq(200)
      expect(parsed_body["data"].first["attributes"].keys).to match_array(property_keys)
    end
  end
end

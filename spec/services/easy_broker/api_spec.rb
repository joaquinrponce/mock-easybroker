describe EasyBroker::Api do
  let(:api_key) { "some_key" }

  subject { described_class.new(api_key: api_key) }
  context "#get_properties" do
    let(:properties_keys) { %w[public_id title title_image_full title_image_thumb location operations bedrooms bathrooms parking_spaces property_type lot_size construction_size updated_at agent show_prices share_commission] }

     it "returns an array of properties" do
      VCR.use_cassette("easy_broker_properties") do
        expect(subject.get_properties["content"].first.keys).to match_array(properties_keys)
      end
    end
  end
end

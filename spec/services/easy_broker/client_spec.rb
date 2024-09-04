describe EasyBroker::Client do
  let(:api_key) { "some_key" }

  subject { described_class.new(api_key: api_key) }

  context "#properties" do
    let(:property_1_title) { Faker::Lorem.words(number: 6) }
    let(:property_1_id) { Faker::Alphanumeric.alphanumeric(number: 10, min_alpha: 3) }
    let(:property_1_location)  { Faker::Address.secondary_address }
    let(:property_1) {
      {
        title: property_1_title,
        public_id: property_1_id,
        location: property_1_location
      }
    }

    let(:property_2_title) { Faker::Lorem.words(number: 6) }
    let(:property_2_id) { Faker::Alphanumeric.alphanumeric(number: 10, min_alpha: 3) }
    let(:property_2_location)  { Faker::Address.secondary_address }
    let(:property_2) {
      {
        title: property_2_title,
        public_id: property_2_id,
        location: property_2_location
      }
    }

    let(:properties) { [ property_1, property_2 ] }
    let(:response) {
      {
        "content" => properties
      }
    }

    before do
      allow_any_instance_of(EasyBroker::Api).to receive(:get_properties).and_return(response)
    end

    it "returns an array of Property objects" do
      expect(subject.properties.length).to eq(2)
      expect(subject.properties.first.title).to eq(property_1_title)
      expect(subject.properties.last.title).to eq(property_2_title)
    end
  end
end

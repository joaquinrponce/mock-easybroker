class EasyBroker::Property
  include ActiveModel::API

  attr_accessor :agent, :public_id, :title, :title_image_full, :title_image_thumb, :bedrooms, :bathrooms, :parking_spaces, :location, :property_type, :updated_at, :show_prices, :share_commission, :operations, :lot_size, :construction_size
end

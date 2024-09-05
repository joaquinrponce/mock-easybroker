export interface PropertyAttributes {
  title: string
  public_id: string
  agent: string
  bedrooms: number
  bathrooms: number
  parking_spaces: string
  construction_size: number
  title_image_thumb: string
  title_image_full: string
  operations: Operation[]
  location: string
}

interface Operation {
  type: string
  amount: number
  formatted_amount: string
}

export interface PropertyData {
  id: string
  type: string
  attributes: PropertyAttributes
}
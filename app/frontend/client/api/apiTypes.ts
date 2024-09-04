export interface PropertyAttributes {
  title: string
  public_id: string
  agent: string
  bedrooms: number
  bathrooms: number
}

export interface PropertyData {
  id: string
  type: string
  attributes: PropertyAttributes
}
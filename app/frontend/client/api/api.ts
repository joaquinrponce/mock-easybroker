import { PropertyData } from "./apiTypes"

export const getProperties = async(): Promise<PropertyData[]> => {
  const response = await fetch('api/properties', {
    method: "GET",
  })
  const json = await response.json()
  return json.data
}
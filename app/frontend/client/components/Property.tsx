import React from 'react'
import { PropertyAttributes } from '../api/apiTypes'

export const Property = ( { agent, title, bedrooms, bathrooms }: PropertyAttributes) => {
  return(
    <div>
      <div>{agent}</div>
      <div>{title}</div>
      <div>{bedrooms}</div>
      <div>{bathrooms}</div>
    </div>
  )
}
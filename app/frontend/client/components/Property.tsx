import '../styles/Property.css'
import { PropertyAttributes } from '../api/apiTypes'
import bath from '../assets/bath-solid.svg'
import bed from '../assets/bed-solid.svg'
import car from '../assets/car-solid.svg'
import cube from '../assets/cube-solid.svg'
import user from '../assets/user.svg'

export const Property = ( { agent, public_id, title, bedrooms, bathrooms, title_image_full, operations, location, parking_spaces, construction_size }: PropertyAttributes) => {
  const facingOperation = operations.find(operation => operation.type === "sale") || operations[0]
  const operationDisplay = facingOperation.type === "sale" ? "EN VENTA" : "EN RENTA"
  return(
    <div className="property">
      <div className="top" style={{backgroundImage: `url(${title_image_full})`}}> 
      </div>
      <div className="bottom">
        <div className="public-id">{public_id}</div>
        <div className="title">{title}</div>
        <div className="pricing">
          <div className="price">{facingOperation.formatted_amount}</div>
          <div className="status">{operationDisplay}</div>
        </div>
        <div className="address">{location}</div>
        <div className="amenities">
          { bedrooms && <div className="bedrooms">
            <img src={bed} className="icon"/>
            {bedrooms}
          </div> }
          { bathrooms && <div className="bathrooms">
            <img src={bath} className="icon"/>
            {bathrooms}
          </div> }
          { parking_spaces && <div className="parking">
            <img src={car} className="icon"/>
            {parking_spaces}
          </div> }
          { construction_size && <div className="size">
            <img src={cube} className="icon"/>
            {construction_size}m2
          </div> }
        </div>
        <div className="agent">
          <img src={user} className="icon"/>
          {agent}
        </div>
      </div>
    </div>
  )
}
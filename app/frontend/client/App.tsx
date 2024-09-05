import { useEffect, useState } from 'react'
import { getProperties } from './api/api'
import { Property } from './components/Property';
import { PropertyData } from './api/apiTypes';
import { Header } from './components/Header';
import "./styles/Properties.css"
import "./styles/reset.css"

function App() {
  const [properties, setProperties] = useState<PropertyData[]>([]);

  useEffect(() => {
    const getData = async () : Promise<void> => {
      const newProperties = await getProperties()
      setProperties(newProperties)
    }
    getData()
    return () => setProperties([]);
  }, [])

  return (
    <div>
      <Header/>
      <div className="properties">
        {properties.map(property => <Property key={property.id} {...property.attributes}/>)}
      </div>
    </div>
  )
}

export default App

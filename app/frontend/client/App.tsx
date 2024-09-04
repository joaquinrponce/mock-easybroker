import React, { useEffect, useState } from 'react'
import { getProperties } from './api/api'
import { Property } from './components/Property';
import { PropertyData } from './api/apiTypes';

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
    <>
      <div>
      </div>
      <h1>Easybroker</h1>
      {properties.map(property => <Property key={property.id} {...property.attributes}/>)}
    </>
  )
}

export default App

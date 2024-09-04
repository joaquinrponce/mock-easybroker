import React, { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import App from './App.tsx'

document.addEventListener('DOMContentLoaded', () => {
  createRoot(document.getElementById('react-app-root')!).render(
    <StrictMode>
      <App />
    </StrictMode>,
)});

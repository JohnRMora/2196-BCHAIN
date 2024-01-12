import React from 'react';
import './app.css';
import Demo1 from './components/Conditional-Demo-1.jsx';
import Demo2 from './components/Conditional-Demo-2.jsx';
import Demo3 from './components/Conditional-Demo-3.jsx';
import Demo4 from './components/Conditional-Demo-4.jsx';


export default function App() {
  return (
    <div>
      <h1>Demo 1</h1>
      <Demo1 />
      <h1>Demo 2</h1>
      <Demo2 
        isRainy={false} 
      />
      <h1>Demo 3</h1>
      <Demo3
        isRainy={false}
      />
      <h1>Demo 4</h1>
      <div>
        <Demo4 isRainy = {true}/>
      </div>
    </div>
  );
}

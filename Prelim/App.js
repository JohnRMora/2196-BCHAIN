import React from 'react';
import './style.css';
import Reveal from './components/reveal.jsx';

export default function App() {

  
  return (
    <div>
      <h1>The Bible Quiz</h1>
      <p>The Bible consists of the Old and New Testaments.</p>
      <Reveal choice = {true}/>
      <p>Moses led the Israelites out of Egypt.</p>
      <Reveal choice = {true}/>
      <p>The sermon on the Mount is found in the Book of Luke.</p>
      <Reveal choice = {false}/>
    </div>
  );
}

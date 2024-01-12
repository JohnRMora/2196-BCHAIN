import React from 'react';

function Rainy(){
    
  return <p>Bring your umbrella!</p>;
}

function Sunny(){
  return <p>Bring your sunglasses!</p>;
}
const isRainy = true;

function RainOrShine(props) {
  const isRainy = props.isRainy;
  return isRainy ? <Rainy /> : <Sunny />;
}

export default RainOrShine;
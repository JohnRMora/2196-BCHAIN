import React from 'react';

function Rainy (){
  return (
    <p>Bring your umbrella!</p>
  );
}

function Sunny (){
  return(
    <p>Bring your sunglasses!</p>
  );
}

function RainOrShine(props){
  const isRainy = props.isRainy;
  if (isRainy){
    return(
      <Rainy />
    );
  }
  return (
    <Sunny />
  );
}

export default RainOrShine;
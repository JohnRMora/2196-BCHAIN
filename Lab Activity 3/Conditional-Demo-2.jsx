import React from 'react';

function Rainy(){
  return(
    <p>Bring your umbrella!</p>
  );
}

function RainOrShine(props){
  const isRainy = props.isRainy;
  if(isRainy){
    return(
      <Rainy/>
    );
  }
  return (
    <p>No rain today!</p>
  );
}

export default RainOrShine;
import React from 'react';


function TrueOrFalse(props){
  var choice = props.choice;

    if (choice == true){
      return(
        <p class = 'true'>Correct!</p>
      );
    }
    else if (choice == false){
      return(
        <p class= 'false'>Incorrect!</p>
      );
    }
}

export default TrueOrFalse;
import React from 'react'
import './MovieList.css'

class movieList extends React.Component {
    render() {
        return (
            <div class = "MovieListDesign">
                <h3>Movie List</h3>
                <ol>
                    <li>Avengers</li>
                    <li>Avatar</li>
                    <li>Thor</li>
                </ol>
            </div>
        );
    }
}

export default  movieList;
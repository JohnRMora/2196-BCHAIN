import React from 'react'
import './BookList.css'

class bookList extends React.Component {
    render() {
        return (
            <div class = "BookListDesign">
                <h3>Book List</h3>
                <ol>
                    <li>Lord of the Rings</li>
                    <li>Pride and Prejudice</li>
                    <li>To Kill a Mockingbird</li>
                </ol>
            </div>
        );
    }
}

export default  bookList;
import React from 'react'
import './TodoList.css'

class todoList extends React.Component {
    render() {
        return (
            <div  class = "TodoListDesign">
                <h3>Todo List</h3>
                <ol>
                    <li>Clean Portch</li>
                    <li>Wash Car</li>
                    <li>Attend BCHAIN Class</li>
                </ol>
            </div>
        );
    }
}

export default  todoList;
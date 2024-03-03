// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

import "./StructsDemo2Declaration.sol";

contract StructDemo2Todos {
    StructDemo2Declaration.Todo[] public todos;

    // Add a new todo
    function addTodo(string memory _text, bool _completed) public {
        StructDemo2Declaration.Todo memory newTodo;
        newTodo.text = _text;
        newTodo.completed = _completed;
        todos.push(newTodo);
    }
 
    // Display all todos
    function getTodos() public view returns (StructDemo2Declaration.Todo[] memory) {
        return todos;
    }
}

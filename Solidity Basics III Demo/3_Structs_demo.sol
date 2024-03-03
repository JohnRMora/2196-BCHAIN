// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract StructDemo {
    struct Car {
        string model;
        uint year;
        address owner;
    }
    Car public car;
    Car[] public cars;
    mapping(address => Car[]) public carsByOwner;

    function someApplications() external {
        Car memory toyota = Car("Toyota", 1990, msg.sender);
        Car memory lambo = Car({year:1980, model:"lamborghini", owner:msg.sender});
        Car memory tesla;

        tesla.model = "Tesla";
        tesla.year = 1983;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        cars.push(Car('Ferrari', 2020, msg.sender));

        Car storage _car = cars[0];
        _car.year = 1990;
        delete _car.owner;

        delete cars[1];
    }

    // Add car to the array of cars
    function addCar(string memory _model, uint _year, address _owner) public {
        Car memory newCar = Car(_model, _year, _owner);
        cars.push(newCar);
    }

    // Function to delete a car
    function deleteCar(uint index) public {
        cars[index] = cars[cars.length - 1];
        cars.pop();
    }
}

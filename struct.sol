// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract myStruct{
    struct  Car{
        string model;
        uint256 year;
        address owner;
    }
    Car public car;
    Car[] public cars;
    mapping (address=>Car) public CarsByOwner;
    function examples() external{
        Car memory audi=Car("audi",2019,0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        Car memory bmw=Car({model:"bmw",year:2019,owner:0x5B38Da6a701c568545dCfcB03FcB875f56beddC4});
        Car memory tesla;
        tesla.model="Tesla";
        tesla.year=2019;
        tesla.owner=0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
        cars.push(audi);
        cars.push(bmw);
        cars.push(tesla);
        cars.push(Car("benz",2020,0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2));

        Car storage _car= cars[0];
        _car.year=2023;
        delete cars[1];
    }
    

}

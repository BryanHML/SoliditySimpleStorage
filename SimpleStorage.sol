// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

contract SimpleStorage{
    uint256 myFavouriteNumber = 10;

    // custom data type person
    struct Person{
        uint256 favouriteNumber;
        string name;
    }

    // Place to store different people
    Person[] public listofPeople;

    // mapping name to favourite number to make searching for the person easier 
    mapping(string => uint256) public nameToFavouriteNumber;

    //function that adds a person to the listofPeople array
    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        listofPeople.push(Person(_favouriteNumber, _name));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }

    // function to change favourite number 
    function store(uint256 _favouriteNumber) public {
        myFavouriteNumber = _favouriteNumber;
    }

    //function to retrieve favourite number 
    function retrieveNumber() public view returns (uint256) {
        return myFavouriteNumber;
    }
}
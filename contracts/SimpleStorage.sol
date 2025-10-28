// SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;


contract SimpleStorage {
    
    uint256  myFavoriteNumber = 0;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    mapping(string => uint256) public nameToFavoriteNumber;
    Person[] public listOfPeople;

    function store(uint256 _favoriteNumber) public virtual{
        myFavoriteNumber = _favoriteNumber;
    }

    // view, pure doesn't cost gas as long as the functions aren't inside another running function
    function retrieve() public view returns (uint256){
        return myFavoriteNumber;
    }

    // memory, calldata, storage
    function addNewPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}



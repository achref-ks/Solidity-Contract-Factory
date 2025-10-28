// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {SimpleStorage} from "contracts/SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage{

    function store(uint256 _FavoriteNumber) public override {
        myFavoriteNumber = _FavoriteNumber + 5;
    }

}
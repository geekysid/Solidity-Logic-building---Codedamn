// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract EnumHouse{
    enum House { SMALL, MEDIUM, LARGE }

    House house;

    function setLarge() public {
        house = House.LARGE;
    }

    function getChoice() public view returns(House) {
        return house;
    }
}
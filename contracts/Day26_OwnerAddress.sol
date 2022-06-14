// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OwnerAddress {
    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier isOwner() {
        require(msg.sender == owner, "You are not the owner");
        _;
    }

    function returnOwner() public isOwner view returns (address) {
        return owner;
    }
}
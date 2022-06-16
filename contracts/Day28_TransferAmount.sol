//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract AmountTransfer {
    address owner;

    constructor() {
        owner = msg.sender;
    }

    function send(address[] memory addresses, uint[] memory amount) payable public {
        require(owner == msg.sender, "You are not the owner");
        require(addresses.length == amount.length, "to must be same length as amount");

        for(uint i; i<addresses.length; i++) {
            payable(addresses[i]).transfer(amount[i]);
        }
    }
}
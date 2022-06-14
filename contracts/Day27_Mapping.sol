// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mapping {
  mapping(address => uint256) balance;

    function updateBalance(uint _balance) public {
        balance[msg.sender] = _balance;
    }

    function checkBalance(address _user) public view returns(uint){
        require(_user == msg.sender, "You are not the owner of the account");
        return balance[msg.sender];
    }
}
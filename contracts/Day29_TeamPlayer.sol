//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract TeamPlayers {
    address[16] teamPlayers;

    function getTeamPlayers() public view returns(address[16] memory){
        return teamPlayers;
    }

    function selectJerseyNumber(uint _index) public view returns (address){
        require(_index>=0 && _index<16, "Invalid argument value");
        return teamPlayers[_index];
    }
}

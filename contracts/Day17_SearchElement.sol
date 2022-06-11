// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SearchElement {
    function search(uint[] memory _array, uint _arrayLength, uint _serachEl) public pure returns (uint _searchResult) {
        for (uint i=0; i<_arrayLength; i++) {
            if (_serachEl == _array[i]) {
                _searchResult = 1;
                break;
            }
        }
    }
}

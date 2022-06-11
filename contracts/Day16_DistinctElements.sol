// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DistinctElements {
    function distinct(uint[] memory _array, uint _arrayLength) public pure returns (uint distinctCount) {
        for (uint i=0; i<_arrayLength; i++) {
            uint curEl = _array[i];
            bool duplicate = false;

            for (uint j=i+1; j<_arrayLength; j++) {
                if (_array[j] == curEl){
                    duplicate  = true;
                    break;
                }
            }

            if (!duplicate) {
                distinctCount += 1;
            }
        }
    }
}
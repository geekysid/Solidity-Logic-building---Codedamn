//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

contract StringConcatenate {
   function concatenate(string memory _text1, string memory _text2) public pure returns(string memory result){
        result = string.concat(_text1, _text2);
    }
}

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract StudentStruct{

    struct Student {
        string name;
        uint256[3] marks;
    }

    Student student;

    function set(string memory _name, uint256 _maths, uint256 _science, uint256 _english) public {
        student = Student({
            name: _name,
            marks: [_maths, _science, _english]
        });
    }

    function get() public view returns (string memory _name, uint256 _maths, uint256 _science, uint256 _english){
        _name = student.name;
        _maths = student.marks[0];
        _science = student.marks[1];
        _english = student.marks[2];
    }
}
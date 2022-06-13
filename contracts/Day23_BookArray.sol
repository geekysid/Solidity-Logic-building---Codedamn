// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract BookArray {
    struct Book {
        string title;
        string author;
        uint256 book_id;
    }

    Book[] books;
    uint256 counter = 1;

    function setBook(string memory _title, string memory _author, uint256 _id) public {
        books.push(Book({
            title: _title,
            author: _author,
            book_id: _id
        }));
    }

    function getBook(uint _id) public view returns (string memory _title, string memory _author, uint256 book_id){
        for (uint256 i; i<books.length; i++){
            if (books[i].book_id == _id) {
                _title = books[i].title;
                _author = books[i].author;
                book_id = books[i].book_id;
                break;
            }
        }
    }
}

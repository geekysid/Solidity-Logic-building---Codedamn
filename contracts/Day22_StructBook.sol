// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract StructBook {
    struct Book {
        string title;
        string author;
        uint256 book_id;
    }
    Book book;

    function setBook(string memory _title, string memory _author, uint256 _id) public {
        book = Book({
            title: _title,
            author: _author,
            book_id: _id
        });
    }

    function getBook() public view returns (string memory _title, string memory _author, uint256 _id){
        _title = book.title;
        _author = book.author;
        _id = book.book_id;
    }
}

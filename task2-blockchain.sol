// SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

contract Salutation {
    string public word; 
    string public salutationPre = "Hello, World";

    constructor(string memory firstWord) {
        word = firstWord;
    }

    function setWord(string memory lastWord) public {
        word = lastWord;
    }

    function getSalutation() public view returns (string memory) {
        return string(abi.encodePacked(salutationPre, word));
    }
}

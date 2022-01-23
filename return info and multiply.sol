// SPDX-License-Identifier: UNLICENSED"
pragma solidity ^0.8.7;


contract AboutMe {
    uint to_multiply = 2;

    function user__info__multiply(uint value) public view returns (string memory firstname, string memory lastname, uint number, uint age, uint result) {
        return (firstname = "Dema", lastname = "Bender", number = 7, age = 23, result = value * to_multiply);
    }
}

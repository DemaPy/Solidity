// SPDX-License-Identifier: UNLICENSED"
pragma solidity ^0.8.7;

//You can use 1 function to return it all
contract AboutMe {
    uint to_multiply = 2;

    function multiply(uint x) public view returns (uint) {
        return x * num_to_mulyiply
    }

    function user__info__multiply(uint value) public view returns (string memory firstname, string memory lastname, uint number, uint age, uint result) {
        return (firstname = "Dema", lastname = "Bender", number = 7, age = 23, result = value * to_multiply);
    }
}

//Or even devide it on 2 func
contract AboutMe {
    uint to_multiply = 2;

    function multiply(uint x) public view returns (uint) {
        return x * num_to_mulyiply
    }

    function MyInfo() public pure returns (string memory second_firstname, string memory second_lastname, uint second_age, uint second_number) {
        second_firstname = "Dema";
        second_lastname = "Bender";
        second_age = 74;
        second_number = 7;
    }
}

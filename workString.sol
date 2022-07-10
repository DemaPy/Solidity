// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;


contract Name {
   string question = "Are you dolboebik";
   string hi = "Hello ";
   string surname = "";
   string myname = "Dema";

   function convertToStr(string memory _word) internal pure returns (bytes32) {
       return keccak256(bytes(_word));
   }

    function concat(string memory _word1,string memory _word2) internal pure returns (string memory) {
       return string(abi.encodePacked(_word1," ",_word2));
   }

    function setSurname(string memory _surname) public returns(string memory) {
        return surname = _surname;
    }

   function YourName(string memory _name) public view returns (string memory) {
       return convertToStr(_name) == convertToStr(myname) ?
        string(abi.encodePacked(hi, concat(_name, surname),"!")) :
        string(abi.encodePacked(concat(question,_name),"?"));
   }
}

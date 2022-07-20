//// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

interface ICake {
    function balanceOf(address owner) external view returns (uint);
}

contract GetBalance {
    address private constant c = 0x7Fcc8632377ff18d8FB8A0964D5C11441E78f714;

    function balanceOf(address owner) external view returns (uint) {
        return ICake(c).balanceOf(owner);
    }
}

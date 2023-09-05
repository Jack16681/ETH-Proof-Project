// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract My_Token {
    string public name = "OMKAR";
    string public symbol = "OK";
    uint8 public decimals = 8;
    uint256 public totalSupply = 0; // Total supply with 8 decimal places

    mapping(address => uint256) public balanceOf;

    event Mint(address indexed to, uint256 value);
    event Burn(address indexed from, address indexed to, uint256 value); // Added 'to' address attribute

    constructor() {
        balanceOf[msg.sender] = totalSupply;
    }

    function mint(address to, uint256 value) public {
        totalSupply += value;
        balanceOf[to] += value;
    }

    function burn(address from, uint256 value) public  {
        require(balanceOf[from] >= value, "Insufficient balance for burning");
        
        balanceOf[from] -= value;
        totalSupply -= value;
        emit Burn(from, address(0), value); // Burning tokens by sending them to address(0)
    }
}

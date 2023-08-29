// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyToken {
    string public name = "OMKAR";
    string public symbol = "OK";
    uint8 public decimals = 8;
    uint256 public totalSupply = 0; // Total supply with 18 decimal places

    mapping(address => uint256) public balanceOf;

    event Mint(address indexed to, uint256 value);
    event Burn(address indexed from, uint256 value);

    constructor() {
        balanceOf[msg.sender] = totalSupply;
    }

    function mint(address to, uint256 value) public returns (bool) {
        totalSupply += value;
        balanceOf[to] += value;
        emit Mint(to, value);
        return true;
    }

    function burn(uint256 value) public returns (bool) {
        require(balanceOf[msg.sender] >= value, "Insufficient balance for burning");
        
        balanceOf[msg.sender] -= value;
        totalSupply -= value;
        emit Burn(msg.sender, value);
        return true;
    }
}

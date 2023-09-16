// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract My_Token {
    string public name = "OMKAR";
    string public symbol = "OK";
    uint public totalSupply = 0;

    mapping(address => uint) public balanceOf;

    function mint(address to, uint value) public {
        totalSupply += value;
        balanceOf[to] += value;
    }

    function burn(address to, uint value) public {
        if (balanceOf[to] >= value) {
	    totalSupply -= value;
            balanceOf[to] -= value;
        }
    }
}

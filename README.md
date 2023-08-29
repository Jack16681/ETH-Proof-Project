# Hello World

This Solidity program is a simple program that demonstrates the basic syntax and functionality of the Solidity programming language. The purpose of this program is to serve as a starting point for those who are new to Solidity and want to get a feel for how it works.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has simple functions that creates adds and deletes the total no of coins on the network. This program serves as a simple and straightforward introduction to Solidity programming, and can be used as a stepping stone for more complex projects in the future.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., My_Token.sol). Copy and paste the following code into the file:

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


To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile My_Token.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "My_Token" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the mint and burn function. Click on the "My_Token" contract in the left-hand sidebar, and then click on the "mint" or "burn" function. Finally, click on the "transact" button to execute the function and retrieve the desired result.

## Authors

Omkar Kawadghare


## License

This project is licensed under the MIT License - see the LICENSE.md file for details

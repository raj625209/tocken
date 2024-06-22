# RoyalToken
This Solidity program is a simple token contract that demonstrates the basic functionality of creating and managing a custom cryptocurrency token on the Ethereum blockchain. The purpose of this program is to serve as an example for those who are new to Solidity and want to understand how to create, mint, and burn tokens.

## Description
This program is a basic contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract, named RoyalToken, includes functionalities for minting new tokens and burning existing tokens. It tracks the total supply of the token and the balance of each account that holds the token.

## Getting Started
### Executing Program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at Remix.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., RoyalToken.sol). Copy and paste the following code into the file:

```javascript
pragma solidity >=0.6.12 <0.9.0;

// SPDX-License-Identifier: MIT

contract RoyalToken {

    // public variables here

    string public tokenName = "RoyalCoin";
    string public tokenSymbol = "RYL";
    uint public totalSupply = 0;

    // mapping variable here

    mapping(address => uint) public balanceOf;

    // mint function

    function issue(address _account, uint _amount) public {
        totalSupply += _amount;
        balanceOf[_account] += _amount;
    }

    // burn function

    function destroy(address _account, uint _amount) public {
        require(balanceOf[_account] >= _amount, "Insufficient balance to destroy");
        totalSupply -= _amount;
        balanceOf[_account] -= _amount;
    }
}
```
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to a compatible version (e.g., 0.6.12 to 0.8.9), and then click on the "Compile RoyalToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the RoyalToken contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the issue and destroy functions. Click on the RoyalToken contract in the left-hand sidebar, and then interact with the available functions to mint (issue) and burn (destroy) tokens.

## Authors
Prince Ranjan


## License
This project is licensed under the MIT License .

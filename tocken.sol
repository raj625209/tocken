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
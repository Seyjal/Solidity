// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


contract myToken{
    string public tokenName="conda";
    string public tokenAbbre="cd";
    uint256 public totalSupply=500;

mapping (address => uint) public balances;

function mint(address user,uint256 value) public{
    totalSupply+=value;
    balances[user]+=value;
}
function burn(address user,uint256 value) public{ 
    require(balances[user] >= value,"you cannot proceed futher");
    totalSupply-=value;
    balances[user]-=value;
}
}
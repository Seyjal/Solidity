### Create a token with Solidity

This Solidity program uses some basic concepts of the Solidity programming language such as mappings, variables, functions and conditional statements. The goal of this program is to implement what we have learnt as beginners.

### Description

The MyToken contract is an Ethereum token contract written in Solidity and is very simple in nature. This allows you to create and issue custom tokens, such as creating a new token or writing an existing token.

The key elements of this agreement are::

1. **Token name:** A string variable that holds the name of the token.

2. **Token Abbreviation:** A string variable that holds the abbreviation of the specified token.

3. **Total Supply:** uint256 variables Track all available tokens at any time.

4. **Balances:** Mapping linking Ethereum addresses with their corresponding token balances.

There are 2 main features in this contract:

1. **Mint:** A function that gives permissioned users the ability to make new coins and send them to an ethereum address which results in increasing both the recipient’s balance as well as the overall supply of token.

2. **Burn:** The latter one is employed by authorized individuals for eliminating a portion of coins from circulation after checking whether he has been authenticated successfully or not, updating his account with it, and affecting general supply in the market space.


### Run the program

To run this program, you can use Remix, an online Solidity IDE.  https://remix.ethereum.org/.

Once you have visited the Remix website, click the "+" icon in the left sidebar to create a new file. Save the file in .sol extension (e.g. CreateAToken.Sol). Copy and paste the following code into a file:

```javascript
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
```

To compile the code, click the Solidity Compiler tab in the left sidebar. Make sure the "Compiler" option is set to "0.8.0" (or another compatible version) and click Compile "CreateAToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking the Deploy & Run Transactions tab in the left sidebar. Select the "CreateAToken" contract from the drop-down menu and click the "Deploy" button.

How to interact with contract functions:

**Mint:** This mint() function enables authorized users to create new tokens and distribute them to particular Ethereum addresses. It will update the recipient’s balance and the total supply of coins.

**Burn:** The burn() method allows an authorized user to delete any token on the system. Initially, this function verifies whether this user has adequate writeable tokens, which changes both balance and total supply values.

Accessing Contract Variables

1.**Token Name :** To access the tokenName variable in order to obtain the name of the token.

2.**Token Shorthand :** To find out what is shorthand for this token you should check out the tokenAbbrv variable.

3. **Total Supply:** You can get access to totalSupply variable in order to know how many tokens are currently in circulation.

4. **Balance:** Token balance for a specific Ethereum address can be obtained by accessing this mapping balance.

### Author
Seyjal Khatri

## License

The project is licensed under the MIT license.LICENSE.md Please see the file for details.

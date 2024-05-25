# Token Supply:

This Solidity program is like a playground for creating and destroying tokens. It's a simple demonstration of how you can manage virtual tokens.This Solidity program serves as a basic demonstration of token creation and destruction functionalities.
It's like playing with virtual coins! We can create more coins and give them to our friends, or We can take coins out of circulation if you don't need them anymore.

# Description:
This Solidity program showcases a fundamental token system, enabling the creation and removal of virtual tokens. Named "MYToken," it monitors the overall token supply and individual address balances. The `mint` function generates new tokens and allocates them to a designated address, thus augmenting the total supply. Conversely, the `burn` function deducts tokens from a specified address, thereby reducing both the total supply and the address's balance. With straightforward functionalities, users can simulate token issuance and depletion within this simulated environment.

# Getting started
# Requirement:
1. The code starts by defining basic information about the token, like its name, symbol, and initial supply.
 
2. It maintains a record of how many tokens each person has using a list.
3. There's a way to add more tokens to the system, like printing new money, and give them to someone.
4. Also, there's a way to remove tokens from the system, like taking money out of circulation, but only if the person has enough to give up.
5. It checks to make sure nobody can take away more tokens than they have, keeping the system secure and fair. 

#Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g.MYTOKEN ). Copy and paste the following code into the file:


    // SPDX-License-Identifier: MIT pragma solidity ^0.8.0;
    
    contract MYToken {
    // Public variable to store details about the token
    string public tokenName = "Token";
    string public tokenAbbrv = "TKN";
    uint256 public totalSupply = 0;

    // Mapping to store balance of addresses
    mapping(address => uint256) public balances;

    // Mint function to create new tokens
    function mint(address _address, uint256 _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    // Burn function to destroy tokens
    function burn(address _address, uint256 _value) public {
        require(balances[_address] >= _value, "Balance too low to burn tokens");
        totalSupply -= _value;
        balances[_address] -= _value;
    }
    }
    //Address for testing purpose: 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4


To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. 
Make sure the "Compiler" option is set to "0.8.0" (or another compatible version), and then click on the "Compile MYToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MYToken " contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it. Click on the "MYToken " contract in the left-hand sidebar, and then check the token Abbrev, tokenName, total supply by clicking them. By passing address and token value in mint and clicking it will call the mint function and same will be with burn.

# Author

@Diksha Thakur

# License 
ThisMYTOKEN  is licensed under the MIT license

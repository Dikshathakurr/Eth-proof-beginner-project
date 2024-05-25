// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

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

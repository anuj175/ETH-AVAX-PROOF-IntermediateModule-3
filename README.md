# MyToken (MyT) - ERC-20 Smart Contract

## Overview

The MyToken (MyT) is an Ethereum-based ERC-20 token smart contract. This contract implements the ERC-20 standard, providing basic functionality for a fungible token on the Ethereum blockchain. The MyToken contract allows users to create, transfer, and manage custom tokens with customizable name, symbol, and decimal places.

## Token Details

- Name: [Name of your token]
- Symbol: [Symbol of your token]
- Decimals: [Number of decimal places for your token]

## Smart Contract Functions

### `constructor(string memory _name, string memory _symbol, uint8 _decimals)`

The constructor function initializes the MyToken contract when deployed. It takes three parameters to set the token's name, symbol, and decimals during deployment.

### `getTotalSupply() public view returns (uint256)`

The `getTotalSupply` function allows anyone to check the total supply of MyT tokens.

### `balanceOf(address account) public view returns (uint256)`

The `balanceOf` function allows anyone to check the token balance of a specific address (`account`).

### `transfer(address to, uint256 value) public returns (bool)`

The `transfer` function allows token holders to transfer MyT tokens to a specified recipient address (`to`). It checks for a valid destination address and ensures that the sender has enough tokens to perform the transfer. If successful, a `Transfer` event is emitted.

### `mint(uint256 value) public onlyOwner`

The `mint` function allows the contract owner to create and mint new MyT tokens. It takes a `value` parameter representing the number of tokens to be minted and adds them to the total supply. The new tokens are credited to the contract owner's account. This function can only be called by the contract owner due to the `onlyOwner` modifier. Upon minting, a `Mint` event is emitted.

## Events

The MyToken contract emits two events to track token transfers and minting:

- `Transfer`: Emitted whenever MyT tokens are transferred from one address to another.
- `Mint`: Emitted when the contract owner mints new MyT tokens.

## Usage

1. Deploy the Contract: Deploy the MyToken contract to the Ethereum blockchain, providing the desired token name, symbol, and decimals during deployment.

2. Token Transfer: Use the `transfer` function to send MyT tokens to other Ethereum addresses.

3. Token Balance: Use the `balanceOf` function to check the token balance of any address.

4. Mint New Tokens: Use the `mint` function to create and mint new MyT tokens. Only the contract owner can perform this action.

## Disclaimer

This smart contract serves as a basic implementation of an ERC-20 token. It is provided for educational and demonstration purposes only. Use it responsibly and exercise caution when deploying and interacting with smart contracts in a production environment. Ensure to conduct a thorough security audit before deploying any smart contract to the main Ethereum network.

--- 

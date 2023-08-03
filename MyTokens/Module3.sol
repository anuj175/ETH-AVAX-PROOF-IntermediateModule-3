// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract MyToken {
    string public name;
    string public symbol;
    uint8 public decimals;
    uint256 private totalSupply;
    mapping(address => uint256) private balances;
    address public owner; 
    
    // Events
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Mint(address indexed to, uint256 value);

    constructor(string memory _name, string memory _symbol, uint8 _decimals) {
        name = _name;
        symbol = _symbol;
        decimals = _decimals;
        totalSupply = 0; 
   
        owner = msg.sender; 
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can perform this action");
        _;
    }
    
        function getTotalSupply() public view returns (uint256) {
        return totalSupply;
    }
        
    function balanceOf(address account) public view returns (uint256) {
        return balances[account];
    }
        
    function transfer(address to, uint256 value) public returns (bool) {
        require(to != address(0), "Invalid address");
        require(balances[msg.sender] >= value, "Insufficient balance");
        
        balances[msg.sender] -= value;
        balances[to] += value;
        
        emit Transfer(msg.sender, to, value);
        return true;
    }
        
    function mint(uint256 value) public onlyOwner {
        totalSupply += value;
        balances[msg.sender] += value;
        
        emit Mint(msg.sender, value);
    }
}

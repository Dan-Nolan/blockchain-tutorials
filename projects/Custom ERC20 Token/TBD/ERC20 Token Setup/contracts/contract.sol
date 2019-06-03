pragma solidity ^0.4.21;

contract ERC20Token {
    string public name;
    string public symbol;
    uint8 public decimals = 8;  
    uint256 public totalSupply;

    mapping (address => uint256) public balanceOf;
    mapping (address => mapping (address => uint256)) public allowance;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Burn(address indexed from, uint256 value);

    function ERC20Token(uint256 initialSupply, string tokenName, string tokenSymbol) public {
        totalSupply = initialSupply * 10 ** uint256(decimals); 
        balanceOf[msg.sender] = totalSupply;            
        name = tokenName;                                   
        symbol = tokenSymbol;                               
    }
}
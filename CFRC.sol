pragma solidity ^0.5.1;

contract CFRC {
    mapping (address => uint) private userBalances;

     function deposit() public payable {
        userBalances[msg.sender] += msg.value;
    }
}

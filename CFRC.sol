pragma solidity ^0.5.1;

contract CFRC {
    mapping (address => uint) private userBalances;

     function deposit() public payable {
        userBalances[msg.sender] += msg.value;
    }
    
    function balance() public view returns(uint) {
        return userBalances[msg.sender];
    }
    
     function transfer(address _recipient, uint _amount) public {
        require(userBalances[msg.sender] >= _amount);
        
        userBalances[_recipient] += _amount;
        userBalances[msg.sender] -= _amount;
    }
}

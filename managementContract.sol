pragma solidity >=0.4.22 <0.6.0;

contract Management {
    address owner;
    mapping(bytes20 => bytes20) contracts;

    constructor() public{
        owner = msg.sender;
    }

    modifier isOwner() {
        require(owner == msg.sender);
        _;
    }
    
    function registerContract(bytes20 id, bytes20 add) isOwner public{
        contracts[id] = add;
    }

    function cancelContract(bytes20 id) isOwner public{
        delete contracts[id];
    }

    function getContract(bytes20 id) public view returns (bytes20 add) {
        return contracts[id];
    }
}
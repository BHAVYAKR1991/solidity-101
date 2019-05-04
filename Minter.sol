pragma solidity ^0.4.0;

contract Coin {
    // public makes it accessible from outside
    // <data-type> <access-modifier> <var-name>
    address public minter;
    mapping (address => uint) public balances;

    // Events allow to react on changes
    event Sent (address from, address to, uint amount);

    // constructor minter is the person sending the msg (creating the contract)
    function Coin () public {
        minter = msg.sender;
    }

    function mint (address receiver, uint amount) public {
        if (minter != msg.sender) return;
        balances[receiver] += amount;
    }

    function send (address receiver, uint amount) public {
        if (balances[msg.sender] < amount) return;
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        Sent(msg.sender, receiver, amount);
    }


}

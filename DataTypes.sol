pragma solidity ^0.4.0;

contract DataTypes {
  bool myBool = false;
  int248 myInt = -128;
  uint8 myUint = 255;

  string myString;
  uint8 myStringArr;

  byte myValue;
  bytes32 myBytes32;

  /* future use of solidity - dont use now */
  /* fixed8x1 myFixed = 255.1; //255.0 */

  enum Action {ADD, REMOVE, UPDATE}
  Action myAction = Action.ADD;

  address myAddress;
  function assignAddress () {
    myAddress = msg.sender;
    myAddress.balance;
    myAddress.transfer(10);
    /* trasnfer eth to address */
  }


  uint[] myIntArray = [1,2,3];

  function arrFunc () {
    myIntArray.push(1);
    myIntArray.length;
  }

  uint[10] myFixedArr;

  /* struct */

  struct Account {
    uint balance;
    uint dailyLimit;
  }

  Account myAccount;
  function structFunc () {
    myAccount.balance = 100;
  }

  /* mapping  */
  /* hashmap / dictionatry */
  mapping (address => Account) _accounts;
  function mappingFunc () payable {
    _accounts[msg.sender].balance += msg.value;
  }
}

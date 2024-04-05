// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

contract HelloWorld {
    string public message;

    event UpdatedMessages(string oldStr, string newStr);


    constructor(string memory initMessage) {
        message = initMessage;
  
    }

    // A public function that accepts a string argument and updates the 'message' storage variable.
    function update(string memory newMessage) public {
        string memory oldMsg = message;
        message = newMessage;
        emit UpdatedMessages(oldMsg, newMessage);
       
    }
}

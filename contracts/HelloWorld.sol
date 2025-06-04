//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract HelloWorld{
    string storageMessage;
    function setStorage(string memory str) public {
        storageMessage=str;
    }
     function getStprageMessage()public  view returns (string memory)  {
        return storageMessage;
    }
}
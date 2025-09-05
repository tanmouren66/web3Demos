// SPDX-License-Identifier: MIT 

pragma solidity >=0.8.0 <0.9.0;
contract Hello {
    function sayHello() public pure returns(string memory){
        return "hello world";
    }
    uint[] testArray= [uint (1),2,3,4];

    function deleteFromArray (uint _index) public{
        _index = _index-1;
        require(_index <testArray.length,"index is too big");
        for (uint256 index = _index; index < testArray.length; index++) {
            testArray[index] = testArray[index+1];
            
        }
        testArray.pop;
    }
    function printArray()view public returns ( uint[] memory) {
       return testArray;
    }
}
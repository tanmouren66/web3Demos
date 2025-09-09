// SPDX-License-Identifier: MIT 
import "@openzeppelin/contracts/utils/Strings.sol";

pragma solidity >=0.8.0 <0.9.0;
contract Hello {
    using Strings for uint256;

    function sayHello() public pure returns(string memory){
        return "hello world";
    }
    event LogInfo(address sender,string value);
    uint[] testArray= [uint (1),2,3,4];

    function deleteFromArray (uint _index) public{
        require(_index <testArray.length,"index is too big");

        for (uint256 i = _index; i < testArray.length-1; i++) {
            testArray[i] = testArray[i+1];
        }
        testArray.pop();
        string memory log =   string(abi.encodePacked("delete from array #", _index.toString()));
        emit LogInfo(msg.sender,log);

    }
    function printArray()view public returns ( uint[] memory) {
       return testArray;
    }
}
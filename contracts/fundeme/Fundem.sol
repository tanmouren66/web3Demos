// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";


contract FundMe {
    mapping(address => uint256) public fundersToAmount;
    AggregatorV3Interface internal priceFeed;

    constructor() {
        //初始化priseFeed接口
        priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
    }
    function fund() public payable {
        require(msg.value > 0.1 ether, "You need to spend more ETH!");

        fundersToAmount[msg.sender] = msg.value;
//        addressToAmountFunded[msg.sender] += msg.value;
//        emit Funded(msg.sender, msg.value);
    }

    function getETH2DollarPrice() public view returns (int256) {
        // prettier-ignore
        (
        /* uint80 roundId */,
            int256 answer,
        /*uint256 startedAt*/,
        /*uint256 updatedAt*/,
        /*uint80 answeredInRound*/
        ) = priceFeed.latestRoundData();
        return answer;

    }
}


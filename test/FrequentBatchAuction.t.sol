// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {FrequentBatchAuction} from "../src/FrequentBatchAuction.sol";

contract FrequentBatchAuctionTest is Test {
    FrequentBatchAuction public fba;

    function setUp() public {
        fba = new FrequentBatchAuction();
    }

    function test_placeOrder() public {
        fba.placeOrder("ETH", "USDC", FrequentBatchAuction.OrderType.Ask, 1, 1000);
        assertEq(fba.getNumOfOrders(), 1);
    }

}

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract FrequentBatchAuction {

    enum Side { Ask, Bid }

    struct Order {
        string token0;    // The first part of the trading pair, e.g., "ETH"
        string token1;    // The second part of the trading pair, e.g., "USDC"
        Side side;        // The type of order, either Ask or Bid
        uint amount;      // Order amount (in units of the first symbol), e.g., 1 ETH
        uint price;       // Order price (in units of the second symbol), e.g., 1000 USDC
    }

    Order[] public orders;

    function placeOrder(string memory _token0, string memory _token1, Side _side, uint _amount, uint _price) public {
        orders.push(Order({
            token0: _token0,
            token1: _token1,
            side: _side,
            amount: _amount,
            price: _price
        }));
    }

    function getNumOfOrders() public view returns (uint) {
        return orders.length;
    }
}

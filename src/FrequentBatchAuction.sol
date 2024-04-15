// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract FrequentBatchAuction {

    enum Side { Ask, Bid }

    struct Order {
        string token0;    // 取引のペアを表す文字列の前者, 例: "ETH"
        string token1;    // 取引のペアを表す文字列の後者, 例: "USDC"
        Side side;  // 注文のタイプ, AskまたはBid
        uint amount;      // 注文量 (シンボルの前者の単位)
        uint price;       // 注文価格 (シンボルの後者の単位)
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

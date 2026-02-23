// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract pr_enum {

    enum Order { Pending, Shipped, Delivered }
    Order public status;

    // function setShipped() public {
    //     status = Order.Shipped;
    // }

    function setStatus(uint _value) public {
		require(_value < 3, "Invalid value!");
        status = Order(_value);
    }
}
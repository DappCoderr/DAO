//SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {Ownable} from "lib/openzeppelin-contracts/contracts/access/Ownable.sol";

contract Box is Ownable{

    uint256 private s_number;

    constructor() Ownable(msg.sender){}

    event NumberChanged(uint256 number);

    function getNumber(uint256 newNumber) public {
        s_number = newNumber;
        emit NumberChanged(newNumber);
    }

    function getNumber() external view returns(uint256){
        return s_number;
    }
}
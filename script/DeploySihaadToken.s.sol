// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SihaadToken} from "../src/SihaadToken.sol";
import {Script} from "forge-std/Script.sol";

contract DeploySihaadToken is Script {
    uint256 public constant INITIAL_SUPPLY = 100000000 ether;

    function run() external returns (SihaadToken) {
        vm.startBroadcast();
        SihaadToken sic = new SihaadToken(INITIAL_SUPPLY);
        vm.stopBroadcast();
        return sic;
    }
}

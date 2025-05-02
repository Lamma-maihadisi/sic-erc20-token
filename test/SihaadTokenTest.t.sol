// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {DeploySihaadToken} from "../script/DeploySihaadToken.s.sol";
import {SihaadToken} from "../src/SihaadToken.sol";

contract SihaadTokenTest is Test {
    SihaadToken public ourToken;
    DeploySihaadToken deployer;

    address lamma = makeAddr("lamma");
    address hibbah = makeAddr("hibbah");

    uint256 public constant STARTING_BALANCE = 100 ether;

    function setUp() public {
        deployer = new DeploySihaadToken();
        ourToken = deployer.run();

        vm.prank(msg.sender);
        ourToken.transfer(hibbah, STARTING_BALANCE);
    }

    function testInitialSupply() public view {
        assertEq(ourToken.totalSupply(), deployer.INITIAL_SUPPLY());
    }

    function testHibbahBalance() public view {
        assertEq(STARTING_BALANCE, ourToken.balanceOf(hibbah));
    }

    function testAllowancesWork() public {
        uint256 initialAllowance = 1000;
        uint256 transferAmount = 500;

        // hibbah approves lamma to spend token on her behalf
        vm.prank(hibbah);
        ourToken.approve(lamma, initialAllowance);

        vm.prank(lamma);
        ourToken.transferFrom(hibbah, lamma, transferAmount);

        assertEq(ourToken.balanceOf(lamma), transferAmount);
        assertEq(ourToken.balanceOf(hibbah), STARTING_BALANCE - transferAmount);
    }

    function testTokenName() public view {
        string memory tokenName = "Sihaad International Community";
        string memory tokenSymbol = "SIC";

        assertEq(ourToken.symbol(), tokenSymbol);
        assertEq(ourToken.name(), tokenName);
    }
}

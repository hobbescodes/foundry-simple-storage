// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;

import "forge-std/Script.sol";
import "../src/SimpleStorage.sol";

contract SimpleStorageScript is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        SimpleStorage simpleStorage = new SimpleStorage();

        vm.stopBroadcast();

    }
}

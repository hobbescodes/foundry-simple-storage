// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;

import "forge-std/Test.sol";
import "../src/SimpleStorage.sol";

contract SimpleStorageTest is Test {
    SimpleStorage simpleStorage;

    function setUp() public {
        simpleStorage = new SimpleStorage();
    }

    function testStartingFavoriteNumber() public {
        uint256 currentValue = simpleStorage.retrieve();
        uint256 expectedValue = 0;

        assertEq(currentValue, expectedValue);
    }

    function testUpdateStore() public {
        uint256 expectedValue = 7;
        simpleStorage.store(expectedValue);
        uint256 currentValue = simpleStorage.retrieve();

        assertEq(currentValue, expectedValue);
    }

    function testPeopleStructAndArray() public {
        string memory expectedPerson = "Hobbes";
        uint256 expectedFavoriteNumber = 22;
        simpleStorage.addPerson(expectedPerson, expectedFavoriteNumber);

        ( uint256 favoriteNumber, string memory name ) = simpleStorage.people(0);

        assertEq(name, expectedPerson);
        assertEq(favoriteNumber, expectedFavoriteNumber);
    }
}

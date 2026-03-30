//SPDX-License-Identifer: MIT

pragma solidity ^0.8.26;

import {Test} from "forge-std/Test.sol";
import {BasicNft} from "../src/BasicNft.sol";
import {DeployBasicNft} from "../script/DeployBasicNft.s.sol";

contract BasicNftTest is Test {
    DeployBasicNft public deployer;
    BasicNft public basicNft;
    address public USER = makeAddr("user");
    string public constant loving =
        "https://ipfs.io/ipfs/QmSM4gvqUwwuuAfhgcvf1mGqKPVdcPiHrTrVxVo53P75Y4";

    function setUp() public {
        deployer = new DeployBasicNft();
        basicNft = new BasicNft();
    }

    function testNameIsCorrect() public view {
        string memory expectedName = "Dogie";
        string memory actualName = basicNft.name();
        assert(keccak256(bytes(expectedName)) == keccak256(bytes(actualName)));
    }

    function testCanMintAndHaveABalance() public {
        vm.prank(USER);
        basicNft.mintNft(loving);

        assert(basicNft.balanceOf(USER) == 1);
        assert(
            keccak256(abi.encodePacked(loving)) ==
                keccak256(abi.encodePacked(basicNft.tokenURI(0)))
        );
    }
}

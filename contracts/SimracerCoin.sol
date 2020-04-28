pragma solidity ^0.5.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Detailed.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Burnable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Capped.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/ownership/Ownable.sol";

contract SimracerCoin is ERC20, ERC20Detailed, ERC20Burnable, ERC20Capped, Ownable {
    uint private INITIAL_SUPPLY = 200000000e18;

	constructor()
        ERC20Burnable()
        ERC20Capped(200000000e18)
        ERC20Detailed("Simracer Coin", "SRC", 18) public
	    {
            _mint(msg.sender, INITIAL_SUPPLY);
        }
}
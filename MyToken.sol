//Create a faucet for ERC20 token

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    constructor(string memory name, string memory symbol)
        public
        ERC20(name, symbol)
    {}

    function mint(address recipient, uint256 amount) external {
        _mint(recipient, amount);
    }
}

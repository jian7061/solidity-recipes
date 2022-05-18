//Code a Wrapped Ether Token(WETH)

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract WETH is ERC20 {
    constructor() public ERC20("Wrapped Ether", "WETH") {}

    function mint() external payable {
        _mint(msg.sender, msg.value);
    }

    function burn(uint256 amount) external {
        msg.sender.transfer(amount);
        _burn(msg.sender, amount);
    }
}

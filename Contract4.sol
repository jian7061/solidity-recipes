//Calculate percentage

pragma solidity ^0.8.0;

contract Mycontract {
    //185 basis points = 1.85 pct
    function calculateFee(uint256 amount) external pure returns (uint256) {
        require((amount / 10000) * 10000 == amount, "too small");
        return (amount * 185) / 10000;
    }
}

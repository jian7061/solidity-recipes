//Group multiple transactions into a single one in Solidity

pragma solidity ^0.8.0;

contract Utils {
    function groupExecute(uint256 argA, uint256 argB) external {
        ContractA(0x....).foo(argA);
        ContractA(0x....).bar(argB);

    }
}

contract ContractA {
    function foo(uint256 arg) external {
        //do sth
    }
}

contract ContractB {
    function bar(uint256 arg) external {
        //do sth
    }
}

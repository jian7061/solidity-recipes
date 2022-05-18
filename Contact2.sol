//How to generate random numbers

pragma solidity ^0.8.0;

contract Oracle {
    address admin;
    uint256 public rand;

    constructor() public {
        admin = msg.sender;
    }

    function feedRandomness(uint256 _rand) external {
        require(msg.sender == admin);
        rand = _rand;
    }
}

contract MyContract {
    Oracle oracle;
    uint256 nonce;

    constructor(address oracleAddress) public {
        oracle = Oracle(oracleAddress);
    }

    function foo() external {
        uint256 rand = _randModulus(10);
    }

    function _randModulus(uint256 mod) internal returns (uint256) {
        uint256 rand = uint256(
            keccak256(
                abi.encodePacked(
                    nonce,
                    oracle.rand(),
                    block.timestamp,
                    block.difficulty,
                    msg.sender
                )
            )
        ) % mod;
        nonce++;
        return rand;
    }
}

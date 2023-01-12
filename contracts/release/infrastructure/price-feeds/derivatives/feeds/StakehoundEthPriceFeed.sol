// SPDX-License-Identifier: GPL-3.0

/*
    This file is part of the Dexify Protocol.

    (c) Dexify Council <council@dexify.finance>

    For the full license information, please view the LICENSE
    file that was distributed with this source code.
*/

pragma solidity 0.6.12;

import "./utils/SinglePeggedDerivativePriceFeedBase.sol";

/// @title StakehoundEthPriceFeed Contract
/// @author Dexify Council <security@dexify.finance>
/// @notice Price source oracle for Stakehound stETH, which maps 1:1 with ETH
contract StakehoundEthPriceFeed is SinglePeggedDerivativePriceFeedBase {
    constructor(address _steth, address _weth)
        public
        SinglePeggedDerivativePriceFeedBase(_steth, _weth)
    {}
}

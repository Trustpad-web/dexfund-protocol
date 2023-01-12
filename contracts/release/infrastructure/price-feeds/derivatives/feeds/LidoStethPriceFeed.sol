// SPDX-License-Identifier: GPL-3.0

/*
    This file is part of the Dexify Protocol.

    (c) Dexify Council <council@dexify.finance>

    For the full license information, please view the LICENSE
    file that was distributed with this source code.
*/

pragma solidity 0.6.12;

import "./utils/SinglePeggedDerivativePriceFeedBase.sol";

/// @title LidoStethPriceFeed Contract
/// @author Dexify Council <security@dexify.finance>
/// @notice Price source oracle for Lido stETH, which maps 1:1 with ETH (https://lido.fi/)
contract LidoStethPriceFeed is SinglePeggedDerivativePriceFeedBase {
    constructor(address _steth, address _weth)
        public
        SinglePeggedDerivativePriceFeedBase(_steth, _weth)
    {}
}

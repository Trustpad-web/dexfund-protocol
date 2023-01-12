// SPDX-License-Identifier: GPL-3.0

/*
    This file is part of the Dexify Protocol.
    (c) Dexify Council <council@dexify.finance>
    For the full license information, please view the LICENSE
    file that was distributed with this source code.
*/

pragma solidity 0.6.12;

import "../release/infrastructure/price-feeds/derivatives/feeds/utils/SinglePeggedDerivativePriceFeedBase.sol";

/// @title TestSingleUnderlyingDerivativeRegistry Contract
/// @author Dexify Council <security@dexify.finance>
/// @notice A test implementation of SinglePeggedDerivativePriceFeedBase
contract TestSinglePeggedDerivativePriceFeed is SinglePeggedDerivativePriceFeedBase {
    constructor(address _derivative, address _underlying)
        public
        SinglePeggedDerivativePriceFeedBase(_derivative, _underlying)
    {}
}

// SPDX-License-Identifier: GPL-3.0

/*
    This file is part of the Dexify Protocol.

    (c) Dexify Council <council@dexify.finance>

    For the full license information, please view the LICENSE
    file that was distributed with this source code.
*/

pragma solidity 0.6.12;

/// @title ICurveStableSwapSeth interface
/// @author Dexify Council <security@dexify.finance>
interface ICurveStableSwapSeth {
    function add_liquidity(uint256[2] calldata, uint256) external payable returns (uint256);

    function remove_liquidity(uint256, uint256[2] calldata) external returns (uint256[2] memory);

    function remove_liquidity_one_coin(
        uint256,
        int128,
        uint256
    ) external returns (uint256);
}

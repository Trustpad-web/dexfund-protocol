// SPDX-License-Identifier: GPL-3.0

/*
    This file is part of the Dexify Protocol.

    (c) Dexify Council <council@dexify.finance>

    For the full license information, please view the LICENSE
    file that was distributed with this source code.
*/

pragma solidity 0.6.12;

/// @title ICurveLiquidityPool interface
/// @author Dexify Council <security@dexify.finance>
interface ICurveLiquidityPool {
    function coins(uint256) external view returns (address);

    function get_virtual_price() external view returns (uint256);
}

// SPDX-License-Identifier: GPL-3.0

/*
    This file is part of the Dexify Protocol.

    (c) Dexify Council <council@dexify.finance>

    For the full license information, please view the LICENSE
    file that was distributed with this source code.
*/

pragma solidity 0.6.12;

/// @title ICurveSwapsEther Interface
/// @author Dexify Council <security@dexify.finance>
interface ICurveSwapsEther {
    function exchange(
        address,
        address,
        address,
        uint256,
        uint256,
        address
    ) external payable returns (uint256);
}

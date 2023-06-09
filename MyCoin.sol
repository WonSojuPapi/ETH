// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyCoin {

    // public variables here
    string public coinName = "Diamante";
    string public coinAbbrv = "DIA";
    uint public cointotalSupply = 0;

    // mapping variable here
     mapping(address => uint) public balances;
   
    // mint function
        function mint (address add, uint value) public {
            cointotalSupply += value;
            balances[add] += value;
        }

    // burn function
    function burn (address add,uint value) public {
        if (balances[add] >= value){
            cointotalSupply -= value;
            balances[add] -= value;
        }
    }

}

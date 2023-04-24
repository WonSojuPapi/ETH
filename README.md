# My Coin

Simple overview of use/purpose.

## Description

An in-depth paragraph about your project and overview of use.

## Getting Started


## Executing Program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., myToken.sol). Copy and paste the following code into the file:

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
}

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile myToken.sol" button.

To deploy the contract, click on the "Deploy and Run Transactions" button. This will open a new window that allows you to deploy the contract. Do not forget to select the “MyToken” contract before deploying.

In the deployment window “Deployed Contracts”, set the parameters for the balance, mint, and burn functions.

* To mint new coins, input the address of the recipient and the number of coins you want to mint and click transact.
* To burn coins, input the address of the recipient and the number of coins you want to burn and click transact.
* To see current balances of the address, input the address of the recipient and the number of coins you want to mint and click call. You can also see the total supply by clicking the “totalSupply” button.

## Authors

Contributors names and contact info

Jakkin Elero 
@WonSojuPapi - Discord
NTCians


## License

This project is licensed under the [NAME HERE] License - see the LICENSE.md file for details
# Homework 20: Solidity-Smart Contract
## FRANK XU


In this Homework on Solidity-Smart Contract, I'd solve Level Three `DeferredEquityPlan`
The Solidity-Smart Contract will automatically manage 1000 shares with an annual distribution of 250 over 4 years for a single employee.

Please refer to attached screenshots on the functionality, including:

Here, this "DeferredEquityPlan" contract will be able to automatically manage an employee's "deferred equity incentive plan" in which 1000 shares will be distributed over 4 years to the employee. We won't need to work with Ether in this contract, but we will be storing and setting amounts that represent the number of distributed shares the employee owns and enforcing the vetting periods automatically.

Pursuant to the  deferred equity incentive plans, Employee will receive an award of 1000 shares for joining and staying with the Company, to be vested in 4 years at the rate of 250 shares (1,000/4) actually distributed to and ownship vested by employee each year. Should the employee leaves the Company within the first 4 years, he or she would forfeit ownership of any remaining  undistributed/unvested shares.

First I deployed and tested the DeferredEquityPlan.sol in local testnet. And, I added Fastforward function and tested its timelock function. See attached Screenshots.

Having tested on local testnet, I removed the Fastforward and timelock function, and delopyed the Solidity-Smart Contract on a Kovan. See attached: Screenshot: Screen Shot-DeferredEquityPlan-Kovan.

The Contract's deployed address: 
0xE34c1357d0180C14B0c86565c20066a8827b8A48
0xE34c1357d0180C14B0c86565c20066a8827b8A48
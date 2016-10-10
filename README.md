# MaerskDSIP

Maersk DSIP is a PoC written at the Blockchain Summer School at the IT University of Copenhagen. 

The PoC is an attempt to store shipping documents using Ethereum, MetaMask and IPFS
The PoC runs on a node server and uses the IPFS Api to hosts files and MetMask to handle account administration.

How
Using a Web3 Injection, MetaMask can invoke and process a Smart Contract which once mined allows for interaction on webpage.

The contract can then be referenced using the Ethereum Contract Adress which allows for the user logged on to the MetaMask client to whitelist other Ethereum Addresses. 

Finally, the MetaMask user can upload a file and invoke a final contract which uses the IPFS API to generate a hash from an uploaded file. The hash of the uploaded file is stored in the transaction making it a publicly accessible file stored on the Blockchain

The PoC was written by Miista, Jhuebner and Stuffyvater. The original PoC may be found here: https://github.com/stuffyvater/M-rskG2 
this repository is used for a Thesis delivery:


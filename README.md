# access-control
Access Control and Identity Management

- To start, make sure you have Node.js installed. If not, go to https://nodejs.org/en/ to download it.

- To communicate with the Ethereum network you need to connect to a Ethereum node. This node can be running on your machine or externally. In this case, the code was developed to use a external node provided by Infura. Therefore, create an account on "https://infura.io" and create a new project.

- This new project will offer a endpoint link to connect to the Ethereum node. Select "ROPSTEN" instead of "MAINNET" and make sure to save this link.

- Next, use the "npm install" command inside the "Access Control and Identity Management" directory to install the needed modules.

- Now, create your Ethereum account. For that, open the "createAccount_script.js" and replace the node endpoint link with yours. Save the file and run the script by inserting "node createAccount_script.js" in the command line. This will return the new account's information, make sure to save it.

- To perform transactions with this account, you need Ether since the account has 0 on creation. There is the need to ask for a funding from a faucet. Go to "https://faucet.ropsten.be/" type your account's address and press send me Ether.

- Now go to "https://ropsten.etherscan.io", type your account's address and check that a transaction sending 1 Ether to your account is pending. Wait for that transaction to be confirmed.

- Open the "deployContract_script.js" file and modify the link to your node; modify the account variable to your account's address; replace the first argument of the Buffer.from() function on the private key variable to your private key(no '0x'); Save the file.

- Run "deployContract_script.js" by typing in the command line "node deployContract_script.js".

- Get the address of the newly deployed contract by accessing the "https://ropsten.etherscan.io" website and inserting the returned transaction hash. The page will present the respective contract address.

- Open the "registerContract_script.js" file and again replace the endpoint, account variable, private key first argument and the new contract address.

- Now replace the id variable to the third argument in the Ethereum DID (for example -> did:ethr:0x2CefB619218825C0c670D8E77f7039e0693E1dDC) you are trying to register.

- Replace the add variable with the Ethereum address of the contract you want to associate with the DID.

- Save the file and run it by typing in the command line "npm start".

- The university's DID and its respective contract are now registered in the Management contract. 

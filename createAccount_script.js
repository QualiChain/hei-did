const fs = require('fs');
const Web3 = require('web3');
const web3 = new Web3('https://ropsten.infura.io/v3/66a470c1158f441bac9c502cd63d4b9b');

console.log(web3.eth.accounts.create());


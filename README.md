Simple Monero two nodes testnet
-------------------------------

- Wallet RPC 1 at port 28082, executed with --rpc-login monerorpc:rpcpassword
- Wallet RPC 2 at port 38082, executed with --rpc-login monerorpc:rpcpassword

Mining
------
Mining is activated on node 2 and all funds are sent to Wallet RPC 2

Sending funds from wallet 2
---------------------------

```
/usr/bin/monero-wallet-cli --testnet --wallet-file /data/wallet-2/wallet.bin
(password is empty)
transfer A7dPDTL8dUeXS82k2ovp5EUYLzBt9pYNW2LXUFsZiv8S3Mt21FZ5qQaAroko1enzw3eGr9qC7X1D7Geoo2RrAotYb4oAuMPdNmz9vCVrfq 0.34
```

(help: https://getmonero.org/knowledge-base/user-guides/monero-wallet-cli)

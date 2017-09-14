## Monero two nodes testnet
-------------------------------

- Wallet RPC 1 at port 28082, executed with --rpc-login monerorpc:rpcpassword
- Wallet RPC 2 at port 38082, executed with --rpc-login monerorpc:rpcpassword

### Addresses

- Node 1: 9wviCeWe2D8XS82k2ovp5EUYLzBt9pYNW2LXUFsZiv8S3Mt21FZ5qQaAroko1enzw3eGr9qC7X1D7Geoo2RrAotYPwq9Gm8
- Node 2: 9wq792k9sxVZiLn66S3Qzv8QfmtcwkdXgM5cWGsXAPxoQeMQ79md51PLPCijvzk1iHbuHi91pws5B7iajTX9KTtJ4bh2tCh

### Example RPC against Node 1:

```bash
curl -u monerorpc:rpcpassword --digest --data-binary '{"jsonrpc": "2.0", "id":"1", "method": "get_info", "params": [] }' -H 'content-type: application/json' -X POST http://127.0.0.1:28081/json_rpc
```

### Example Wallet RPC Node 1:

```bash
curl -u monerorpc:rpcpassword --digest --data-binary '{"jsonrpc": "2.0", "id":"1", "method": "getaddress", "params": [] }' -H 'content-type: application/json' -X POST http://127.0.0.1:28082/json_rpc
```

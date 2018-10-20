## AEON two nodes testnet

- Wallet RPC 1 at port 28082, executed with --rpc-login monerorpc:rpcpassword
- Wallet RPC 2 at port 38082, executed with --rpc-login monerorpc:rpcpassword

### Addresses

- Node 1: UmjKhZQDXKTdkUDqwdCLyGShXpEfYgTJHhei27aeW5a7axtZWWtmcU9iMShKzbv8TVSuSPArsAYK3WAZia59XrEA2uSyu3ndb
- Node 2: UmjJRusujyU89s7qCQVdmY5YcWVLk1TrnYMgeLP21c18PAvVFpXf8B825bjoUNhBeXZax87RSQe4sdVPuP1tmDwk2r8HddyiC

### Example RPC against Node 1:

```bash
curl -u monerorpc:rpcpassword --digest --data-binary '{"jsonrpc": "2.0", "id":"1", "method": "get_info", "params": [] }' -H 'content-type: application/json' -X POST http://127.0.0.1:28081/json_rpc
```

### Example Wallet RPC Node 1:

```bash
curl -u monerorpc:rpcpassword --digest --data-binary '{"jsonrpc": "2.0", "id":"1", "method": "getaddress", "params": [] }' -H 'content-type: application/json' -X POST http://127.0.0.1:28082/json_rpc
```

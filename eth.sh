#!/bin/bash

RPC_URL="https://eth1.lava.build/lava-referer-6f2afec1-ff79-4c77-b793-3d31ffb5c7a4/"

OUTPUT_DIR="Logs"

eth_data=$(curl -s -H "Content-type: application/json" -X POST --data '{"jsonrpc":"2.0","method":"eth_gasPrice","id":1}' "$RPC_URL")

if [ $? -eq 0 ]; then
    if [ ! -d "$OUTPUT_DIR" ]; then
        mkdir "$OUTPUT_DIR"
    fi
    
    echo "$eth_data" >> "$OUTPUT_DIR/eth.txt"
    
    echo "Ethereum data fetched and saved to $OUTPUT_DIR/ethereum.txt."
else
    echo "Failed to fetch Ethereum data."
fi

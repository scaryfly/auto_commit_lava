#!/bin/bash

RPC_URL="https://rpc.starknet.lava.build/lava-referer-6f2afec1-ff79-4c77-b793-3d31ffb5c7a4/"

OUTPUT_DIR="Logs"

starknet_data=$(curl -s -H "Content-Type: application/json" -X POST --data '{"jsonrpc":"2.0","id":"1","method":"starknet_blockNumber"}' "$RPC_URL")

if [ $? -eq 0 ]; then
    if [ ! -d "$OUTPUT_DIR" ]; then
        mkdir "$OUTPUT_DIR"
    fi
    
    echo "$starknet_data" >> "$OUTPUT_DIR/starknet.txt"
    
    echo "Starknet data fetched and saved to $OUTPUT_DIR/starknet.txt."
else
    echo "Failed to fetch Starknet data."
fi

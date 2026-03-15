#!/usr/bin/env bash
set -e

NETWORK="testnet"
DEPLOYER="deployer"

echo "Deploying TTL-Legacy to $NETWORK..."

# Build first
./scripts/build.sh

WASM="target/wasm32-unknown-unknown/release/ttl_vault.wasm"

CONTRACT_ID=$(stellar contract deploy \
  --wasm "$WASM" \
  --source "$DEPLOYER" \
  --network "$NETWORK")

echo "Contract deployed: $CONTRACT_ID"
echo "Add to .env: CONTRACT_TTL_VAULT=$CONTRACT_ID"

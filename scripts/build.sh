#!/usr/bin/env bash
set -e

echo "Building TTL-Legacy contracts..."
cargo build --target wasm32-unknown-unknown --release --manifest-path contracts/ttl_vault/Cargo.toml
echo "Build complete."

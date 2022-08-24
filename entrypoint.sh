#!/bin/sh
export RIG_NAME=${RIG_NAME:-$(tr -dc A-Za-z0-9 </dev/urandom | head -c 8 ; echo '')'~ethash'}
/gminer/miner --algo $MINING_ALGO --server "$MINING_POOL" --user "${WALLET_ADDRESS:-"846eg2pWgP7DsF6yHV9vfFfQQC3KWz3HB9RudyZcPe1vYp7SMj799Dufs34bALJtnvUvqhSCUS3sy88p3CCXMgcCRFqstWw"}" \
  --pass "$RIG_NAME" --proto stratum

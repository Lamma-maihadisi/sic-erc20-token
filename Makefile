-include .env

sonic:; forge script script/DeployOurToken.s.sol:DeployOurToken --rpc-url $(SONIC_RPC_URL) --account yoga --broadcast
# 🦆 DuckChain ComputeNet
Decentralized AI Inference Marketplace powered by DuckChain + AWS.

## 🚀 Overview
DuckChain ComputeNet lets anyone:
- Request AI inference with $DUCK tokens
- Provide GPU compute and earn $DUCK
- Validate results via redundancy/zkML
- Scale workloads with AWS fallback nodes

This project was built for **DuckChain x AWS Hack: AI Unchained**.

## 🛠 Tech Stack
- **Smart Contracts:** Solidity + Hardhat (DuckChain)
- **Client SDK:** Python (provider, requester, validator)
- **Backend:** FastAPI + AWS (EC2 GPU, EKS, S3)
- **Frontend:** React + Tailwind
- **Token:** $DUCK for payments, staking, rewards

## ⚡ Quickstart
```bash
# Clone repo
git clone https://github.com/YOUR-USERNAME/duckchain-computenet.git
cd duckchain-computenet

# Install dependencies
npm install         # contracts/frontend
pip install -r requirements.txt  # client/backend

# Deploy contract
npx hardhat run scripts/deploy_contract.js --network duckchain

# Run backend
cd backend
uvicorn api:app --reload
```

## 🎯 Hackathon Tracks
- AI Agents & Autonomous Apps
- Decentralized AI Infra
- AI-as-a-Service on Chain
- DuckChain Native Tools

## 🪙 $DUCK Utility
- Payments: requesters pay in $DUCK
- Staking: providers stake $DUCK as collateral
- Rewards: providers + validators earn $DUCK
- Reputation: higher stake = more trust

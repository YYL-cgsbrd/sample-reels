# 🚀 Foundry Basic NFT Project

这是一个基于 Foundry 框架开发的 ERC-721 代币项目。

## 🛠 技术栈
- **Solidity**: 智能合约开发
- **Foundry**: 编译、测试与部署
- **IPFS (Pinata)**: 去中心化元数据存储
- **Foundry-DevOps**: 自动化部署管理

## 📋 功能特点
- 遵循 OpenZeppelin ERC721 标准。
- 完整的测试覆盖（单元测试 & 集成测试）。
- 自动化 Mint 脚本，支持 Sepolia 测试网。

## 🚀 快速开始
1. 安装依赖：`forge install`
2. 部署合约：`make deploy ARGS="--network sepolia"`
3. 铸造 NFT：`make mint ARGS="--network sepolia"`
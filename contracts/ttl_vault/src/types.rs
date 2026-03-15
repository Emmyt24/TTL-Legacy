use soroban_sdk::{contracttype, Address};

#[contracttype]
#[derive(Clone)]
pub enum DataKey {
    Vault(u64),
    VaultCount,
}

#[contracttype]
#[derive(Clone, PartialEq)]
pub enum ReleaseStatus {
    Locked,
    Released,
}

#[contracttype]
#[derive(Clone)]
pub struct Vault {
    pub owner: Address,
    pub beneficiary: Address,
    pub balance: i128,
    pub check_in_interval: u64, // seconds
    pub last_check_in: u64,     // ledger timestamp
    pub status: ReleaseStatus,
}

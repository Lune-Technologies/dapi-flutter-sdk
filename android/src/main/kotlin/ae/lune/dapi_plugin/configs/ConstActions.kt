package ae.lune.dapi_plugin.configs

class ConstActions {
    companion object {

        final const val INIT_ENVIRONMENT: String = "initEnvironmentLune";

        final const val CONNECT = "plugins.lune.ae/dapi/connect";
        final const val ACTIVE_CONNECTION = "activeConnectionLune";
        final const val CONNECTION_ACCOUNTS = "connectionAccountsLune";
        final const val BANK_METADATA = "userAccountsMetaDataLune";
        final const val BENEFICIARIES = "beneficiariesLune";
        final const val CREATE_BENEFICIARY = "createBeneficiaryLune";
        final const val DE_LINK = "delinkLune";

        final const val CREATE_TRANSFER_ID_TO_ID = "createTransferIdToIdLune";
        final const val CREATE_TRANSFER_ID_TO_I_BAN = "createTransferIdToIBanLune";
        final const val CREATE_TRANSFER_ID_TO_NUMBER = "createTransferIdToNumberLune";
    }
}
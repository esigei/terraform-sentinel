module "tfplan-functions" {
    source = "../common-functions/tfplan-functions/tfplan-functions.sentinel"
}
module "common"{
source= "../../../common-functions/common/common.sentinel"
}
module "tfstate-functions" {
    source = "../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "azure-functions" {
    source = "./azure-functions/azure-functions.sentinel"
}
policy "restrict-sqlserver-access-fwr"{
source="./restrict-sqlserver-access-fwr.sentinel"
enforcement_level="soft-mandatory"
}

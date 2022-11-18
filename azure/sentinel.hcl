module "tfplan-functions" {
    source = "../common-functions/tfplan-functions/tfplan-functions.sentinel"
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
policy "restrict-inbound-source-address-prefixes" {
    source = "./restrict-inbound-source-address-prefixes.sentinel"
    enforcement_level = "advisory"
}

policy "restrict-outbound-destination-address-prefixes" {
    source = "./restrict-outbound-destination-address-prefixes.sentinel"
    enforcement_level = "advisory"
}
policy "restrict-nsg-rules" {
    source = "./restrict-nsg-rules.sentinel"
    enforcement_level = "soft-mandatory"
}

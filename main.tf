resource "equinix_fabric_cloud_router" "FCRRouter_in_SG" {
  name = "FCR_in_SG_Vipin"
  type = "XF_ROUTER"
  notifications {
    type   = "ALL"
    emails = [var.email]
  }
  order {
    purchase_order_number = var.purchase_order_number
  }
  location {
    metro_code = "SG"
  }
  package {
    code = "STANDARD"
  }
  project {
    project_id = var.project_id
  }
  account {
    account_number = var.account_number
  }
}

locals {
  rg_name  = "rg-${var.project}-${format("%03d", var.rg_instance)}"
  stn_name = "stn${var.project}${format("%03d", var.stn_instance)}"
}

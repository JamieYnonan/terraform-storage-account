variables {
  project      = "exampleterraform"
  rg_instance  = 999
  stn_instance = 999
}

run "min_rg_instance" {
  command = plan
  assert {
    condition     = azurerm_resource_group.example.name == "rg-exampleterraform-999"
    error_message = "The Resource Group name is not correct"
  }
}

run "min_stn_instance" {
  command = plan
  assert {
    condition     = azurerm_storage_account.example.name == "stnexampleterraform999"
    error_message = "The container delete retention policy is not correct"
  }
}

run "invalid_rg_instance" {
  variables {
    rg_instance = 1000
  }
  command         = plan
  expect_failures = [var.rg_instance]
}

run "invalid_stn_instance" {
  variables {
    stn_instance = 1000
  }
  command         = plan
  expect_failures = [var.stn_instance]
}

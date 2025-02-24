variables {
  project      = "exampleterraform"
  rg_instance  = 5
  stn_instance = 5
}

run "rg_name" {
  command = plan

  assert {
    condition     = azurerm_resource_group.example.name == "rg-exampleterraform-005"
    error_message = "The Resource Group name is not correct"
  }
}

run "stn_name" {
  command = plan

  assert {
    condition     = azurerm_storage_account.example.name == "stnexampleterraform005"
    error_message = "The Storage Account name is not correct"
  }
}

run "standard_accoumt_tier" {
  command = plan

  assert {
    condition     = azurerm_storage_account.example.account_tier == "Standard"
    error_message = "The Storage Account tier is not correct"
  }
}

run "invalid_project_min_length" {
  variables {
    project = "ab"
  }
  command         = plan
  expect_failures = [var.project]
}

run "invalid_project_max_length" {
  variables {
    project = "abcdabcdabcdabcdabcda"
  }
  command         = plan
  expect_failures = [var.project]
}

run "invalid_alphanumeric_project" {
  variables {
    project = "ab12"
  }
  command         = plan
  expect_failures = [var.project]
}

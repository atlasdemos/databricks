variable "databricks_url" {
  type = string
  description = "Databricks target db connection string"
  default = getenv("DATABRICKS_URL")
}

variable "databricks_dev_url" {
  type = string
  description = "Databricks dev db connection string"
  default = getenv("DATABRICKS_DEV_URL")
}

env "demo" {
  url = var.databricks_url
  dev = var.databricks_dev_url
  schema {
    src = "file://schema.sql"
    repo {
      name = "databricks-cicd-demo"
    }
  }
  migration {
    tx_mode = none
  }
}
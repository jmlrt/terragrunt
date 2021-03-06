terragrunt = {
  # Configure Terragrunt to use DynamoDB for locking
  lock {
    backend = "dynamodb"
    config {
      state_file_id = "terragrunt-test-fixture-lock"
      aws_region = "us-east-1"
      table_name = "terragrunt_locks_test_fixture_lock"
      max_lock_retries = 1
    }
  }
}

Feature: All S3 buckets are private and encrypted

  Scenario: All S3 bucket are encrypted
    Given I have aws_s3_bucket defined
    Then it must contain server_side_encryption_configuration
    And it must contain rule
    And it must contain apply_server_side_encryption_by_default

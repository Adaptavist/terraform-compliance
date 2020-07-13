Feature: All KMS keys must follow security standards

  Scenario: Reject if a custom KMS key is created without key rotation
    Given I have aws_kms_key defined
    Then it must contain enable_key_rotation
    And its value must be true

  Scenario: Reject if a custom KMS key is created with over permissive policy with * value
    Given I have aws_kms_key defined
    When it has policy
    And it contains Statement
    And its Effect is Allow
    And it contains Principal
    Then its value must not match the "\*" regex


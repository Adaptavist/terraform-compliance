Feature: Fargate service

    Background: I have a Fargate service
        Given I have aws_ecs_service defined
        When its launch_type is FARGATE

    Scenario: Fargate service doesn't have public IP
        Then it must contain network_configuration
        And it must contain assign_public_ip
        And its value must be false

    Scenario: Fargate service must be isolated with a security group
        Then it must contain network_configuration
        And it must contain security_groups
        And its value must not be null

    Scenario: Fargate service must be behind a load balancer
        Then it must contain load_balancer
        And it must contain target_group_arn
        And its value must not be null
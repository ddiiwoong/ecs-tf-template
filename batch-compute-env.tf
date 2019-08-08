resource "aws_batch_compute_environment" "default" {
  compute_environment_name = "env_circleci_batch_demo"

  compute_resources {
    instance_role = "arn:aws:iam::823928750534:instance-profile/ecsInstanceRole"

    instance_type = [
      "optimal",
    ]

    desired_vcpus = 1
    max_vcpus     = 1
    min_vcpus     = 0

    security_group_ids = [
      "sg-0431b76a9034f92d6",
    ]

    subnets = [
      "subnet-0eb7eff63678c8796",
      "subnet-0cd41779a034de1ab",
    ]

    type = "EC2"
  }

  service_role = "arn:aws:iam::823928750534:role/service-role/AWSBatchServiceRole"
  type         = "MANAGED"
}

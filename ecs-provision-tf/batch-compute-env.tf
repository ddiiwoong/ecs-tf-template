resource "aws_batch_compute_environment" "default"{ 
  compute_environment_name = "env_circleci_batch_demo" 
  compute_resources { 
    instance_role = "arn:aws:iam::823928750534:instance-profile/ecsInstanceRole" 
    instance_type = [
      "optimal",
    ]
    desired_vcpus = 1 
    max_vcpus = 1 
    min_vcpus = 0 
    security_group_ids = [
      "sg-0632cf81b5c4dff17" 
    ]
    subnets = [
      "subnet-0c4f8135b536e8fab",
      "subnet-0a261950d894cf27e"
    ] 
    type = "EC2" 
  } 
  service_role = "arn:aws:iam::823928750534:role/service-role/AWSBatchServiceRole" 
  type ="MANAGED"
}

resource "aws_batch_job_definition" "default" {
  name = "circleci_batch_demo" 
  type = "container"

  container_properties = <<CONTAINER_PROPERTIES
{
    "command": [],
    "image": "823928750534.dkr.ecr.ap-northeast-2.amazonaws.com/fetch_and_run:v20190623",
    "vcpus": 1,
    "memory": 512,
    "volumes": [],
    "environment": [],
    "mountPoints": [],
    "ulimits": [] 
}
CONTAINER_PROPERTIES
}
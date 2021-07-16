image_id = "ami-0b827f3319f7447c6"
instance_type = "c5.4xlarge"
security_group_ids = [ ]
block_devices = [{
  device_name = "/dev/xvda"
  ebs = {
    volume_type = "gp3"
    volume_size = 100
    iops = 3000
    throughput = 125
    delete_on_termination = false
  }
}]
iam_instance_profile = { }
tag_specifications = [ ]

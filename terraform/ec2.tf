module "mongo_servers_ec2" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name           = var.mongo_cluster_name
  instance_count = var.mongo_instance_count

  ami                    = var.ami
  instance_type          = var.mongo_instance_type
  key_name               = var.key_name
  monitoring             = true
  vpc_security_group_ids = [module.mongo_servers_sg.security_group_id]
  subnet_ids             = data.aws_subnet_ids.private.ids
}

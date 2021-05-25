resource "aws_mq_broker" "desafio_devops_picpay_rabbitmq" {
  broker_name = var.rabbitmq_name

  engine_type        = "RabbitMQ"
  engine_version     = var.rabbitmq_version
  storage_type       = "ebs"
  host_instance_type = var.rabbitmq_instance_type
  security_groups    = [module.amazonmq_rabbit_sg.security_group_id]
  subnet_ids         = data.aws_subnet_ids.private.ids

  apply_immediately   = true
  deployment_mode     = "CLUSTER_MULTI_AZ"
  publicly_accessible = false

  logs {
    general = true
  }

  user {
    username = var.rabbitmq_username
    password = var.rabbitmq_password
  }
}

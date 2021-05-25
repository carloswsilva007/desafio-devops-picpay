module "amazonmq_rabbit_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "Amazon MQ (RabbitMQ)"
  description = "Grupos de seguranca para RabbitMQ"
  vpc_id      = data.aws_vpc.picpay.id

  ingress_with_cidr_blocks = [
    {
      rule        = "rabbitmq-5672-tcp"
      description = "Acesso RabbitMQ somente pela subnet publica"
      cidr_blocks = local.vpc_public_cidr
    },
    {
      rule        = "https-443-tcp"
      description = "Acesso a UI do RabbitMQ somente pela subnet publica"
      cidr_blocks = local.vpc_public_cidr
    },
  ]

  egress_with_cidr_blocks = [
    {
      rule : "all-all"
    },
  ]
}

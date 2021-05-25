# Exporta o ID da VPC
data "aws_vpc" "picpay" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name]
  }
}

# Para o cidr da vpc não ficar hard coded
locals {
  vpc_private_cidr = data.aws_vpc.picpay.cidr_block_associations[1].cidr_block
  vpc_public_cidr  = data.aws_vpc.picpay.cidr_block_associations[0].cidr_block
}

# Exporta o ID das subnets privadas
# uso: data.aws_subnet_ids.private.ids.*[0]
data "aws_subnet_ids" "private" {
  vpc_id = data.aws_vpc.picpay.id

  tags = {
    Tier = "Private"
  }
}

# Exporta o ID das subnets publicas
# uso: data.aws_subnet_ids.public.ids.*[0]
data "aws_subnet_ids" "public" {
  vpc_id = data.aws_vpc.picpay.id

  tags = {
    Tier = "Public"
  }
}


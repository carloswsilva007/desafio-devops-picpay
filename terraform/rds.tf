module "desafio_picpay_rds" {
  source  = "terraform-aws-modules/rds/aws"
  version = "~> 2.0"

  identifier = "picpay-postgresql"

  # Configuracoes do banco
  engine                = "postgres"
  family                = var.postgres_family
  engine_version        = var.postgres_version
  instance_class        = var.postgres_size
  allocated_storage     = var.postgres_storage_size
  max_allocated_storage = var.postgres_max_storage_size
  storage_encrypted     = true

  # Acesso
  name     = var.rds_name
  username = var.rds_db_username
  password = var.rds_db_password
  port     = var.postgres_port

  # Manutencao/Atualizacao/Backup
  maintenance_window      = "Mon:00:00-Mon:03:00"
  backup_window           = "03:00-06:00"
  backup_retention_period = 7

  # Monitoramento
  create_monitoring_role          = true
  monitoring_interval             = "60"
  monitoring_role_name            = "RDSMarketplaceMonitoringRole"
  enabled_cloudwatch_logs_exports = ["postgresql", "upgrade"]

  # Seguranca
  vpc_security_group_ids = [module.rds_servers_sg.security_group_id]
  subnet_ids             = data.aws_subnet_ids.private.ids
  multi_az               = true
  deletion_protection    = true
  kms_key_id             = aws_kms_key.postgresql.arn
}

resource "aws_kms_key" "postgresql" {
  description         = "Chave para postgresql no RDS"
  enable_key_rotation = true
}


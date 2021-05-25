# gerais
region = "sa-east-1"
vpc_name = "picpay"
ami = "codigo-do-amazon-linux-2"
key_name = "picpay-pem"

# RabbitMQ
rabbitmq_name          = "picpay"
rabbitmq_instance_type = "mq.m5.large"
rabbitmq_version       = "3.8.11"
rabbitmq_username      = "picpayprod"
rabbitmq_password      = "c5jDStwS5"

# S3
s3_bucket_name = "picpay-frontend"

# Kubernetes
eks_name = "picpay-k8s"
eks_version = "1.19"
eks_instance_type = "m5.xlarge"

# MongoDB
mongo_cluster_name = "picpay-mongo"
mongo_instance_count = 3

# PostgreSQL
postgres_family           = "postgres9.6"
postgres_version          = "9.6.20"
postgres_size             = "db.m5.large"
postgres_storage_size     = "40"
postgres_max_storage_size = "80"
postgres_port             = "5432"
rds_name                  = "picpayprod"
rds_db_username           = "picpay-admin"
rds_db_password           = "Zv87ZwhgJ"

variable "region" {
  description = "Codigo da regiao que sera criado os recursos"
  type        = string
}

variable "vpc_name" {
  description = "Nome da VPC"
  type        = string
}

variable "ami" {
  description = "AMI que ira ser utilizado nos servidores"
  type        = string
}

variable "key_name" {
  description = "Nome da chave para autenticar nos servidores"
  type        = string
}

variable "rabbitmq_name" {
  description = "Nome do RabbitMQ (nome do cluster)"
  type        = string
}

variable "rabbitmq_instance_type" {
  description = "Tamanho das intancias do rabbitmq"
  type        = string
}

variable "rabbitmq_version" {
  description = "Versao do cluster de rabbitmq"
  type        = string
}

variable "rabbitmq_username" {
  description = "Usuario admin do rabbitmq"
  type        = string
}

variable "rabbitmq_password" {
  description = "Senha do usuario admin do rabbitmq"
  type        = string
}

variable "s3_bucket_name" {
  description = "Nome do bucket s3 do frontend"
  type        = string
}
variable "eks_name" {
  description = "Nome do cluster de Kubernetes"
  type        = string
}

variable "eks_version" {
  description = "Versão do Kubernetes"
  type        = string
}

variable "eks_instance_type" {
  description = "Tamanho das maquinas workers do cluster"
  type        = string
}

variable "mongo_cluster_name" {
  description = "Nome do cluster de mongo"
  type        = string
}

variable "mongo_instance_count" {
  description = "Quantidade de instancias no cluster"
  type        = string
}

variable "mongo_instance_type" {
  description = "Tipo da maquina do mongo que sera usado"
  type        = string
}

variable "postgres_family" {
  description = "Familia do postgreSQL"
  type        = string
}

variable "postgres_version" {
  description = "Versao do postgreSQL"
  type        = string
}

variable "postgres_size" {
  description = "Classe de instancia do RDS"
  type        = string
}

variable "postgres_storage_size" {
  description = "Tamanho do armazenamento do RDS"
  type        = string
}

variable "postgres_max_storage_size" {
  description = "Tamanho maximo em que pode ser escalado"
  type        = string
}

variable "postgres_port" {
  description = "Porta que o PostgreSQL ira rodar"
  type        = string
}

variable "rds_name" {
  description = "Nome do RDS"
  type        = string
}

variable "rds_db_username" {
  description = "Usuario 'root' para conectar ao banco"
  type        = string
}

variable "rds_db_password" {
  description = "Senha do usuario 'root'"
  type        = string
}

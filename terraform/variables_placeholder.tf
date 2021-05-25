variable "region" {
  description = "Codigo da regiao que sera criado os recursos"
  type        = string
}

variable "vpc_name" {
  description = "Nome da VPC"
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

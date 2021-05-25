### Terraform
Este é um protótipo de um Terraform do ambiente pedido no desafio. O que irá subir neste código:
- 3 máquinas que serão utilizadas para o mongo
- 1 bucket s3 para o frontend em JS
- 1 cluster de Kubernetes com "secrets" criptografados (para armazenar variáveis de ambientes sensíveis) e com logs de auditoria habilitados
- 1 cluster de RabbitMQ utilizando o serviço Amazon MQ da AWS
- 1 banco de dados PostgreSQL (como serviço) com logs habilitado
# Projeto Kubernetes: Aplicação com MySQL e PHP

## Descrição
Este projeto implementa uma aplicação simples com backend em PHP, frontend em HTML/CSS/JS e um banco de dados MySQL utilizando Kubernetes. A aplicação permite enviar e armazenar mensagens.

## Estrutura do Projeto

### Arquivos Principais
- `deployment.yaml`: Define os deployments para o MySQL e o backend PHP.
- `services.yaml`: Define os serviços para o MySQL e o backend PHP.
- `script.sh`: Script para construção das imagens Docker, push para o Docker Hub e criação dos serviços e deployments no cluster Kubernetes.
- `backend/index.php`: Código do backend PHP.
- `frontend/index.html`: Código do frontend HTML.

### Esquema do Banco de Dados
```sql
CREATE Table mensagens (
    id int,
    nome VARCHAR(50),
    email VARCHAR(50),
    comentario VARCHAR(50)
);
```

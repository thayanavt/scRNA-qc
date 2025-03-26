# scRNA-qc

Workflow Nextflow: Download e Conversão de Arquivos SRA para FASTQ
Este workflow foi desenvolvido para receber um arquivo contendo códigos SRA, baixar os dados do banco de dados SRA e convertê-los para o formato FASTQ. Ele foi projetado para ser executado com o perfil teste e permite a modificação do parâmetro sras_id_file.

Como usar:
Pré-requisitos:

O Nextflow deve estar instalado na sua máquina.

O arquivo contendo os códigos SRA deve estar disponível (no formato .csv).

Parâmetros:

sras_id_file: O caminho para o arquivo contendo os códigos SRA. Este parâmetro pode ser alterado conforme necessário para apontar para diferentes arquivos de entrada.

Execução: Para rodar o workflow, use o seguinte comando:


nextflow run seu_workflow.nf --profile teste --sras_id_file /caminho/para/seu/arquivo_sra.txt

O que o workflow faz:

Baixa os dados SRA do banco de dados SRA usando os códigos fornecidos no arquivo sras_id_file.

Converte os dados baixados para o formato FASTQ.


É possível executar com o id teste:
nextflow run seu_workflow.nf --profile teste

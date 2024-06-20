# Use uma imagem base do Python
FROM python:3.12

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie os arquivos requirements.txt e instale as dependências
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt

# Copie todo o código do projeto para o diretório de trabalho do contêiner
COPY . .

# Exponha a porta que o Flask vai rodar
EXPOSE 5000

# Comando para rodar o aplicativo
CMD ["python", "app.py"]

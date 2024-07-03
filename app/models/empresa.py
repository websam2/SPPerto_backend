# Modelo para a tabela empresa, se necessário, você pode usar SQLAlchemy ou qualquer ORM de sua escolha.
class Empresa:
    def __init__(self, id, nome, telefone, logo, links):
        self.id = id
        self.nome = nome
        self.telefone = telefone
        self.logo = logo
        self.links = links

    def __repr__(self):
        return f'<Empresa {self.nome}>'
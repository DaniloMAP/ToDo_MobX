# ToDo MobX App

Este é um aplicativo de lista de tarefas simples construído usando a biblioteca MobX para gerenciamento de estado.

## Estrutura do Projeto

- **lib/**: Contém os arquivos de código-fonte do aplicativo.
  - **main.dart**: Ponto de entrada do aplicativo.
  - **screens/**: Contém as telas do aplicativo.
    - **list_screen.dart**: Tela principal que exibe a lista de tarefas.
    - **login_screen.dart**: Tela de login.
  - **stores/**: Contém as classes de gerenciamento de estado usando MobX.
    - **list_store.dart**: Gerencia o estado da tela de lista de tarefas.
    - **login_store.dart**: Gerencia o estado da tela de login.
    - **todo_store.dart**: Gerencia o estado de itens individuais da lista de tarefas.
  - **widgets/**: Contém widgets reutilizáveis.
    - **custom_icon_button.dart**: Widget personalizado para botões de ícone.
    - **custom_text_field.dart**: Widget personalizado para campos de texto.

## Dependências

O aplicativo faz uso das seguintes dependências:
- **flutter_mobx**: Biblioteca MobX para gerenciamento de estado reativo.
- **provider**: Biblioteca para injeção de dependência e gerenciamento de estado.

## Pré-requisitos

Certifique-se de ter o Flutter e o Dart instalados em sua máquina.

## Instalação

1. Clone este repositório:

```bash
git clone https://github.com/seu-usuario/ToDo_MobX.git
```

2. Navegue até o diretório do projeto:

```bash
cd ToDo_MobX/todo_mobx
```

3. Instale as dependências:

```bash
flutter pub get
```

4. Execute o aplicativo:

```bash
flutter run
```

## Dependências

O aplicativo faz uso das seguintes dependências:
- `flutter_mobx`: Biblioteca MobX para gerenciamento de estado reativo.
- `provider`: Biblioteca para injeção de dependência e gerenciamento de estado.

## Licença

Este projeto está licenciado sob a Licença MIT - consulte o arquivo [LICENSE](LICENSE) para obter detalhes.

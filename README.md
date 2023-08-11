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

dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^0.1.2
  mobx: ^1.1.1
  flutter_mobx: ^1.1.0
  provider: ^4.0.4

Isso define as dependências necessárias para o seu projeto, incluindo o Flutter, os ícones do Cupertino, as bibliotecas MobX e Provider.

cupertino_icons: Esta dependência fornece os ícones da biblioteca Cupertino, que são usados para ícones de estilo iOS no seu aplicativo Flutter.

mobx: Esta é a biblioteca MobX, que oferece gerenciamento de estado reativo para o seu aplicativo. Ela permite que você crie observáveis, ações e calculados para controlar o estado de forma mais eficiente.

flutter_mobx: Este pacote é uma integração específica para o Flutter da biblioteca MobX. Ele fornece widgets reativos que podem ser usados para criar interfaces do usuário reativas com base nos estados observados.

provider: Essa biblioteca é usada para injeção de dependência e gerenciamento de estado. Ela oferece uma maneira fácil de fornecer e acessar instâncias de classe de forma global em seu aplicativo.

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

## Licença

Este projeto está licenciado sob a Licença MIT - consulte o arquivo [LICENSE](LICENSE) para obter detalhes.

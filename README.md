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

Este projeto Flutter utiliza as seguintes dependências para seu funcionamento:

- **Flutter SDK**: A estrutura de desenvolvimento que permite criar aplicativos nativos para dispositivos móveis, web e desktop usando a linguagem de programação Dart.

- **cupertino_icons**: Fornece os ícones da biblioteca Cupertino, que são utilizados para ícones de estilo iOS no aplicativo Flutter.

- **mobx**: Biblioteca MobX, que oferece gerenciamento de estado reativo para o aplicativo. Permite a criação de observáveis, ações e cálculos para controlar o estado de forma eficiente.

- **flutter_mobx**: Pacote de integração específico para o Flutter da biblioteca MobX. Ele disponibiliza widgets reativos que podem ser usados para criar interfaces de usuário reativas com base em estados observados.

- **provider**: Biblioteca utilizada para injeção de dependência e gerenciamento de estado. Oferece uma maneira simples de fornecer e acessar instâncias de classe globalmente no aplicativo.

Certifique-se de que essas dependências estejam corretamente configuradas no arquivo `pubspec.yaml` na raiz do seu projeto. Para mais detalhes sobre cada uma dessas dependências, consulte a documentação oficial de cada biblioteca.

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

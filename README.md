# FlutterPlayPause
# Video Player App

Este é um aplicativo Flutter para reprodução de vídeos. O app permite que o usuário escolha entre uma lista de vídeos e assista diretamente na tela de reprodução. Com um design simples e funcional, oferece uma experiência intuitiva com controles de reprodução, como play e pause.

## Funcionalidades

- **Tela Inicial**: Apresenta uma lista de vídeos disponíveis para reprodução.
- **Tela de Reprodução de Vídeo**: Exibe o vídeo selecionado com um controle de play/pause e uma opção para voltar para a tela inicial.
- **Design Responsivo**: O layout se ajusta a diferentes tamanhos de tela.
- **Navegação Simples**: Utiliza navegação por meio de rotas para transitar entre a tela inicial e a de reprodução.

## Tecnologias Utilizadas

- **Flutter**: Framework para criação de aplicativos nativos.
- **Video Player Plugin**: Biblioteca para reprodução de vídeos em dispositivos móveis.
- **Material Design**: Design visual do app com base nas diretrizes de Material Design.

## Estrutura do Projeto

A estrutura do projeto segue a convenção padrão do Flutter, com a organização dos arquivos no diretório `lib/`, onde o código principal reside.

### Diretório Principal

/lib /assets video1.mp4 video2.mp4 curva-de-seta-apontando-para-a-esquerda.png a-pausa.png main.dart pubspec.yaml

markdown
Copiar código

## Como Instalar

### Requisitos

- **Flutter SDK**: Certifique-se de ter o Flutter SDK instalado em seu ambiente de desenvolvimento. Se ainda não tiver o Flutter instalado, siga as instruções [aqui](https://flutter.dev/docs/get-started/install).
- **Editor de Código**: Use um editor de código como o [Visual Studio Code](https://code.visualstudio.com/) ou [Android Studio](https://developer.android.com/studio).

### Passos de Instalação

1. Clone o repositório:

- **git clone https://github.com/seu-usuario/video-player-app.git

Navegue até o diretório do projeto:
- ** cd video-player-app
Instale as dependências do projeto:
- **flutter pub get
- ** flutter run
![image](https://github.com/user-attachments/assets/0fb3076c-a318-424f-b526-9e5b456b963e)
- ** flutter runSelecione o [2]: Chrome (chrome)

##Tela Inicial
Na tela inicial, o usuário verá uma lista de vídeos disponíveis. Cada vídeo é representado por um título e um subtítulo com a opção "Clique para assistir". Ao clicar em um vídeo, o app navega para a tela de reprodução.

##Tela de Reprodução
Ao clicar em um vídeo, a tela de reprodução será aberta, exibindo o vídeo em um player de vídeo. O usuário pode dar play ou pause clicando no ícone de play/pause.

A tela de reprodução também inclui um botão "Voltar", que permite retornar à tela inicial com a lista de vídeos.

##Controle de Reprodução
Play/Pause: Um ícone centralizado na tela permite ao usuário pausar ou retomar a reprodução do vídeo.
Voltar: O usuário pode voltar à tela inicial clicando no ícone de seta na parte superior da tela de reprodução.

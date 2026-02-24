# Resumo da primeira aula

Hoje criamos um novo usuário restrito com permissões de administrador chamado 2DevSESI em todos os PCs da sala, em busca de privacidade e segurança aos alunos dessa turma e seus projetos. (continuar)

---
---

# Introdução ao Desenvolvimento Mobile

## Tipos de Desenvolvimento

### Nativo
- Android:
    - SDK : Android SDK
    - IDE : Android Studio
    - Linguagens: Kotlin e Java
    - Ambientes: Mac, Win, Linux

- IOS:
    - SDK: Cocoa Touch
    - IDE: Xcode
    - Liguagens: Swift / Objectype-C
    - Ambientes: Mac

### Multiplataforma
- React Native:
    - SDK: Node.js
    - IDE: VSCode
    - JavaScript / TypeScript
    - Ambientes: Mac, Win, Linux

- Flutter:
    - SDK: Flutter SDK
    - IDE: VSCode, Android Studio
    - Linguagens: Dart
    - Ambientes: Mac, Win, Linux

## Preparação do Ambiente de Desenvolvimento

### Instalação do FlutterSDK
- download do arquivo ZIP na página flutter.dev
- inclusão do flutter na pasta C:\src
- inclusão do flutter\bin nas varáveis de ambiente
- teste o flutter --version

### Instalação do AndoridSDK
- download do Android SDK - Command Line Tools
- adicionar o Command-line ao c:\src\AndroidSDK
- adicionar o SDKManager às Variáveis de ambiente -> Variáveis do Sistema -> path
- download dos pacotes
    - emulador
    - platforms
    - platform-tools
    - build-tools
- adicionar ADB e o Emulator as Variáveis de Ambiente
- Criação da Imagem do Emulador - via sdkmanager
- Build do Emulador - via sdkmanager

### Criação de projetos e códigos da linha de comando
- Criação de Projetos
    - `flutter create <nome_do_app>`
        - flags(marcações):
            - --empty : Cria um app "vazio" (Hello World!)
            - --platforms : Permite a seleção de uma plataforma de desenvolvimento
                - ex: `--platforms=android` (a criação do projeto será somente para a plataforma android)
    - exemplo de criação de uma aplicativo android
        - `flutter create nome_do_app --empty --platforms=android`
        - obs.: nome do aplicativo -> todas as letras minúsculas e separação de palavras com '_';
    - `flutter doctor`
        - Permite correção de pequenos problemas no flutter e identificação dos parâmetros funcionais em relação as plataformas de desenvolvimento
        - Sempre rodar o `flutter doctor` no começo do desenvolvimento
    - `flutter clean`
        - limpa o cache do build (apaga o apk anterior)
    - `flutter run -v`
        - build do app (apk)
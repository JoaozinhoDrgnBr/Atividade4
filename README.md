# Atividade4

## 🚀 Aplicativo Flutter com Login, Splash, Onboarding e Temas

Este projeto é uma atividade prática final que simula o fluxo de entrada de um aplicativo real. O app foi desenvolvido com foco em boas práticas de usabilidade, animações modernas e código reutilizável com widgets customizados.

## 🎯 Funcionalidades

- Splash screen nativa com o pacote flutter_native_splash
- Splash Flutter com animação Lottie (fade-in)
- Onboarding com 3 telas informativas
- Tela de login com validação e 3 botões funcionais
- Suporte completo a tema claro e escuro
- Dois widgets reutilizáveis: `LoginTextFormField` e `LottieWidget`

## 📲 Pré-requisitos

- Flutter 3.x
- Dart SDK
- Android Studio ou VS Code com plugins Flutter/Dart
- Emulador Android ou dispositivo físico

## 🚀 Como executar

1. **Clone o repositório:**
```
git clone https://github.com/seu-usuario/atividade_final_flutter_login.git
cd atividade_final_flutter_login
```
2. **Instale as dependências:**
```
flutter pub get
```

3. **Gere a splash nativa:**
```
flutter pub run flutter_native_splash:create
```
4. **Execute o aplicativo:**
```
flutter run
```

## 📦 Pacotes utilizados

| **Pacote**            | **Função**                                  |
|-----------------------|---------------------------------------------|
| `flutter_native_splash` | Splash screen nativa  |
| `lottie`                | Animações em vetor para Splash      |
| `provider`                  | Gerenciamento de estado            |

## 🎬 Fluxo do App

1. Splash Nativa:
  - Exibe instantaneamente ao iniciar o app.
  - Configurada via flutter_native_splash.

2. Splash Animada com Lottie:
  - Animação com fade-in utilizando arquivos .json Lottie.

3. Onboarding (3 páginas):
  - Apresentação com imagens e textos explicativos.
  - Botão "Começar" redireciona para tela de login.

4. Tela de Login:
  - Campos de e-mail e senha com validação.
  - Botões: "Entrar", "Registrar-se", "Esqueci minha senha".
  - Utiliza o widget customizado LoginTextFormField.

5. Temas (Light & Dark):
  - Alternância de tema em tempo real com botão na AppBar.
  - Implementação via light_theme.dart, dark_theme.dart e ThemeController.

## 🧩 Widgets Customizados

🔤 `LoginTextFormField`

- Campo de texto customizado para login
- Suporte a foco, hover e validação
- Reutilizável em múltiplos formulários

🎞️ `LottieWidget` (Diferencial)

- Componente reutilizável para exibir animações Lottie
- Permite configuração de animação, tamanho, alinhamento e repetição
- Usado na Splash Flutter e outras partes visuais do app

```
LottieWidget(
  assetPath: 'assets/animations/loading.json',
  repeat: true,
  height: 150,
)
```

## 💡 Temas

- O app aplica o tema claro ou escuro dinamicamente.
- Controlado por ThemeController usando ValueNotifier.
- Alteração de tema em tempo real via botão com ícone na AppBar.

## 📸 Exemplos Visuais (screenshots)

**ADICIONAR ADICIONAR**
**ADICIONAR ADICIONAR**

## 🛠️ Configuração do flutter_native_splash

```
 flutter_native_splash:
  color: "#ffffff"
  image: assets/images/logo.png
  android: true
  ios: true
```

Gere com:

```
flutter pub run flutter_native_splash:create
```

## 👨‍💻 Desenvolvido por

- João Otávio Bazzo Zimermann
- Felipe Morais
- Gabriel Vieira Moreno

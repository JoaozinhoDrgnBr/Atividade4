import 'package:flutter/material.dart';
import 'controllers/login_controller.dart';
import 'widgets/login_text_form_field.dart';
import '../../shared/utils/validators.dart';
import '../../shared/constants/constants.dart'; // Certifique-se de importar para acessar AppColors

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final controller = LoginController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, // Remove a sombra da AppBar para que ela não sobreponha a faixa
        backgroundColor: Colors.transparent, // Torna a AppBar transparente
      ),
      body: Column(
        children: [
          // Faixa acima do título
          Container(
            height: 100, // Altura da faixa
            color: AppColors.primary, // Cor marrom para a faixa
            child: Center( // Centraliza o título dentro da faixa
              child: const Text(
                'Login',
                style: TextStyle(
                  fontSize: 32, // Tamanho do título
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Cor branca para o texto
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Form(
                  key: controller.formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      LoginTextFormField(
                        controller: controller.emailController,
                        hintText: 'E-mail',
                        icon: Icons.email,
                        validator: Validators.email,
                      ),
                      const SizedBox(height: 16),
                      LoginTextFormField(
                        controller: controller.passwordController,
                        hintText: 'Senha',
                        icon: Icons.lock,
                        obscureText: true,
                        validator: Validators.password,
                      ),
                      const SizedBox(height: 24),
                      ElevatedButton(
                        onPressed: () => controller.login(context),
                        child: const Text('Entrar'),
                      ),
                      const SizedBox(height: 12),
                      TextButton(
                        onPressed: () {
                          // TODO: ação de registro
                        },
                        child: const Text('Registrar-se'),
                      ),
                      TextButton(
                        onPressed: () {
                          // TODO: ação de recuperação de senha
                        },
                        child: const Text('Esqueci minha senha'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

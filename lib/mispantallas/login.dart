import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 50.0),
          child: Column(
            children: [
              const Text("Login", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              const Text("Inicia sesión con tu cuenta", style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 30),
              // Campos de texto
              const TextField(decoration: InputDecoration(labelText: "Email", border: OutlineInputBorder())),
              const SizedBox(height: 20),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: "Password", border: OutlineInputBorder())
              ),
              const SizedBox(height: 30),
              // Botón Redondeado
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: StadiumBorder(),
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white,
                ),
                child: const Text("Iniciar Sesión"),
              ),
              const SizedBox(height: 20),
              // Texto Sign Up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("¿No tienes cuenta? "),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/signup'),
                    child: const Text("Sign up", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo)),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              // Imagen de red
              Image.network(
                'https://raw.githubusercontent.com/Eliseo128/Imagenes-para-flutter-6to-I-fecha-11-feb-2026/refs/heads/main/fondo.png',
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
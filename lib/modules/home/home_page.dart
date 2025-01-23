import 'package:flutter/material.dart';

import '../alunos/alunos_page.dart';
import '../aulas/aulas_page.dart';
import '../turmas/turmas_page.dart';
import 'widgets/card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toque Musical'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            MenuCard(
              icon: Icons.person,
              label: 'Alunos',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AlunosPage()),
                );
              },
            ),
            MenuCard(
              icon: Icons.group,
              label: 'Turmas',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TurmasPage(),
                  ),
                );
              },
            ),
            MenuCard(
              icon: Icons.calendar_today,
              label: 'Aulas',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AulasPage(),
                  ),
                );
              },
            ),
            MenuCard(icon: Icons.bar_chart, label: 'Relatórios'),
            MenuCard(icon: Icons.info, label: 'Sobre'),
            MenuCard(icon: Icons.person, label: 'Professor'),
          ],
        ),
      ),
    );
  }
}

// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';
import 'colors.dart';
import 'inscription.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parrainer',
      initialRoute: '/login',
      routes: {
        '/login': (BuildContext context) => const LoginPage(),
        '/': (BuildContext context) => const HomePage(),
        '/login/Inscription': (BuildContext context) =>const InscriptionPage(),
      },
      theme: _parrainTheme,
    );
  }
}

final ThemeData _parrainTheme = _buildParrainTheme();

ThemeData _buildParrainTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: parrainPink100,
      onPrimary: parrainBrown900,
      secondary: parrainBrown900,
      error: parrainErrorRed,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 2.0,
          color: parrainBrown900,
        ),
      ),
      floatingLabelStyle: TextStyle(
        color: parrainBrown900,
      ),
    ),
  );
}

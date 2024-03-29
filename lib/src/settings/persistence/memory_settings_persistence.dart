// Copyright 2022, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:game_template/src/settings/persistence/settings_persistence.dart';

/// An in-memory implementation of [SettingsPersistence].
/// Useful for testing.
class MemoryOnlySettingsPersistence implements SettingsPersistence {
  bool musicOn = true;

  bool soundsOn = true;

  bool muted = false;

  String playerName = 'Player';

  String apiToken = '<token>';

  @override
  Future<bool> getMusicOn() async => musicOn;

  @override
  Future<bool> getMuted({required bool defaultValue}) async => muted;

  @override
  Future<String> getPlayerName() async => playerName;

  @override
  Future<String> getAPIToken() async => apiToken;

  @override
  Future<bool> getSoundsOn() async => soundsOn;

  @override
  Future<void> saveMusicOn(bool value) async => musicOn = value;

  @override
  Future<void> saveMuted(bool value) async => muted = value;

  @override
  Future<void> savePlayerName(String value) async => playerName = value;

  @override
  Future<void> saveAPIToken(String value) async => apiToken = value;

  @override
  Future<void> saveSoundsOn(bool value) async => soundsOn = value;
}

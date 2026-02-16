import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class AutoEvaluacionGruposAuthUser {
  AutoEvaluacionGruposAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<AutoEvaluacionGruposAuthUser>
    autoEvaluacionGruposAuthUserSubject =
    BehaviorSubject.seeded(AutoEvaluacionGruposAuthUser(loggedIn: false));
Stream<AutoEvaluacionGruposAuthUser> autoEvaluacionGruposAuthUserStream() =>
    autoEvaluacionGruposAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);

import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class BrokerForTestingAuthUser {
  BrokerForTestingAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<BrokerForTestingAuthUser> brokerForTestingAuthUserSubject =
    BehaviorSubject.seeded(BrokerForTestingAuthUser(loggedIn: false));
Stream<BrokerForTestingAuthUser> brokerForTestingAuthUserStream() =>
    brokerForTestingAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);

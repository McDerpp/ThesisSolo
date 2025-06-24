import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/models/account.dart';

final StateProvider<bool> guestAccount = StateProvider((ref) => false);
// setting this to true for testing
final StateProvider<bool> offlineMode = StateProvider((ref) => true);

class AccountNotifier extends StateNotifier<Account> {
  AccountNotifier()
      : super(Account(
            id: 0,
            username: '',
            first_name: '',
            last_name: '',
            email: '',
            date_joined: '',
            userType: '',
            height: 0,
            weight: 0,
            bmi: 0,
            bmiDetail: ""));

  void setAccount(Account accountInfo) {
    state = accountInfo;
  }
}

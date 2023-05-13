import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'model/app_state_model.dart';

void main() {
  return runApp(
    ChangeNotifierProvider<AppStateModel>(
      // NEW
      create: (_) => AppStateModel()..loadProducts(), // NEW
      child: const CupertinoStoreApp(), // NEW
    ),
  );
}

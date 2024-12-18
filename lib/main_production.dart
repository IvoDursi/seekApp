import 'package:seek_app/app/app.dart';
import 'package:seek_app/bootstrap.dart';

void main() {
  bootstrap(
    (localStorageService) => App(
      localStorageService: localStorageService,
    ),
  );
}

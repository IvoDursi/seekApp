import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_storage_service/local_storage_service.dart';
import 'package:seek_app/home/home.dart';
import 'package:seek_app/l10n/l10n.dart';
import 'package:tasks_repository/tasks_repository.dart';

class App extends StatelessWidget {
  const App({
    required this.localStorageService,
    super.key,
  });

  final LocalStorageService localStorageService;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => LocalStorageService(),
        ),
        RepositoryProvider(
          create: (context) => TasksRepository(
            context.read<LocalStorageService>(),
          ),
        ),
      ],
      child: BlocProvider(
        create: (context) => TasksBloc(
          tasksRepository: context.read<TasksRepository>(),
        ),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          debugShowMaterialGrid: false,
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.lightGreen,
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            scaffoldBackgroundColor: Colors.lightGreen[100],
            floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Colors.lightGreen,
            ),
            useMaterial3: true,
          ),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: const HomePage(),
        ),
      ),
    );
  }
}

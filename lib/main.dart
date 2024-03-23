import 'package:fluent_ui/fluent_ui.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:xfdm/app.dart';

import 'generated/l10n.dart';

Future<void> main() async {
  await preInitApp();
  runApp(const ProviderScope(
    child: App(),
  ));
}

class App extends HookConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return FluentApp.router(
      title: "XFDM",
      restorationScopeId: "XFDM",
      themeMode: ThemeMode.dark,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        FluentLocalizations.delegate,
        S.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: FluentThemeData(
        brightness: Brightness.dark,
        navigationPaneTheme: const NavigationPaneThemeData(
          backgroundColor: Color.fromRGBO(0, 0, 0, 0.85),
        ),
        buttonTheme: ButtonThemeData(
            defaultButtonStyle: ButtonStyle(
          shape: ButtonState.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: BorderSide(color: Colors.white.withOpacity(.03)))),
        )),
      ),
      debugShowCheckedModeBanner: false,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';

final GetIt getIt = GetIt.instance;
@InjectableInit(initializerName: 'init', preferRelativeImports: true)
void configureDependencies() => getIt.init();

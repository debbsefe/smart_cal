import 'package:smart_cal/core/core.dart';

class AppProviderObserver extends ProviderObserver {
  final logger = Logger('AppProviderObserver');

  @override
  void didAddProvider(
    ProviderBase<Object?> provider,
    Object? value,
    ProviderContainer container,
  ) {
    logger.info('$Provider added: $value');
    super.didAddProvider(provider, value, container);
  }

  @override
  void didDisposeProvider(
    ProviderBase<Object?> provider,
    ProviderContainer container,
  ) {
    logger.info('$Provider disposed');
    super.didDisposeProvider(provider, container);
  }

  @override
  void providerDidFail(
    ProviderBase<Object?> provider,
    Object error,
    StackTrace stackTrace,
    ProviderContainer container,
  ) {
    logger.info('$Provider threw $error');
    super.providerDidFail(provider, error, stackTrace, container);
  }
}

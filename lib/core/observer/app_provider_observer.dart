import 'package:smart_cal/core/core.dart';

base class AppProviderObserver extends ProviderObserver {
  final logger = Logger('AppProviderObserver');

  @override
  void didAddProvider(
    ProviderObserverContext context,
    Object? value,
  ) {
    logger.info('$Provider added: $value');
    super.didAddProvider(context, value);
  }

  @override
  void didDisposeProvider(
    ProviderObserverContext context,
  ) {
    logger.info('${context.provider.name} disposed');
    super.didDisposeProvider(context);
  }

  @override
  void providerDidFail(
    ProviderObserverContext context,
    Object error,
    StackTrace stackTrace,
  ) {
    logger.info('${context.provider.name} threw $error');
    super.providerDidFail(context, error, stackTrace);
  }
}

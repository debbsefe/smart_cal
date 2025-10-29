import 'package:smart_cal/core/core.dart';

final tabNotifierProvider = NotifierProvider<TabNotifier, TabsAndCount>(
  TabNotifier.new,
);

class TabNotifier extends Notifier<TabsAndCount> {
  @override
  TabsAndCount build() => TabsAndCount();

  void updateTabAndCount(TabsAndCount newState) {
    state = newState;
  }
}

class TabsAndCount {
  TabsAndCount({this.tab = Tabs.home, this.count = 0});

  final Tabs tab;
  final int count;
}

enum Tabs { home, events, settings }

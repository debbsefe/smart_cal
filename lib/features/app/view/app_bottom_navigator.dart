import 'package:flutter/material.dart';
import 'package:smart_cal/core/core.dart';
import 'package:smart_cal/features/event/event.dart';
import 'package:smart_cal/features/home/home.dart';
import 'package:smart_cal/features/settings/view/settings_screen.dart';

class TabsAndCount {
  TabsAndCount({this.tab = Tabs.home, this.count = 0});

  final Tabs tab;
  final int count;
}

enum Tabs { home, events, settings }

final tabIndexProvider = StateProvider<TabsAndCount>((ref) => TabsAndCount());

class AppBottomNavigator extends ConsumerWidget {
  const AppBottomNavigator({super.key});

  static PageRoute<void> getRoute({bool withFadeTransition = false}) {
    const settings = RouteSettings(name: '/home');

    return MaterialPageRoute<void>(
      builder: (_) => const AppBottomNavigator(),
      settings: settings,
    );
  }

  static List<Widget> pages = [
    const HomeScreen(),
    const UpcomingEventsScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final activeTab = ref.watch(tabIndexProvider);
    final activeIndex = activeTab.tab.index;

    return Scaffold(
      body: IndexedStack(
        index: activeIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: activeIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: (int index) {
          final count = index == activeIndex ? 1 : 0;
          ref.read(tabIndexProvider.notifier).state = TabsAndCount(
            tab: Tabs.values[index],
            count: activeTab.count + count,
          );
        },
        items: [
          BottomNavigationBarItem(
            label: l10n.home,
            icon: const Icon(
              Icons.home_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: l10n.events,
            icon: const Icon(
              Icons.calendar_month,
            ),
          ),
          BottomNavigationBarItem(
            label: l10n.settings,
            icon: const Icon(
              Icons.settings_outlined,
            ),
          ),
        ],
      ),
    );
  }
}

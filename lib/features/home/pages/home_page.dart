import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils.dart';
import '../../../core/widgets/custom_scaffold.dart';
import '../../activities/pages/activities_page.dart';
import '../bloc/home_bloc.dart';
import '../widgets/home_add_button.dart';
import '../widgets/home_tab_button.dart';
import '../widgets/nav_bar.dart';
import '../widgets/statistics_card.dart';
import 'settings_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Stack(
        children: [
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state is HomeSettings) return const SettingsPage();

              if (state is HomeActivities) return const ActivitiesPage();

              return const _Home();
            },
          ),
          const NavBar(),
        ],
      ),
    );
  }
}

class _Home extends StatefulWidget {
  const _Home();

  @override
  State<_Home> createState() => _HomeState();
}

class _HomeState extends State<_Home> {
  bool history = true;

  void changeTab(bool value) {
    if (history != value) {
      setState(() {
        history = value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 12 + getStatusBar(context)),
          const StatisticsCard(),
          const SizedBox(height: 12),
          const Row(
            children: [
              HomeAddButton(income: true),
              SizedBox(width: 45),
              HomeAddButton(income: false),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              HomeTabButton(
                title: 'News',
                active: !history,
                value: false,
                onPressed: changeTab,
              ),
              const SizedBox(width: 45),
              HomeTabButton(
                title: 'History',
                active: history,
                value: true,
                onPressed: changeTab,
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

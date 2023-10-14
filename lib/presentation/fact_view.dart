import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import '../application/number_fact_model.dart';
import '../application/number_fact_state.dart';
import '../core/constants/sizes.dart';
import '../core/injection/injection.dart';
import '../domain/number_fact.dart';
import '../domain/numbers_api_repository.dart';

class FactView extends StatelessWidget {
  const FactView({super.key});

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<NumberFactModel, NumberFactState>(
      create: (_) =>
          NumberFactModel(getIt.get<NumberApiRepository>())..loadTodayFact(),
      builder: (_, __) {
        return const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(8.0), child: _ToolsRow()),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: _FactView(),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _ToolsRow extends StatelessWidget {
  const _ToolsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OutlinedButton(
          onPressed: () => context.read<NumberFactModel>().loadFact(),
          child: const Text('Random'),
        ),
      ],
    );
  }
}

class _FactView extends StatelessWidget {
  const _FactView({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<NumberFactState>();
    return state.when(
      initial: () => const SizedBox.shrink(),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error) => Center(child: Text(error)),
      loaded: (fact) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(fact.title, style: Theme.of(context).textTheme.titleLarge),
          h22,
          Text(fact.text, style: Theme.of(context).textTheme.bodyLarge),
        ],
      ),
    );
  }
}

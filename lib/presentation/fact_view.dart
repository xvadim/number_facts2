import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../application/number_fact_view_model.dart';
import '../core/constants/sizes.dart';
import '../core/injection/injection.dart';
import '../domain/numbers_api_repository.dart';

class FactView extends StatelessWidget {
  const FactView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NumberFactViewModel>(
      create: (_) => getIt.get<NumberFactViewModel>()..loadTodayFact(),
      builder: (_, __) {
        return const Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
      mainAxisSize: MainAxisSize.min,
      children: [
        OutlinedButton(
          onPressed: () => context.read<NumberFactViewModel>().loadFact(),
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
    final isLoading = context.select<NumberFactViewModel, bool>(
      (model) => model.isLoading,
    );
    final text = context.select<NumberFactViewModel, String>(
      (model) => model.factText,
    );
    final title = context.select<NumberFactViewModel, String>(
      (model) => model.factTitle,
    );
    return isLoading
        ? const Center(child: CircularProgressIndicator())
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(title, style: Theme.of(context).textTheme.titleLarge),
              h22,
              Text(text, style: Theme.of(context).textTheme.bodyLarge),
            ],
          );
  }
}

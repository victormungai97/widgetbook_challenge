import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:widgetbook_challenge/blocs/bloc.dart';
import 'package:widgetbook_challenge/controllers/controller.dart';

/// The app.
class App extends StatelessWidget {
  /// Creates a new instance of [App].
  const App({
    Key? key,
    required GreetingsController greetingsController,
  })  : _greetingsController = greetingsController,
        super(key: key);

  ///
  static const bodyWidgetKey = Key('bodyWidget');

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _greetingsController,
      child: BlocProvider(
        create: (context) => GreetingsBloc(_greetingsController),
        child: MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: const Text('Interview Challenge'),
            ),
            body: const Center(child: _Body(key: bodyWidgetKey)),
          ),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }

  final GreetingsController _greetingsController;
}

/// the body
class _Body extends HookWidget {
  const _Body({Key? key}) : super(key: key);

  static const submitNameButtonKey = Key('submitName');
  static const inputNameTextFieldKey = Key('inputName');
  static const resetPageButtonKey = Key('resetPage');

  @override
  Widget build(BuildContext context) {
    final state = context.watch<GreetingsBloc>().state;
    final name = useState<String>('');
    final textController = useTextEditingController();

    state.whenOrNull(
      reset: () {
        name.value = '';
        textController.text = '';
      },
    );

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: FlutterLogo(size: 120),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Center(
              child: Text(
                'Hello Flutter enthusiast!',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Center(
              child: TextField(
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  hintText: 'John',
                  labelText: 'Enter a name',
                ),
                controller: textController,
                onChanged: (str) => name.value = str,
                key: inputNameTextFieldKey,
              ),
            ),
          ),
          // listen for changes in state and update UI accordingly
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: state.whenOrNull(
              success: (response) => Center(
                child: Text(
                  response ?? 'Hello',
                  style: const TextStyle(color: Colors.green, fontSize: 18),
                ),
              ),
              failure: (message) => Center(
                child: Text(
                  message,
                  style: const TextStyle(color: Colors.red),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: state.whenOrNull(
              initial: () => _SubmitButton(
                name: name.value,
                key: submitNameButtonKey,
              ),
              load: () => const Center(child: CircularProgressIndicator()),
              success: (response) => Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: _SubmitButton(
                      name: name.value,
                      key: submitNameButtonKey,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: _ResetButton(key: resetPageButtonKey),
                  ),
                ],
              ),
              failure: (message) => Row(
                children: [
                  Expanded(
                    child: _SubmitButton(
                      name: name.value,
                      key: submitNameButtonKey,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: _ResetButton(key: resetPageButtonKey),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Submission button
class _SubmitButton extends StatelessWidget {
  const _SubmitButton({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const Icon(Icons.send),
      onPressed: () {
        context.read<GreetingsBloc>().add(GreetingsEvent.requested(name: name));
      },
      label: const Text('Submit'),
    );
  }
}

/// Reset button
class _ResetButton extends StatelessWidget {
  const _ResetButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(primary: Colors.black),
      icon: const Icon(Icons.undo),
      onPressed: () {
        context.read<GreetingsBloc>().add(const GreetingsEvent.reset());
      },
      label: const Text('Reset'),
    );
  }
}

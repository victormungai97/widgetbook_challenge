import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:widgetbook_challenge/blocs/bloc.dart';

/// The app.
class App extends StatelessWidget {
  /// Creates a new instance of [App].
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GreetingsBloc(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Interview Challenge'),
          ),
          body: const Center(child: _Body()),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

/// the body
class _Body extends HookWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<GreetingsBloc>().state;
    final name = useState<String>('');

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
                onChanged: (str) => name.value = str,
              ),
            ),
          ),
          // listen for changes in state and update UI accordingly
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: state.when(
              initial: () => _SubmitButton(name: name.value),
              loading: () => const Center(child: CircularProgressIndicator()),
              completed: (response) => Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: _SubmitButton(name: name.value),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        response ?? 'Hello',
                        style:
                            const TextStyle(color: Colors.green, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
              exception: (message) => Row(
                children: [
                  Expanded(
                    child: _SubmitButton(name: name.value),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        message,
                        style: const TextStyle(color: Colors.red),
                      ),
                    ),
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
        context.read<GreetingsBloc>().add(GreetingsEvent.request(name: name));
      },
      label: const Text('Submit'),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Hello World'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Are you sure?'),
        content: const Text(
          'Commodo mollit est dolore nostrud fugiat. Sunt eiusmod velit occaecat commodo esse deserunt eiusmod reprehenderit in sunt. Do sunt labore magna occaecat laboris enim in voluptate qui consectetur incididunt exercitation nostrud. Enim incididunt voluptate adipisicing aliqua ullamco id velit eiusmod eu officia est eu. Adipisicing ipsum commodo consectetur dolor aliqua voluptate sit mollit. Nostrud nostrud fugiat eiusmod labore sint do nostrud tempor dolore fugiat sint incididunt est voluptate. Culpa eu et sit laborum.',
        ),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () {},
            child: const Text('Acept'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars and dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                    'Reprehenderit minim sunt elit dolore aute ea. Duis deserunt do sint nostrud. Esse quis deserunt qui irure Lorem dolor. Et anim fugiat culpa et excepteur esse. Aliqua qui cillum labore qui Lorem eu.',
                  ),
                ]);
              },
              child: const Text('Licenses used'),
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Show dialog'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Show SnackBar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}

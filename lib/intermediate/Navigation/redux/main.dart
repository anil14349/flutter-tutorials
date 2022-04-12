import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
//Redux

//Actions for redux, these are the things we do
enum Actions { Increment, Decrement }

//The reducer will take the action and create a new state
int reducer(int state, dynamic action) {
  if (action == Actions.Increment) state++;
  if (action == Actions.Decrement) state--;
  return state;
}

void main() {
  final store = Store<int>(reducer, initialState: 0);
  runApp(MyApp(
    store: store,
  ));
}

//Stateless because redux is handling the state, but we can mix them
class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.store}) : super(key: key);
  final Store<int> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<int>(
        store: store,
        child: MaterialApp(
          title: 'Flutter Redux',
          home: Scaffold(
            appBar: AppBar(
              title: const Text('Redux App'),
            ),
            body: Container(
                padding: const EdgeInsets.all(32.0),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      //Make a connector to get the updates when the store changes
                      StoreConnector<int, String>(
                        converter: (store) => store.state.toString(),
                        builder: (context, count) {
                          return Text(count,
                              style: const TextStyle(fontSize: 24.0));
                        },
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () =>
                                  store.dispatch(Actions.Increment)),
                          IconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: () =>
                                  store.dispatch(Actions.Decrement)),
                        ],
                      ),
                    ],
                  ),
                )),
          ),
        ));
  }
}

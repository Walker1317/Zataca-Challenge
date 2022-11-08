import 'package:flutter/material.dart';
import 'package:zataca_challenge/bloc/tabs/tabs_bloc.dart';
import 'package:zataca_challenge/bloc/tabs/tabs_event.dart';
import 'package:zataca_challenge/bloc/tabs/tabs_state.dart';

class TabsTile extends StatefulWidget {
  const TabsTile({super.key});

  @override
  State<TabsTile> createState() => _TabsTileState();
}

class _TabsTileState extends State<TabsTile> {
  late final TabsBloc bloc;

  final TextEditingController controllerTextField = TextEditingController();

  @override
  void initState() {
    super.initState();
    bloc = TabsBloc();
    bloc.inputTabs.add(LoadTabsEvent());
  }
  
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<TabsState>(
      stream: bloc.stream,
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return Container();
          case ConnectionState.active:
          case ConnectionState.done:

            final tabs = snapshot.data?.tabs;
            controllerTextField.text = tabs!.tabText!;
            return Column(
              children: [
                SizedBox(
                  height: 30,
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: tabs.tab1 != null ?
                          (){
                            FocusScope.of(context).unfocus();
                            bloc.inputTabs.add(SelectTab1(tabs: tabs));
                          } : null,
                          child: const Text("Tab 1")
                        )
                      ),
                      const SizedBox(width: 5,),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: tabs.tab2 != null ?
                          (){
                            bloc.inputTabs.add(SelectTab2(tabs: tabs));
                          } : null,
                          child: const Text("Tab 2")
                        )
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15,),
                TextField(
                  controller: controllerTextField,
                  maxLines: 4,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder()
                  ),
                ),
              ],
            );

          default:
        }

        return Container();
      }
    );
  }
}
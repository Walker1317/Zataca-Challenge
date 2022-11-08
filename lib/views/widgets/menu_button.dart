import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      padding: const EdgeInsets.all(12),
      child: ElevatedButton(
        onPressed: (){
          showModalBottomSheet(
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
            builder: (context){
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 30),
                    width: 75,
                    height: 5,
                    decoration: BoxDecoration(
                      color: const Color(0xFFEFF1F7),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  ListTile(
                    onTap: () => Navigator.pop(context),
                    leading: const Icon(Icons.folder),
                    title: const Text("Opción 1"),
                  ),
                  ListTile(
                    onTap: () => Navigator.pop(context),
                    leading: const Icon(Icons.note_outlined),
                    title: const Text("Opción 2"),
                  ),
                  ListTile(
                    onTap: () => Navigator.pop(context),
                    leading: const Icon(Icons.block),
                    title: const Text("Opción 3"),
                  ),
                  ListTile(
                    onTap: () => Navigator.pop(context),
                    leading: const Icon(Icons.report),
                    title: const Text("Opción 4"),
                  ),
                ],
              );
            }
          );
        },
        style: ElevatedButton.styleFrom(
          alignment: Alignment.center,
          elevation: 0,
          padding: const EdgeInsets.all(0),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        child: const Icon(Icons.settings)
      ),
    );
  }
}
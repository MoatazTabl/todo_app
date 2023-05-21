
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/providers/bottom_nav_bar_provider.dart';
import 'package:todo/screens/settings_screen.dart';
import 'package:todo/screens/task_screen.dart';
import 'package:todo/screens/widgets/show_add_task_bottom_sheet.dart';

//ignore: must_be_immutable
class HomeLayout extends StatefulWidget {
  static const String routeName = "HomeLayout";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  List<Widget> tabs = [const TaskScreen(), const SettingsScreen()];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BottomNavBarProvider(),
      builder: (context, child) {
        var provider = Provider.of<BottomNavBarProvider>(context);
        return Scaffold(
          extendBody: true,
          appBar: AppBar(
            title: Text(
              "To Do List",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          body: tabs[provider.index],

          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showAddTaskBottomSheet();
            },

            child: const Icon(
              Icons.add,
              size: 30,
              color: Colors.white,
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

          bottomNavigationBar: BottomAppBar(
            clipBehavior: Clip.antiAlias,
            notchMargin: 7,
            padding: const EdgeInsets.all(0),
            shape: const CircularNotchedRectangle(),
            child: BottomNavigationBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              currentIndex: provider.index,
              onTap: (value) {
                provider.changeSelectedItem(value);
              },
              iconSize: MediaQuery.of(context).size.width*0.06,
              
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.list), label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings,color: Colors.black,), label: ""),
              ],
            ),
          ),
        );
      },
    );
  }

  showAddTaskBottomSheet(){
    showModalBottomSheet(context: context, builder: (context) => ShowAddTaskBottomSheet(),);
  }
}

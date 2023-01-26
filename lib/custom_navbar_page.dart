import 'package:flutter/material.dart';

class CustomNavBarPage extends StatefulWidget {
  const CustomNavBarPage({Key? key}) : super(key: key);

  @override
  State<CustomNavBarPage> createState() => _CustomNavBarPageState();
}

class _CustomNavBarPageState extends State<CustomNavBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        backgroundColor: Colors.red,
        body: const SingleChildScrollView(),
        bottomNavigationBar: bottomNavigationBar);
  }

  Widget get bottomNavigationBar {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 41, 41, 41),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
        ),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0.0, 3.0),
              blurRadius: 4.00,
              color: Colors.grey.shade400,
              spreadRadius: 1.00),
        ],
      ),
      height: 70,
      width: MediaQuery.of(context).size.width / 1,
      child: ClipRRect(
          clipBehavior: Clip.hardEdge,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
          ),
          child: BottomNavigationBar(
            backgroundColor: const Color.fromARGB(255, 41, 41, 41),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            // onTap: onTabTapped,
            // new
            //currentIndex: _currentIndex,
            // new
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.phone,
                  size: 30,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.mail,
                  size: 30,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    size: 30,
                  ),
                  label: '')
            ],
          )),
    );
  }
}

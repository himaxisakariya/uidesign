import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/screens/Registerpage/widgets.dart';
import 'package:uidesign/screens/homepage/homepagewidgets.dart';
import 'package:uidesign/screens/loction/category_page/categorywidget.dart';

class select_category extends StatefulWidget {
  const select_category({Key? key}) : super(key: key);

  @override
  State<select_category> createState() => _select_categoryState();
}

class _select_categoryState extends State<select_category> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0xff355E3B),
        statusBarIconBrightness: Brightness.light,
      ),
    );
    return Scaffold(
      backgroundColor: Fixcolors.green.withOpacity(0.5),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: SizedBox(
                height: 40,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white54,
                        )),
                    const SizedBox(
                      width: 70,
                    ),
                    const textlist(
                      text: Stringtext.postad,
                      color: Colors.white54,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    )
                  ],
                )),
          ),
          sizebox(),
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
                color: Fixcolors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )),
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    child: ListView.builder(
                      itemCount: categoryname.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: InkWell(
                            child: textlist(
                              text: categoryname[index],
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}

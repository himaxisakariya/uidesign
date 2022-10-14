import 'package:flutter/material.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/Image.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/screens/homepage/homepagewidgets.dart';
import 'package:uidesign/screens/loction/category_page/categorywidget.dart';

class Category_Page extends StatefulWidget {
  const Category_Page({Key? key}) : super(key: key);

  @override
  State<Category_Page> createState() => _Category_PageState();
}

class _Category_PageState extends State<Category_Page> {
  final List<bool> s =
      List.generate(categoryname.length, (index) => false);

  final scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Fixcolors.green,
      body: Column(children: [
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
                        color: Fixcolors.white,
                      )),
                  const SizedBox(
                    width: 50,
                  ),
                  const textlist(
                    text: Stringvalue.selectcate,
                    color: Fixcolors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  )
                ],
              )),
        ),
        Expanded(
          child: Container(
              decoration: const BoxDecoration(
                  color: Fixcolors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: GridView.builder(
                itemCount: categoryimage.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 3, crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        border: Border.all(
                            width: 1, color: Fixcolors.grey.withOpacity(0.2))),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25.0),
                            topRight: Radius.circular(25.0),
                          )),
                          context: context,
                          builder: (context) {
                            return StatefulBuilder(
                              builder: (context, setState) {
                                return Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.85,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: SizedBox(
                                            child: ListView.builder(
                                              itemCount: subcategory.length,
                                              itemBuilder: (context, index) {
                                                return ListTile(
                                                  onTap: () {
                                                    setState(() {
                                                      s[index] =
                                                          !s[index];
                                                    });
                                                  },
                                                  shape:
                                                      const RoundedRectangleBorder(
                                                    side: BorderSide(
                                                        color: Colors.grey,
                                                        width: 0.05),
                                                  ),
                                                  title: Container(
                                                    margin: const EdgeInsets.only(left: 20),
                                                    child: textlist(
                                                      text: subcategory[index],
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  trailing: SizedBox(
                                                    height: 18,
                                                    width: 18,
                                                    child: Image.asset(
                                                      Images.categorytrue,
                                                      color: s[index]
                                                          ? Fixcolors.green
                                                          : Fixcolors.grey,
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          style: const ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Fixcolors.green)),
                                          child: const Text("Apply"),
                                        )
                                      ],
                                    ));
                              },
                            );
                          },
                        );
                      },
                      child: GridTileBar(
                        leading: Container(
                          height: 40,
                          width: 40,
                          margin: const EdgeInsets.only(
                              top: 7, left: 5, bottom: 8, right: 5),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xff2ECC71).withOpacity(0.1),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(
                                categoryimage[index],
                              )),
                        ),
                        title: textlist(
                          text: categoryname[index],
                          fontSize: 14,
                          color: Fixcolors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  );
                },
              )),
        ),
      ]),
    );
  }
}

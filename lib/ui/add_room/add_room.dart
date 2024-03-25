import 'dart:async';

import 'package:chat/model/category.dart';
import 'package:chat/ui/add_room/add_room_navigator.dart';
import 'package:chat/ui/add_room/add_room_view_model.dart';
import 'package:chat/utils.dart' as utils;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddRoom extends StatefulWidget {
  static const String routeName = 'room';

  const AddRoom({super.key});

  @override
  State<AddRoom> createState() => _AddRoomState();
}

class _AddRoomState extends State<AddRoom> implements AddRoomNavigator {
  AddRoomViewModel viewModel = AddRoomViewModel();
  String roomTitle = '';
  String roomDescription = '';
  var formKey = GlobalKey<FormState>();
  var categoryList = Category.getCategory();
  late Category selectedItem;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    viewModel.navigator = this;
    selectedItem = categoryList[0];
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => viewModel,
      child: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          Image.asset('assets/images/main_background.png',
              fit: BoxFit.fill, width: double.infinity),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              elevation: 0,
              title: const Text('Add Room'),
              centerTitle: true,
            ),
            body: Container(
              margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 32),
              // width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ]),
              child: Form(
                key: formKey,
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          'Create New Room',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Image.asset('assets/images/group.png'),
                        TextFormField(
                          decoration:
                              const InputDecoration(hintText: 'Enter Room Title'),
                          onChanged: (text) {
                            roomTitle = text;
                          },
                          validator: (text) {
                            if (text == null || text.trim().isEmpty) {
                              return 'Please Enter Room Title';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: DropdownButton<Category>(
                                  value: selectedItem,
                                  items: categoryList
                                      .map((category) =>
                                          DropdownMenuItem<Category>(
                                              value: category,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(category.title),
                                                  Image.asset(category.image),
                                                ],
                                              )))
                                      .toList(),
                                  onChanged: (newCategory) {
                                    if (newCategory == null) return;
                                    selectedItem = newCategory;
                                    setState(() {});
                                  }),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              hintText: 'Enter Room Description'),
                          maxLines: 4,
                          minLines: 4,
                          onChanged: (text) {
                            roomDescription = text;
                          },
                          validator: (text) {
                            if (text == null || text.trim().isEmpty) {
                              return 'Please Enter Room Description';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              validateForm();
                            },
                            child: const Text('Add Room')),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void validateForm() {
    if (formKey.currentState?.validate() == true) {
      //add room
      viewModel.addRoom(roomTitle, roomDescription, selectedItem.id);
    }
  }

  @override
  void hideLoading() {
    utils.hideLoading(context);
  }

  @override
  void navigateToHome() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pop(context);
    });
  }

  @override
  void showLoading() {
    utils.showLoading(context);
  }

  @override
  void showMessage(String message) {
    utils.showMessage(message, context, 'OK', (context) {
      Navigator.pop(context);
    });
  }
}

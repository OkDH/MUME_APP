import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mailer/smtp_server.dart';
// import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:mailer/mailer.dart';
import 'package:mume/View/colors.dart';

class PageAsk extends StatefulWidget {
  const PageAsk({Key? key}) : super(key: key);

  static final routeName = '/' + (PageAsk).toString();
  
  @override
  PageAskState createState() => PageAskState();
}

class PageAskState extends State<PageAsk> {
  final textController = TextEditingController();
  final _categories = ["시스템 문의", "건의사항"];
  var _selectCategory = "시스템 문의";

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Container(
          color: ColorManager.onPrimary,
          child: Scaffold(
            resizeToAvoidBottomInset: true,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, MediaQuery.of(context).padding.top, 0, 3),
                  decoration: const BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 15.0,
                            offset: Offset(0.0, 0.75)
                        )
                      ],
                      color: ColorManager.onPrimary
                  ),
                  // color: ColorManager.onPrimary,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.arrow_back, color: ColorManager.primary),
                        padding: const EdgeInsets.all(20),
                      )
                    ],
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 40, 24, 40),
                  child: Text("문의하기", style: TextStyle(fontSize: 26, color: ColorManager.textOnWhite),),
                ),

                // Padding(
                //   padding: const EdgeInsets.fromLTRB(24, 0, 24, 20),
                //   child: Container(
                //     decoration: BoxDecoration(
                //       color: ColorManager.onPrimary,
                //       borderRadius: BorderRadius.circular(10),
                //       border: Border.all(color: ColorManager.textOnWhite.withOpacity(0.3)),
                //     ),
                //     child: Column(children: [
                //       const SizedBox(height: 18,),
                //       Row(
                //         mainAxisSize: MainAxisSize.max,
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //         Text("카테고리 선택 후 ", style: TextStyle(
                //             color: ColorManager.textOnWhite,
                //             fontSize: 16),),
                //           Text("Next", style: TextStyle(
                //             fontWeight: FontWeight.bold,
                //               color: ColorManager.primary,
                //               fontSize: 16),),
                //           Text(" 버튼을 눌러주세요.", style: TextStyle(
                //               color: ColorManager.textOnWhite,
                //               fontSize: 16),),
                //       ],),
                //
                //       const SizedBox(height: 18,),
                //       Container(
                //         width: double.infinity, height: 3,
                //         decoration: const BoxDecoration(
                //           color: ColorManager.primary,
                //           borderRadius: BorderRadius.only(bottomLeft: Radius.circular(500), bottomRight: Radius.circular(500)),
                //         )
                //       )
                //     ],),
                //   ),
                // ),

                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 0, 24, 10),
                  child: Text("카테고리", style: TextStyle(fontSize: 20, color: ColorManager.textOnWhite, fontWeight: FontWeight.bold),),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 0, 24, 20),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ColorManager.onPrimary,
                      border: Border.all(color: ColorManager.textOnWhite.withOpacity(0.3), width: 1),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: DropdownButton(
                        value: _selectCategory,
                        isExpanded: true,
                        underline: DropdownButtonHideUnderline(child: Container()),
                        items: _categories.map(
                                (value) => DropdownMenuItem(
                                  child: Text(value, style: const TextStyle(color: ColorManager.textOnWhite),),
                                  value: value,)
                        ).toList(),
                        onChanged: (value) => setState(() {
                          _selectCategory = value.toString();
                        }),
                      ),
                    ),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 0, 24, 20),
                  child: Text("수신 이메일", style: TextStyle(fontSize: 20, color: ColorManager.textOnWhite, fontWeight: FontWeight.bold),),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      // controller: textController,
                      cursorColor: ColorManager.primary,
                      decoration:  InputDecoration(
                          hintText: "답변 받으실 이메일을 입력해주세요.",
                          hintStyle: const TextStyle(color: ColorManager.textOnWhite),
                          errorStyle: const TextStyle(fontSize: 18.0),
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder:  OutlineInputBorder(
                            borderRadius:  BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: ColorManager.textOnWhite.withOpacity(0.3),),
                          ),
                          focusedBorder:  OutlineInputBorder(
                              borderRadius:  BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: ColorManager.primary.withOpacity(0.5), width: 3.0
                              )),
                          border: OutlineInputBorder(
                              borderRadius:  BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                  color: ColorManager.textOnWhite, width: 1.0))),
                      style: TextStyle(color: ColorManager.textOnWhite.withOpacity(0.3)),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '필수 작성 항목입니다.';
                        }
                        return null;
                      },
                    ),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 0, 24, 20),
                  child: Text("내용", style: TextStyle(fontSize: 20, color: ColorManager.textOnWhite, fontWeight: FontWeight.bold),),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                    child: TextFormField(
                      expands: true,
                      minLines: null,
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                      controller: textController,
                      cursorColor: ColorManager.primary,
                      decoration:  InputDecoration(
                          hintText: "내용을 입력해주세요.",
                          hintStyle: const TextStyle(color: ColorManager.textOnWhite),
                          errorStyle: const TextStyle(fontSize: 18.0),
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder:  OutlineInputBorder(
                            borderRadius:  BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: ColorManager.textOnWhite.withOpacity(0.3),),
                          ),
                          focusedBorder:  OutlineInputBorder(
                              borderRadius:  BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: ColorManager.primary.withOpacity(0.5), width: 3.0
                              )),
                          border: OutlineInputBorder(
                              borderRadius:  BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                  color: ColorManager.textOnWhite, width: 1.0))),
                      style: TextStyle(color: ColorManager.textOnWhite.withOpacity(0.3)),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '필수 작성 항목입니다.';
                        }
                        return null;
                      },
                    ),
                  ),
                ),


                // const Spacer(),

                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 0, 24, 20),
                  child: Text("이미지 첨부", style: TextStyle(fontSize: 20, color: ColorManager.textOnWhite, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(24, 0, 24, 20),
                  child: Container(
                    // color: ColorManager.onPrimary,
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 15.0,
                              offset: Offset(0.0, 0.75)
                          )
                        ],
                        color: ColorManager.onPrimary
                    ),
                    child: Center(
                      child: Icon(Icons.camera_alt),
                    ),
                  ),
                ),


                const Spacer(),
                Padding(
                    padding: EdgeInsets.fromLTRB(24, 0, 24, MediaQuery.of(context).padding.bottom + 10),
                    child: Row(
                      children: [
                        // const Spacer(),
                        Expanded(
                          child: TextButton(
                              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(ColorManager.primaryButton), padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(12, 10, 12, 10))),
                              onPressed: _sendEmail,
                              child: const Text("Next", style: TextStyle(color: ColorManager.onPrimary, fontSize: 20),),
                          ),
                        ),
                      ],
                    )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _sendEmail() {
    // const from = "ocko112@gmail.com";
    const from = "myohoon95@gmail.com";
    // final content = "";
    //
    // final Email email = Email(
    //   body: content,
    //   subject: '[MUME] ${_selectCategory}',
    //   recipients: [from],
    //   // attachmentPaths: ['/path/to/attachment.zip'],
    //   isHTML: false,
    // );
    //
    // FlutterEmailSender.send(email)
    //     .then((_) => Navigator.pop(context))
    //     .catchError((e) => debugPrint("main error == ${e.toString()}"));



    String username = 'ocko.mume.mail@gmail.com';
    String password = 'mume!@34';

    final smtpServer = gmail(username, password);

    final message = Message()
      ..from = Address(username, 'Your name')
      ..recipients.add(from)
      ..subject = 'Test Dart Mailer library :: 😀 :: ${DateTime.now()}'
      ..text = 'This is the plain text.\nThis is line 2 of the text part.'
      ..html = "<h1>Test</h1>\n<p>Hey! Here's some HTML content</p>";

    send(message, smtpServer).then((rsp) =>{
      rsp.toString(),
      Navigator.pop(context)
    })
    .catchError((e) => debugPrint("main error == ${e.toString()}"));
  }
}
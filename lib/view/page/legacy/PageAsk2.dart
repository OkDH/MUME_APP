import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:mailer/smtp_server.dart';
// import 'package:flutter_email_sender/flutter_email_sender.dart';
// import 'package:mailer/mailer.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mume/view/resource/color.dart';

class PageAsk2 extends StatefulWidget {
  const PageAsk2({Key? key}) : super(key: key);

  static final routeName = '/' + (PageAsk2).toString();
  
  @override
  PageAsk2State createState() => PageAsk2State();
}

class PageAsk2State extends State<PageAsk2> {
  bool _isLoading = false;

  //카테고리
  final _categories = ["시스템 문의", "건의사항"];
  var _selectCategory = "시스템 문의";

  //이메일
  final String _reg = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  final FocusNode _emailFocus = FocusNode();
  String _emailText = "";
  // final String _toTest = "myohoon95@gmail.com";

  //이미지
  XFile? _file;
  final ImagePicker _picker = ImagePicker();

  //내용
  final FocusNode _contentFocus = FocusNode();
  String _contentText = "";
  final int _contentMin = 20;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _emailFocus.dispose();
    _contentFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(_isLoading ? false : true),
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: Container(
            color: MyColor.onPrimary,
            child: Scaffold(
              // bottomSheet: _bottomSheet(),
              resizeToAvoidBottomInset: true,
              body: Stack(
                children: [
                  Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _appBar(),

                    Expanded(
                      child: ListView(children: [
                        _title("문의하기"),

                        // _description("어떠한 문의든 환영합니다^^"),

                        _defaultBox(
                          title: "카테고리",
                          child: _categoriesDropdownButton(),
                        ),

                        _defaultBox(
                          title: "이메일",
                          height: 100,
                          child: _textField(
                            focus: _emailFocus,
                            isExpanded: true,
                            hint: "답변 받으실 이메일을 입력해주세요.",
                          ),
                        ),

                        _defaultBox(
                          title: "첨부 이미지",
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                            child: TextButton(
                                onPressed: () => _showSelectImageSourceSheet(context),
                                child: _file == null
                                    ? const Text("이미지 선택", style: TextStyle(color: MyColor.accent, fontWeight: FontWeight.bold, fontSize: 18),)
                                    : Text(_file!.name, maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(color: MyColor.textOnWhite, fontSize: 18,),)
                            ),
                          ),
                        ),

                        _defaultBox(
                          title: "내용",
                          height: 300,
                          child: _textField(
                            focus: _contentFocus,
                            isExpanded: true,
                            inputType: TextInputType.multiline,
                            alignVertical: TextAlignVertical.top,
                            hint: "내용을 입력해주세요.",
                          ),
                        ),
                      ],),
                    ),
                  ],
                ),
                _isLoading
                  ? Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IgnorePointer(
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          color: MyColor.onPrimary.withOpacity(0.5),
                            child: const Center(
                              child: CircularProgressIndicator(
                                color: MyColor.primary,
                              ),
                            )
                          )
                        ),
                    ),
                  )
                  : Container()
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _sendEmailSMTP() {
    // if(_isLoading) return;
    //
    // try{
    //   String postUser = 'ocko.mume.mail@gmail.com';
    //   String password = 'mume!@34';
    //   final smtpServer = gmail(postUser, password);
    //   debugPrint("email == $_emailText, content == $_contentText, img == ${_file?.name}");
    //
    //   if(_emailText.isEmpty || !RegExp(_reg).hasMatch(_emailText)){
    //     _showMyDialog(
    //         title: "이메일",
    //         desc: "이메일을 확인해주세요.",
    //         func: () => _emailFocus.requestFocus()
    //     );
    //     return;
    //   }
    //
    //   if(_contentText.isEmpty || _contentText.length < _contentMin){
    //     _showMyDialog(
    //         title: "내용",
    //         desc: "내용을 확인해주세요.\n$_contentMin자 이상 작성해주세요.",
    //         func: () => _contentFocus.requestFocus()
    //     );
    //     return;
    //   }
    //
    //   final message = Message()
    //     ..from = Address(postUser, _emailText)
    //     ..recipients.add(postUser)
    //     ..subject = '[MUME] 문의_${_selectCategory}'
    //   // ..subject = '[MUME] 문의_${_selectCategory} - ${_contentText.length >= 10 ? _contentText.substring(0, 9) + "..." : _contentText}'
    //     ..text = _contentText;
    //
    //   if(_file != null && _file!.path.isNotEmpty){
    //     message.attachments = [FileAttachment(File(_file!.path))];
    //   }
    //
    //   setState(() => _isLoading = true);
    //   send(message, smtpServer).then((rsp) =>{
    //     setState((){ _isLoading = false; }),
    //     _showMyDialog(
    //       title: "문의 완료",
    //       desc: "성공적으로 전송하였습니다.",
    //       func: () => Navigator.pop(context)
    //     ),
    //   }).catchError((e) {
    //     debugPrint("main error == ${e.toString()}");
    //     setState(() => _isLoading = false);
    //   });
    // } on Exception catch (e){
    //   _showMyDialog(
    //       title: "오류",
    //       desc: "잠시 후 다시 시도해주세요.");
    //    debugPrint("error == " + e.toString());
    //   debugPrint("main error == ${e.toString()}");
    //   setState(() => _isLoading = false);
    // }
  }

  Widget _appBar() {
    return Container(
      padding: EdgeInsets.fromLTRB(0, MediaQuery.of(context).padding.top, 0, 3),
      decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black12,
                blurRadius: 15.0,
                offset: Offset(0.0, 0.75)
            )
          ],
          color: MyColor.onPrimary
      ),
      // color: MyColor.onPrimary,
      child: Row(
        children: [
          IconButton(
            onPressed: (){
              if(_isLoading) return;
              Navigator.pop(context);
            } ,
            icon: const Icon(Icons.arrow_back, color: MyColor.primary),
            padding: const EdgeInsets.all(20),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,0,14,0),
            child: TextButton(
              onPressed: _sendEmailSMTP,
              child: const Text("보내기", style: TextStyle(color: MyColor.primary, fontSize: 18, fontWeight: FontWeight.bold),),
            ),
          )
        ],
      ),
    );
  }
  Widget _title(String text) {
    return _subTitle(
      text: text,
      paddingT: 35,
      paddingB: 30,
      fontSize: 26,
      fontWeight: null
    );
  }

  Widget _subTitle({
    required String text,
    double paddingL = 24,
    double paddingT = 0,
    double paddingR = 24,
    double paddingB = 10,
    double fontSize = 18,
    FontWeight? fontWeight = FontWeight.bold,
  }) {
    return Padding(
      padding: EdgeInsets.fromLTRB(paddingL, paddingT, paddingR, paddingB),
      child: Text(text, style: TextStyle(fontSize: fontSize, color: MyColor.textOnWhite, fontWeight: fontWeight),),
    );
  }

  Widget _textField({
    required String hint,
    required FocusNode focus,
    TextInputType inputType = TextInputType.emailAddress,
    TextEditingController? controller,
    bool isExpanded = false,
    TextAlignVertical alignVertical = TextAlignVertical.center,
  }) {

    final content = Padding(
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
      child: TextFormField(
        readOnly: _isLoading,
        focusNode: focus,
        // initialValue: kReleaseMode ? null : _toTest,
        textAlignVertical: alignVertical,
        expands: isExpanded,
        minLines: isExpanded ? null : 1,
        maxLines: isExpanded ? null : 1,
        keyboardType: inputType,
        controller: controller,
        cursorColor: MyColor.primary,
        decoration:  InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(24, alignVertical == TextAlignVertical.top ? 24 : 0, 24, alignVertical == TextAlignVertical.top ? 24 : 0),
            hintText: hint,
            hintStyle: TextStyle(color: MyColor.textOnWhite.withOpacity(0.5)),
            errorStyle: const TextStyle(fontSize: 18.0),
            filled: true,
            fillColor: Colors.white,
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.zero, topRight: Radius.zero, bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5), ),
              borderSide: BorderSide(color: MyColor.boxBorder,),
            ),
            focusedBorder:  OutlineInputBorder(
                borderRadius: const BorderRadius.only(topLeft: Radius.zero, topRight: Radius.zero, bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5), ),
                borderSide: BorderSide(
                    color: MyColor.primary.withOpacity(0.5), width: 3.0
                )),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.only(topLeft: Radius.zero, topRight: Radius.zero, bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5), ),
                borderSide: BorderSide(color: MyColor.textOnWhite, width: 1.0))
            ),
        style: const TextStyle(color: MyColor.textOnWhite),
        onChanged: (text) =>
          inputType == TextInputType.emailAddress
              ? _emailText = text
              : _contentText = text,
      ),
    );

    return content;
  }

  Widget _categoriesDropdownButton() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
      child: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
          child: DropdownButton(
            value: _selectCategory,
            isExpanded: true,
            underline: DropdownButtonHideUnderline(child: Container()),
            items: _categories.map(
                    (value) => DropdownMenuItem(
                  child: Text(value, style: const TextStyle(color: MyColor.textOnWhite),),
                  value: value,)
            ).toList(),
            onChanged: (value) => setState(() {
              _selectCategory = value.toString();
            }),
          ),
        ),
      ),
    );
  }

  Widget _description(String s) {
    return Stack(
      children: <Widget>[
        Container(
          height: 100,
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(24, 0, 24, 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: const Color(0xff4e72df),
            border: Border.all(width: 1.0, color: const Color(0xffffffff)),
          ),
        ),
        Container(
          height: 95,
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(24, 0, 24, 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: const Color(0xffffffff),
            border: Border.all(width: 1.0, color: MyColor.boxBorder),
          ),
          child: Center(child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(s,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: MyColor.textOnWhite
                ),
              ),
            ],
          )),
        ),
      ],
    );
  }

  Widget _defaultBox({
    required String title,
    required Widget child,
    double titleHeight = 50,
    double height = 100,
  }) {
    return Stack(children: [
      Container(
        height: height,
        width: double.infinity,
        margin: const EdgeInsets.fromLTRB(24, 0, 24, 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: const Color(0xffffffff),
          border: Border.all(width: 1.0, color: MyColor.boxBorder),
          boxShadow: const [
            BoxShadow(
              color: Color(0x16000000),
              offset: Offset(0, 0),
              blurRadius: 30,
            ),
          ],
        ),
      ),
    Column(children: [
      Container(
        height: 50,
        width: double.infinity,
        margin: const EdgeInsets.fromLTRB(24, 0, 24, 0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(5.0),
            topRight: Radius.circular(5.0),
          ),
          color: const Color(0xfff8f8fc),
          border: Border.all(width: 1.0, color: MyColor.boxBorder),
        ),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 24,),
              Text(title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: MyColor.primary
                ),
              )
            ],
          ),
        ),
      ),
      Container(
        height: height - titleHeight,
        width: double.infinity,
        child: child
      )
    ],),
    ],);
  }

  void _onImageButtonPressed({
    // required BuildContext context,
    ImageSource source = ImageSource.gallery,
  }) async {
    _picker.pickImage(source: source, imageQuality: 10).then((imgFile) {
      if(imgFile != null) {
        setState(() {
          _file = imgFile;
          if(_contentText.isEmpty) _contentFocus.requestFocus();
        });
      }
    }).catchError((e){
      _file = null;
      // _showMyDialog(
      //     title: "오류",
      //     desc: "이미지를 가져올 수 없습니다. 잠시 후 다시 시도해주세요.");
      //  debugPrint("error == " + e.toString());
    });
  }

  Future<void> _showMyDialog({
    required String desc,
    void Function()? func,
    String title = "안내",
  }) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          titlePadding: EdgeInsets.zero,
          buttonPadding: EdgeInsets.zero,
          contentPadding: EdgeInsets.zero,
          insetPadding: EdgeInsets.zero,
          actionsPadding: EdgeInsets.zero,
          title: Container(
            padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
            color: MyColor.primary,
              child: Text(title, style: const TextStyle(color: MyColor.onPrimary),)
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Text(desc),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 16),
              child: Row(
                children: [
                  const Spacer(),
                  TextButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(MyColor.primaryButton), padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(12, 10, 12, 10))),
                    onPressed: (){
                      func?.call();
                      Navigator.of(context).pop();
                    },
                    child: const Text("Ok", style: TextStyle(color: MyColor.onPrimary, fontSize: 20),),
                  ),
                ],
              )
            )
          ],
        );
      },
    );
  }

  void _showSelectImageSourceSheet(BuildContext ctx) {
    if(_isLoading) return;

    showModalBottomSheet(
        elevation: 10,
        backgroundColor: Colors.white,
        context: ctx,
        builder: (ctx) => Container(
          width: double.infinity,
          height: 150,
          color: Colors.white54,
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(ctx);
                  _onImageButtonPressed(source: ImageSource.camera);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(width: 10,),
                    Icon(Icons.camera_alt),
                    SizedBox(width: 10,),
                    Text("카메라", style: TextStyle(fontSize: 18),),
                  ],
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pop(ctx);
                    _onImageButtonPressed(source: ImageSource.gallery);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(width: 10,),
                      Icon(Icons.image),
                      SizedBox(width: 10,),
                      Text("갤러리", style: TextStyle(fontSize: 18),),
                    ],
                  ),
              ),
          ],),
        ));
  }
}
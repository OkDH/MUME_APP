import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mume/view/page/base_page.dart';
import 'package:mume/view/resource/color.dart';
import 'package:mume/view/resource/sizes.dart';
import 'package:mume/model/dto/mume/infinite_detail.dart';
import 'package:mume/model/dto/mume/account.dart';
import 'package:mume/viewmodel/mume/infinite_modify_page_bloc.dart';
import 'package:mume/view/component/stock_item.dart';

class InfiniteModifyPage extends StatefulWidget {

  // 수정할 데이터
  final InfiniteDetail? infiniteDetail;

  // 종목 추가시 현재 view 계좌 id
  final String? selectedAccountId;
  final List<Account>? accountList;

  InfiniteModifyPage({this.selectedAccountId, this.accountList, this.infiniteDetail});

  _InfiniteModifyState createState() => _InfiniteModifyState();
}

class _InfiniteModifyState extends BasePageState<String, InfiniteModifyPageBloc, InfiniteModifyPage> {

  // 선택 계좌 index
  int _addSelectedIndex = 0;
  // 선택 symbol
  String? _addSelectedSymbol = null;

  final formKey = GlobalKey<FormState>();

  @override
  Widget buildPage(BuildContext context, Size windowSize) {

    // 현재 활성화 된 계좌 ID가 ALL이라면 첫번째 계좌
    if(widget.selectedAccountId! == "ALL") {
      _addSelectedIndex = 0;
    } else { // 아니라면 해당 계좌의 index값 찾기
      for(int i = 0; i < widget.accountList!.length; i++){
        if(widget.accountList![i].accountId.toString() == widget.selectedAccountId!){
          _addSelectedIndex = i;
          break;
        }
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("종목 추가"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: MyColor.background,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: StatefulBuilder(
        builder: (context, setState) {
          return SingleChildScrollView(
            child: Form(
              key: this.formKey,
              child: Container(
                padding: const EdgeInsets.all(Sizes.paddingBody),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(Sizes.paddingBody),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(Sizes.circularSmall))
                      ),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () async {
                              await showCupertinoModalPopup(
                                context: context,
                                builder: (context) => Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                        color: Color(0xffffffff),
                                        border: Border(
                                          bottom: BorderSide(
                                            color: Color(0xff999999),
                                            width: 0.0,
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            child: Text('계좌', style: Theme.of(context).textTheme.bodyText2),
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 16.0,
                                              vertical: 5.0,
                                            ),
                                          ),
                                          CupertinoButton(
                                            child: const Text('확인', style: TextStyle(fontSize: Sizes.textSmall),),
                                            onPressed: () {Navigator.of(context).pop();},
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 16.0,
                                              vertical: 5.0,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 200,
                                      child: CupertinoPicker(
                                        backgroundColor: Colors.white,
                                        itemExtent: 30,
                                        scrollController: FixedExtentScrollController(initialItem: _addSelectedIndex),
                                        onSelectedItemChanged: (int index){
                                          setState(() { _addSelectedIndex = index; });
                                        },
                                        children: widget.accountList!.map((e) => Text(e.accountAlias!)).toList(),
                                      ),
                                    ),
                                  ],
                                )
                              );
                            },
                            child: Container(
                              margin: const EdgeInsets.only(bottom: Sizes.paddingDefault),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("계좌", style: TextStyle(fontSize: Sizes.textMiddle, fontWeight: FontWeight.bold),),
                                  Container(
                                    child: Wrap(
                                      crossAxisAlignment: WrapCrossAlignment.center,
                                      children: [
                                        Text(widget.accountList![_addSelectedIndex].accountAlias!, style: const TextStyle(fontSize: Sizes.textMiddle, color: MyColor.primary),), 
                                        const Icon(Icons.arrow_forward_ios, size: Sizes.textMiddle, color: MyColor.primary),
                                      ],
                                    )
                                  )
                                ],
                              ),
                            )
                          ),
                          InkWell(
                            onTap: () async {
                              showStocksBottomSheet(context);
                            },
                            child: Container(
                              margin: const EdgeInsets.only(bottom: Sizes.paddingSideRatio),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("종목", style: TextStyle(fontSize: Sizes.textMiddle, fontWeight: FontWeight.bold),),
                                  Container(
                                    child: Wrap(
                                      crossAxisAlignment: WrapCrossAlignment.center,
                                      children: [
                                        Text(_addSelectedSymbol ?? "미선택", style: const TextStyle(fontSize: Sizes.textMiddle, color: MyColor.primary),), 
                                        const Icon(Icons.arrow_forward_ios, size: Sizes.textMiddle, color: MyColor.primary),
                                      ],
                                    )
                                  )
                                ],
                              ),
                            )
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("평단가", style: TextStyle(fontSize: Sizes.textMiddle, fontWeight: FontWeight.bold),),
                                Container(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 200,
                                        child: TextFormField(
                                          maxLength: 6,
                                          textAlign: TextAlign.right,
                                          keyboardType: TextInputType.number,
                                          decoration: const InputDecoration(
                                            hintText: "0",
                                            counterText: '',
                                            border: InputBorder.none,
                                            suffixIcon: Text(" \$"),
                                            suffixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
                                          ),
                                          validator: (val) {
                                            if(val!.length == 0){
                                              return "평단가를 입력해 주세요.";
                                            }
                                            return null;
                                          },
                                          onEditingComplete: (){
                                            print("Complete");
                                          },
                                        ),
                                      )
                                      
                                    ],
                                  )
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("수량", style: TextStyle(fontSize: Sizes.textMiddle, fontWeight: FontWeight.bold),),
                                Container(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 200,
                                        child: TextFormField(
                                          maxLength: 6,
                                          textAlign: TextAlign.right,
                                          keyboardType: TextInputType.number,
                                          decoration: const InputDecoration(
                                            hintText: "0",
                                            counterText: '',
                                            border: InputBorder.none,
                                            suffixIcon: Text("주"),
                                            suffixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
                                          ),
                                          validator: (val) {
                                            if(val!.length == 0){
                                              return "수량을 입력해 주세요.";
                                            }
                                            return null;
                                          },
                                          onEditingComplete: (){
                                            print("Complete");
                                          },
                                        ),
                                      )
                                    ],
                                  )
                                )
                              ],
                            ),
                          ),
                        ]
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: Sizes.paddingBody),
                      padding: const EdgeInsets.all(Sizes.paddingBody),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(Sizes.circularSmall))
                      ),
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              children: [],
                            ),
                          )
                        ],
                      )
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: Sizes.paddingDefault),
                      child: RaisedButton(
                        color: Colors.blue,
                        onPressed: () async {
                          if(this.formKey.currentState!.validate()){
                            // validation 이 성공하면 true 가 리턴돼요!
                            debugPrint("추가하기");
                          }
                        },
                        child: Text(
                          '추가',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )
                    )
                  ],
                ),
              )
            )
          );
        }
      )
    );
  }

  // 종목 리스트 bottom sheet
  void showStocksBottomSheet(BuildContext context){

    showModalBottomSheet<void>(
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
        ),
        builder: (BuildContext context){
          return Container(
            padding: const EdgeInsets.all(Sizes.paddingDefault),
            height: MediaQuery.of(context).size.height - 100,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: Sizes.paddingDefault),
                  child: const Text("종목 선택", style: TextStyle(fontSize: Sizes.textLarge, fontWeight: FontWeight.bold)),
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: bloc.etfList.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: const EdgeInsets.only(bottom: Sizes.paddingDefault),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(Sizes.circularSmall),
                        ),
                        elevation: 0,
                        child: InkWell(
                          onTap: () {
                            setState(() { 
                              _addSelectedSymbol = bloc.etfList[index].symbol!;
                            });
                            Navigator.pop(context);
                          },
                          child: StockItem(bloc.etfList[index]),
                        ),
                      );
                    },
                  ),
                )
              ]
            ),
          );
        }
    );
  }
  
}
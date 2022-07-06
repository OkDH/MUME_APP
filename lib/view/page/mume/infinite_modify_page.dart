import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mume/view/page/base_page.dart';
import 'package:mume/view/resource/color.dart';
import 'package:mume/view/resource/sizes.dart';
import 'package:mume/enums/infinite_state.dart';
import 'package:mume/enums/infinite_type.dart';
import 'package:mume/enums/infinite_version.dart';
import 'package:mume/model/dto/mume/infinite_detail.dart';
import 'package:mume/model/dto/mume/account.dart';
import 'package:mume/viewmodel/mume/infinite_modify_page_bloc.dart';
import 'package:mume/view/component/stock_item.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

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
  int _selectedIndex = 0;
  // 선택 symbol
  String? _selectedSymbol = null;
  // 선택 분류 index
  int _selectedType = 0;
  // 선택 버전 index
  int _selectedVersion = 0;
  // 매매내역 자동 기록 여부
  bool _isAutoTrade = true;
  // 시작날짜
  String? _selectedStartDate = null;
  String _strStartDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
  // 시드
  double? _seed = 0;
  // 분할 수
  int? _divisions = 40;
  // 평단가
  double? _unitPrice = 0;
  // 수량
  int _quantity = 0;

  final formKey = GlobalKey<FormState>();
  InfiniteDetail infiniteDetail = new InfiniteDetail();

  @override
  Widget buildPage(BuildContext context, Size windowSize) {

    // 현재 활성화 된 계좌 ID가 ALL이라면 첫번째 계좌
    if(widget.selectedAccountId! == "ALL") {
      _selectedIndex = 0;
    } else { // 아니라면 해당 계좌의 index값 찾기
      for(int i = 0; i < widget.accountList!.length; i++){
        if(widget.accountList![i].accountId.toString() == widget.selectedAccountId!){
          _selectedIndex = i;
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
            Navigator.pop(context, false);
          },
        ),
      ),
      body: StatefulBuilder(
        builder: (context, setState) {
          return SingleChildScrollView(
            child: Form(
              key: formKey,
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
                            onTap: () {
                              showCupertino(
                                title: "계좌",
                                itemList: widget.accountList!.map((e) => Text(e.accountAlias!)).toList(),
                                selectedIndex: _selectedIndex,
                                onSelectedItemChanged: (int index){
                                  setState(() { _selectedIndex = index; });
                                }
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
                                        Text(widget.accountList![_selectedIndex].accountAlias!, style: const TextStyle(fontSize: Sizes.textMiddle, color: MyColor.primary),), 
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
                                        Text(_selectedSymbol ?? "미선택", style: const TextStyle(fontSize: Sizes.textMiddle, color: MyColor.primary),), 
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
                                            suffixIcon: Text(" \$ "),
                                            suffixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
                                          ),
                                          validator: (val) {
                                            if(val!.length == 0){
                                              return "평단가를 입력해 주세요.";
                                            }
                                            return null;
                                          },
                                          onChanged: (val){
                                            _unitPrice = double.parse(val);
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
                                            suffixIcon: Text(" 주"),
                                            suffixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
                                          ),
                                          validator: (val) {
                                            if(val!.length == 0){
                                              return "수량을 입력해 주세요.";
                                            }
                                            return null;
                                          },
                                          onChanged: (val){
                                            _quantity = int.parse(val);
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
                              children: [
                                Material(
                                  color: Colors.white,
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 5),
                                    child: InkWell(
                                      onTap: () {
                                        showCupertino(
                                          title: "분류",
                                          itemList: InfiniteType.values.map((e) => Text(e.label)).toList(),
                                          selectedIndex: _selectedType,
                                          onSelectedItemChanged: (int index){
                                            setState(() { _selectedType = index; });
                                          }
                                        );
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(Sizes.paddingSideRatio),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.black45),
                                          borderRadius: const BorderRadius.all(Radius.circular(Sizes.circularSmall))
                                        ),
                                        child: Text("분류 | " + InfiniteType.values[_selectedType].label, style: const TextStyle(fontWeight: FontWeight.bold),),
                                      ),
                                    ),
                                  ),
                                ),
                                Material(
                                  color: Colors.white,
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 5),
                                    child: InkWell(
                                      onTap: () {
                                        showCupertino(
                                          title: "버전",
                                          itemList: InfiniteVersion.values.map((e) => Text(e.label)).toList(),
                                          selectedIndex: _selectedVersion,
                                          onSelectedItemChanged: (int index){
                                            setState(() { _selectedVersion = index; });
                                          }
                                        );
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(Sizes.paddingSideRatio),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.black45),
                                          borderRadius: const BorderRadius.all(Radius.circular(Sizes.circularSmall))
                                        ),
                                        child: Text("버전 | " + InfiniteVersion.values[_selectedVersion].label, style: const TextStyle(fontWeight: FontWeight.bold),),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("배정 원금", style: TextStyle(fontSize: Sizes.textMiddle, fontWeight: FontWeight.bold),),
                                Container(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 200,
                                        child: TextFormField(
                                          maxLength: 10,
                                          textAlign: TextAlign.right,
                                          keyboardType: TextInputType.number,
                                          decoration: const InputDecoration(
                                            hintText: "0",
                                            counterText: '',
                                            border: InputBorder.none,
                                            suffixIcon: Text(" \$ "),
                                            suffixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
                                          ),
                                          validator: (val) {
                                            if(val!.length == 0){
                                              return "배정원금을 입력해 주세요.";
                                            }
                                            return null;
                                          },
                                          onChanged: (val){
                                            _seed = double.parse(val);
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
                                const Text("원금 분할", style: TextStyle(fontSize: Sizes.textMiddle, fontWeight: FontWeight.bold),),
                                Container(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 200,
                                        child: TextFormField(
                                          maxLength: 3,
                                          textAlign: TextAlign.right,
                                          keyboardType: TextInputType.number,
                                          decoration: const InputDecoration(
                                            hintText: "0",
                                            counterText: '',
                                            border: InputBorder.none,
                                            suffixIcon: Text(" 분할"),
                                            suffixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
                                          ),
                                          validator: (val) {
                                            if(val!.length == 0){
                                              return "원금 분할수를 입력해 주세요.";
                                            }
                                            return null;
                                          },
                                          onChanged: (val){
                                            _divisions = int.parse(val);
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
                            margin: const EdgeInsets.only(top: Sizes.paddingSideRatio),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("매수 시작일", style: TextStyle(fontSize: Sizes.textMiddle, fontWeight: FontWeight.bold),),
                                Material(
                                  color: Colors.white,
                                  child: InkWell(
                                    onTap: () {
                                      var parts = _strStartDate.split('-');
                                      int year = int.parse(parts[0].trim());
                                      int month = int.parse(parts[1].trim());
                                      int day = int.parse(parts[2].trim());
                                      
                                      showDialog(
                                        context: context, 
                                        builder: (context) {
                                          return AlertDialog(
                                            scrollable: true,
                                            insetPadding: const EdgeInsets.symmetric(vertical: 150),
                                            title: const Text("매수 시작일", style: TextStyle( fontWeight: FontWeight.bold,)),
                                            content: Container(
                                              width: 300,
                                              height: 300,
                                              child: SfDateRangePicker(
                                                initialSelectedDate: DateTime(year, month, day),
                                                selectionMode: DateRangePickerSelectionMode.single,
                                                onSelectionChanged: (args) {
                                                  _selectedStartDate = DateFormat('yyyy-MM-dd')
                                                    .format(args.value)
                                                    .toString();
                                                },
                                              ),
                                            ),
                                            actions: [
                                              TextButton(
                                                child: const Text('확인'),
                                                onPressed: () {
                                                  setState(() {
                                                    _strStartDate = _selectedStartDate!;
                                                  });
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                              TextButton(
                                                child: const Text('취소'),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                            ],
                                          );
                                        }
                                      );
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.all(Sizes.paddingSideRatio),
                                      child: Wrap(
                                        crossAxisAlignment: WrapCrossAlignment.center,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(right: 5),
                                            child: const Icon(Icons.calendar_month, size: Sizes.textMiddle),
                                          ),
                                          Text(_strStartDate , style: const TextStyle(fontWeight: FontWeight.bold),), 
                                        ],
                                      )
                                    ),
                                  )
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: Sizes.paddingSideRatio),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("매매내역 자동기록", style: TextStyle(fontSize: Sizes.textMiddle, fontWeight: FontWeight.bold),),
                                Container(
                                  child: Switch(
                                  value: _isAutoTrade,
                                  onChanged: (value) {
                                    setState(() {
                                      _isAutoTrade = value;
                                    });
                                  },
                                  activeTrackColor: Colors.lightBlueAccent,
                                  activeColor: MyColor.primary,
                                ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: Sizes.paddingDefault),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: MyColor.primary,
                          onPrimary: MyColor.onPrimary,
                          elevation: 0,
                          minimumSize: const Size.fromHeight(40), // fromHeight use double.infinity as width and 40 is the height
                        ),
                        onPressed: () async {
                          if(this.formKey.currentState!.validate()){

                            Map<String, dynamic> params = HashMap();
                            
                            // params.infiniteId; // TODO UPDATE
                            params["accountId"] = widget.accountList![_selectedIndex].accountId;
                            params["symbol"] = _selectedSymbol;
                            params["startedDate"] = _strStartDate;
                            params["seed"] = _seed;
                            params["infiniteState"] = InfiniteState.ing.label; // TODO UPDATE
                            params["infiniteType"] = InfiniteType.values[_selectedType].name;
                            params["infiniteVersion"] = InfiniteVersion.values[_selectedVersion].label;
                            params["divisions"] = _divisions;
                            params["isAutoTrade"] = _isAutoTrade;
                            params["unitPrice"] = _unitPrice;
                            params["quantity"] = _quantity;
                            //params.doneDate = ""; // TODO UPDATE

                            // 서버에 요청
                            await bloc.addStock(params);

                            // true 리턴 시 account_page에서 받아서 다음 처리함.
                            Navigator.pop(context, true);
                          }
                        },
                        child: const Text('추가', style: TextStyle(fontWeight: FontWeight.bold),),
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
                              _selectedSymbol = bloc.etfList[index].symbol!;
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

  void showCupertino({String title = "", double height = 200, required List<Widget> itemList, required int selectedIndex, required Function(int) onSelectedItemChanged}){
    showCupertinoModalPopup(
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
                  child: Text(title, style: Theme.of(context).textTheme.bodyText2),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 5.0,
                  ),
                ),
                CupertinoButton(
                  child: const Text('확인', style: TextStyle(fontSize: Sizes.textSmall),),
                  onPressed: () { Navigator.of(context).pop(); },
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 5.0,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: height,
            child: CupertinoPicker(
              backgroundColor: Colors.white,
              itemExtent: 30,
              scrollController: FixedExtentScrollController(initialItem: selectedIndex),
              onSelectedItemChanged: (int index){
                onSelectedItemChanged(index);
              },
              children: itemList,
            ),
          ),
        ],
      )
    );
  }
}
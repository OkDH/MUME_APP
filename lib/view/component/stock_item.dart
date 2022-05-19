import 'package:flutter/material.dart';
import 'package:mume/view/resource/color.dart';
import 'package:mume/view/resource/sizes.dart';
import 'package:mume/helper/print_format_helper.dart';
import 'package:mume/helper/text_style_helper.dart';
import 'package:mume/model/dto/stock.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class StockItem extends StatelessWidget {
  final Stock stock;

  const StockItem(
    this.stock, 
    {Key? key, }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Sizes.paddingDefault),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: Sizes.paddingDefault),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: SfRadialGauge(
                    axes: <RadialAxis>[
                      RadialAxis(
                        minimum: 0,
                        maximum: 100,
                        showLabels: false,
                        showTicks: false,
                        axisLineStyle: const AxisLineStyle(
                          thickness: 0.2,
                          cornerStyle: CornerStyle.bothCurve,
                          color: Colors.black12,
                          thicknessUnit: GaugeSizeUnit.factor,
                        ),
                        pointers: <GaugePointer>[
                          RangePointer(
                            enableAnimation: true,
                            value: stock.rsi!,
                            cornerStyle: CornerStyle.bothCurve,
                            width: 0.2,
                            sizeUnit: GaugeSizeUnit.factor,
                            color: stock.gapRsi! >= 0 ? Colors.red : stock.gapRsi! > -5 ? Colors.orange : MyColor.primary
                          ),
                          MarkerPointer(
                            enableAnimation: true,
                            value: stock.baseRsi!,
                            markerType: MarkerType.invertedTriangle,
                            color: stock.gapRsi! >= 0 ? Colors.red : stock.gapRsi! > -5 ? Colors.orange : MyColor.primary,
                            markerWidth: 8,
                            markerHeight: 8,
                            markerOffset: -6,
                          )
                        ],
                        annotations: <GaugeAnnotation>[
                          GaugeAnnotation(
                            positionFactor: 0.1,
                            angle: 90,
                            widget: Text(stock.rsi!.toStringAsFixed(2), style: const TextStyle(fontSize: Sizes.textSmall, fontWeight: FontWeight.bold),)
                          )
                        ]
                      )
                    ]
                  ),
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(stock.symbol!, style: TextStyle(fontSize: Sizes.textMiddle),)
                    ),
                    Container(
                      child: Text(stock.sectorName!, style: TextStyle(fontSize: Sizes.textSmall, color: Colors.black54),)
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  child: Text("\$" + PrintFormatHelper.comma(stock.priceClose, decimal: 2), style: TextStyle(fontSize: Sizes.textMiddle),),
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 2),
                      child: Text(PrintFormatHelper.appendUpDown(stock.chg, decimal: 2), style: TextStyleHelper.getValueTextStyle(value: stock.chg, fontSize: Sizes.textSmall),),
                    ),
                    Container(
                      child: Text("(" + PrintFormatHelper.appendPulMa(stock.chgp, decimal: 2) + "%)", style: TextStyleHelper.getValueTextStyle(value: stock.chgp, fontSize: Sizes.textSmall),)
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grock/grock.dart';
import '../../constant/constant.dart';
import '../../ext/text_style.dart';
import '../../view/MainScreen/main_scaffold.dart';

class customBottomNavbar extends ConsumerWidget {
  Widget build(BuildContext context, WidgetRef ref) {
    var watch = ref.watch(mainScaffoldRiverpod);
    var read = ref.read(mainScaffoldRiverpod);
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: SafeArea(
        child: Container(
          height: 60,
          width: Grock.width,
          padding: [22,5].horizontalAndVerticalP,
          decoration: const BoxDecoration(color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (int i = 0; i < read.items.length; i++)
                Stack(
                  children: [
                    GrockContainer(
                      onTap: () {
                        read.setCurrentIndex(i);
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(
                            read.items[i].image,
                            color: i == watch.currentIndex
                                ? Constant.green500
                                : Constant.black,
                          ),
                          Text(
                            read.items[i].title,
                            style: ExtPageText.TxtStyle(
                              FontWeight.w600,
                              11,
                              i == watch.currentIndex
                                  ? Constant.green500
                                  : Constant.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}

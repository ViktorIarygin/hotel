import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Hotels extends StatelessWidget {
  const Hotels({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    var width = mediaQuery.size.width;
    final PageController controller1 = PageController();
    ValueNotifier<Color> dot6Color = ValueNotifier<Color>(Colors.black);
    ValueNotifier<Color> dot7Color = ValueNotifier<Color>(Colors.grey);
    ValueNotifier<Color> dot8Color = ValueNotifier<Color>(Colors.grey);

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Отель',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w500,
            height: 1.20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Container(
              width: width,
              //height: 460,
              clipBehavior: Clip.antiAlias,
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 257,
                    child: Stack(
                      children: [
                        PageView(
                          onPageChanged: (index) {
                            if (index == 0) {
                              dot6Color.value = Colors.black;
                            } else {
                              dot6Color.value = Colors.grey;
                            }
                            if (index == 1) {
                              dot7Color.value = Colors.black;
                            } else {
                              dot7Color.value = Colors.grey;
                            }
                            if (index == 2) {
                              dot8Color.value = Colors.black;
                            } else {
                              dot8Color.value = Colors.grey;
                            }
                          },
                          controller: controller1,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(6.0, 8.0, 6.0, 0),
                              child: Container(
                                clipBehavior: Clip.antiAlias,
                                decoration: const ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                  ),
                                ),
                                child: Image.asset(
                                  'assets/Hotel1.jpg',
                                  fit: BoxFit.cover,
                                ),
                                //  Image(
                                //   fit: BoxFit.cover,
                                //   image:
                                //   NetworkImage(
                                //       'https://www.atorus.ru/sites/default/files/upload/image/News/56149/Club_Priv%C3%A9_by_Belek_Club_House.jpg'),
                                // ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(6.0, 8.0, 6.0, 0),
                              child: Container(
                                clipBehavior: Clip.antiAlias,
                                decoration: const ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                  ),
                                ),
                                child: Image.asset(
                                  'assets/Hotel2.jpg',
                                  fit: BoxFit.cover,
                                ),
                                // const Image(
                                //   fit: BoxFit.cover,
                                //   image: NetworkImage(
                                //       'https://deluxe.voyage/useruploads/articles/The_Makadi_Spa_Hotel_02.jpg'),
                                // ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(6.0, 8.0, 6.0, 0),
                              child: Container(
                                clipBehavior: Clip.antiAlias,
                                decoration: const ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                  ),
                                ),
                                child: Image.asset(
                                  'assets/Hotel3.jpg',
                                  fit: BoxFit.cover,
                                ),
                                // const Image(
                                //   fit: BoxFit.cover,
                                //   image: NetworkImage(
                                //       'https://deluxe.voyage/useruploads/articles/article_1eb0a64d00.jpg'),
                                // ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: const Alignment(0.0, 0.95),
                          child: Container(
                            width: 75,
                            clipBehavior: Clip.antiAlias,
                            decoration: const ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ValueListenableBuilder(
                                    valueListenable: dot6Color,
                                    builder: (context, color, child) {
                                      return Container(
                                        height: 8,
                                        width: 8,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: ShapeDecoration(
                                          color: color,
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                  const SizedBox(width: 15),
                                  ValueListenableBuilder(
                                    valueListenable: dot7Color,
                                    builder: (context, color, child) {
                                      return Container(
                                        height: 8,
                                        width: 8,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: ShapeDecoration(
                                          color: color,
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                  const SizedBox(width: 15),
                                  ValueListenableBuilder(
                                    valueListenable: dot8Color,
                                    builder: (context, color, child) {
                                      return Container(
                                        height: 8,
                                        width: 8,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: ShapeDecoration(
                                          color: color,
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: ShapeDecoration(
                        color: const Color(0x33FFC600),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xFFFFA800),
                            size: 20.0,
                          ),
                          SizedBox(width: 2),
                          Text(
                            '5 Превосходно',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFFFA800),
                              fontSize: 16,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                              height: 1.20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 13.0, 16.0, 0),
                    child: Text(
                      'Steigenberger Makadi',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        //height: 1.20,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 8.0, 0, 0),
                    child: Text(
                      'Madinat Makadi, Safaga Road, Makadi Bay, Египет',
                      style: TextStyle(
                        color: Color(0xFF0D72FF),
                        fontSize: 14,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.1,
                        //height: 1.20,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 15.0, 0, 15.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.ideographic,
                      children: [
                        Text(
                          'от 134 673 ₽',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.05,
                            //height: 1.20,
                          ),
                        ),
                        Text(
                          ' за тур с перелётом',
                          style: TextStyle(
                            color: Color(0xFF828796),
                            fontSize: 16,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.05,
                            //height: 1.20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: width,
              clipBehavior: Clip.antiAlias,
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 13.0, 16.0, 0),
                    child: Text(
                      'Об отеле',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        //height: 1.20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: ShapeDecoration(
                            color: Colors.grey.shade100,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          child: const Text(
                            '3-я линия',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF828796),
                              fontSize: 16,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                              height: 1.20,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: ShapeDecoration(
                            color: Colors.grey.shade100,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          child: const Text(
                            'Платный Wi-Fi в фойе',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF828796),
                              fontSize: 16,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                              height: 1.20,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: ShapeDecoration(
                            color: Colors.grey.shade100,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          child: const Text(
                            '30 км до аэропорта',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF828796),
                              fontSize: 16,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                              height: 1.20,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: ShapeDecoration(
                            color: Colors.grey.shade100,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          child: const Text(
                            '1 км до пляжа',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF828796),
                              fontSize: 16,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                              height: 1.20,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 15.0, 16.0, 0),
                    child: Text(
                      'Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                        height: 1.20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.grey.shade100,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 60,
                            child: ListTile(
                              leading: Image.asset(
                                'assets/happy.png',
                                scale: 2,
                              ),
                              title: const Text(
                                'Удобства',
                                style: TextStyle(
                                  color: Color(0xFF2C3035),
                                  fontSize: 16,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                  height: 1.20,
                                ),
                              ),
                              subtitle: const Text(
                                'Самое необходимое',
                                style: TextStyle(
                                  color: Color(0xFF828696),
                                  fontSize: 14,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                  height: 1.20,
                                ),
                              ),
                              trailing: const Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 27,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const Divider(
                            indent: 30,
                            endIndent: 30,
                          ),
                          SizedBox(
                            height: 60,
                            child: ListTile(
                              leading: Image.asset(
                                'assets/tick.png',
                                scale: 2,
                              ),
                              title: const Text(
                                'Что включено',
                                style: TextStyle(
                                  color: Color(0xFF2C3035),
                                  fontSize: 16,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                  height: 1.20,
                                ),
                              ),
                              subtitle: const Text(
                                'Самое необходимое',
                                style: TextStyle(
                                  color: Color(0xFF828696),
                                  fontSize: 14,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                  height: 1.20,
                                ),
                              ),
                              trailing: const Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 27,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const Divider(
                            indent: 30,
                            endIndent: 30,
                          ),
                          SizedBox(
                            height: 75,
                            child: ListTile(
                              leading: Image.asset(
                                'assets/close.png',
                                scale: 2,
                              ),
                              title: const Text(
                                'Что не включено',
                                style: TextStyle(
                                  color: Color(0xFF2C3035),
                                  fontSize: 16,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                  height: 1.20,
                                ),
                              ),
                              subtitle: const Text(
                                'Самое необходимое',
                                style: TextStyle(
                                  color: Color(0xFF828696),
                                  fontSize: 14,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                  height: 1.20,
                                ),
                              ),
                              trailing: const Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 27,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          // const Divider(
                          //   indent: 30,
                          //   endIndent: 30,
                          // ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                    child: GestureDetector(
                      onTap: () => context.push('/rooms'),
                      child: Container(
                        height: 60,
                        clipBehavior: Clip.antiAlias,
                        decoration: const ShapeDecoration(
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'К выбору номера',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                              height: 1.10,
                              letterSpacing: 0.10,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

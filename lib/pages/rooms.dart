import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Rooms extends StatelessWidget {
  const Rooms({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    var width = mediaQuery.size.width;
    final PageController controller = PageController();
    ValueNotifier<Color> dot0Color = ValueNotifier<Color>(Colors.black);
    ValueNotifier<Color> dot1Color = ValueNotifier<Color>(Colors.grey);
    ValueNotifier<Color> dot2Color = ValueNotifier<Color>(Colors.grey);
    ValueNotifier<Color> dot3Color = ValueNotifier<Color>(Colors.black);
    ValueNotifier<Color> dot4Color = ValueNotifier<Color>(Colors.grey);
    ValueNotifier<Color> dot5Color = ValueNotifier<Color>(Colors.grey);

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        centerTitle: true,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.black,
                size: 22.0,
              ),
              onPressed: () => context.pop('/'),
            );
          },
        ),
        title: const Text(
          'Steigenberger Makadi',
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
                              dot0Color.value = Colors.black;
                            } else {
                              dot0Color.value = Colors.grey;
                            }
                            if (index == 1) {
                              dot1Color.value = Colors.black;
                            } else {
                              dot1Color.value = Colors.grey;
                            }
                            if (index == 2) {
                              dot2Color.value = Colors.black;
                            } else {
                              dot2Color.value = Colors.grey;
                            }
                          },
                          controller: controller,
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
                                  'assets/Room1.jpg',
                                  fit: BoxFit.cover,
                                ),
                                //  const Image(
                                //   fit: BoxFit.cover,
                                //   image: NetworkImage(
                                //       'https://www.atorus.ru/sites/default/files/upload/image/News/56871/%D1%80%D0%B8%D0%BA%D1%81%D0%BE%D1%81%20%D1%81%D0%B8%D0%B3%D0%B5%D0%B9%D1%82.jpg'),
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
                                  'assets/Room2.jpg',
                                  fit: BoxFit.cover,
                                ),
                                //  const Image(
                                //   fit: BoxFit.cover,
                                //   image: NetworkImage(
                                //       'https://q.bstatic.com/xdata/images/hotel/max1024x768/267647265.jpg?k=c8233ff42c39f9bac99e703900a866dfbad8bcdd6740ba4e594659564e67f191&o='),
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
                                  'assets/Room3.jpeg',
                                  fit: BoxFit.cover,
                                ),
                                //  const Image(
                                //   fit: BoxFit.cover,
                                //   image: NetworkImage(
                                //       'https://worlds-trip.ru/wp-content/uploads/2022/10/white-hills-resort-5.jpeg'),
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
                                    valueListenable: dot0Color,
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
                                    valueListenable: dot1Color,
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
                                    valueListenable: dot2Color,
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
                 
                  const Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 6.0, 16.0, 0),
                    child: SizedBox(
                      width: 343,
                      child: Text(
                        'Стандартный с видом на бассейн или сад',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                          height: 1.20,
                        ),
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
                            'Включен только завтрак',
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
                            'Кондиционер',
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
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 5, left: 10, right: 2, bottom: 5),
                      decoration: ShapeDecoration(
                        color: const Color(0x190D72FF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Подробнее о номере',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF0D72FF),
                              fontSize: 18,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                              height: 1.20,
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Color(0xFF0D72FF),
                            size: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 15.0, 0, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.ideographic,
                      children: [
                        Text(
                          '186600 ₽',
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
                          '  За 7 ночей с перелетом',
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
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                    child: GestureDetector(
                      onTap: () => context.push('/rooms/booking'),
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
                            'Выбрать номер',
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
                  SizedBox(
                    height: 257,
                    child: Stack(
                      children: [
                        PageView(
                          onPageChanged: (index) {
                            if (index == 0) {
                              dot3Color.value = Colors.black;
                            } else {
                              dot3Color.value = Colors.grey;
                            }
                            if (index == 1) {
                              dot4Color.value = Colors.black;
                            } else {
                              dot4Color.value = Colors.grey;
                            }
                            if (index == 2) {
                              dot5Color.value = Colors.black;
                            } else {
                              dot5Color.value = Colors.grey;
                            }
                          },
                          controller: controller,
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
                                  'assets/Room4.webp',
                                  fit: BoxFit.cover,
                                ),
                                // const Image(
                                //   fit: BoxFit.cover,
                                //   image: NetworkImage(
                                //       'https://mmf5angy.twic.pics/ahstatic/www.ahstatic.com/photos/b1j0_roskdc_00_p_1024x768.jpg?ritok=65&twic=v1/cover=800x600'),
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
                                  'assets/Room5.webp',
                                  fit: BoxFit.cover,
                                ),
                                // const Image(
                                //   fit: BoxFit.cover,
                                //   image: NetworkImage(
                                //       'https://images.unsplash.com/photo-1611892440504-42a792e24d32?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aG90ZWwlMjByb29tfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'),
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
                                  'assets/Room6.webp',
                                  fit: BoxFit.cover,
                                ),
                                // const Image(
                                //   fit: BoxFit.cover,
                                //   image: NetworkImage(
                                //       'https://tour-find.ru/thumb/2/bsb2EIEFA8nm22MvHqMLlw/r/d/screenshot_3_94.png'),
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
                                    valueListenable: dot3Color,
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
                                    valueListenable: dot4Color,
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
                                    valueListenable: dot5Color,
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
                  const Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 6.0, 16.0, 0),
                    child: SizedBox(
                      width: 343,
                      child: Text(
                        'Люкс номер с видом на море',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                          height: 1.20,
                        ),
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
                            'Все включено',
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
                            'Кондиционер',
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
                            'Собственный бассейн',
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
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 5, left: 10, right: 2, bottom: 5),
                      decoration: ShapeDecoration(
                        color: const Color(0x190D72FF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Подробнее о номере',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF0D72FF),
                              fontSize: 18,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                              height: 1.20,
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Color(0xFF0D72FF),
                            size: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 15.0, 0, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.ideographic,
                      children: [
                        Text(
                          '289400 ₽',
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
                          '  За 7 ночей с перелетом',
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
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                    child: GestureDetector(
                      onTap: () => context.push('/rooms/booking'),
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
                            'Выбрать номер',
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

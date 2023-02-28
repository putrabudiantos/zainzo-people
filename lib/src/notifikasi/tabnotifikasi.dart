import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TabNotifikasi extends StatefulWidget {
  const TabNotifikasi({super.key});

  @override
  State<TabNotifikasi> createState() => _TabNotifikasiState();
}

class _TabNotifikasiState extends State<TabNotifikasi>
    with TickerProviderStateMixin {
  late TabController tabController;
  bool adanotifikasi = false;

  @override
  void initState() {
    super.initState();
    adanotifikasi;
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 20,
        bottom: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: Colors.red,
          indicatorColor: Colors.red,
          controller: tabController,
          tabs: const [
            Tab(
              text: "Notifkasi",
            ),
            Tab(
              text: "Butuh Persetujuan",
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          ListView(
            children: [
              adanotifikasi == false
                  ? Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 100),
                          child: SvgPicture.asset(
                            'assets/images/no-notification-svg.svg',
                          ),
                        ),
                        const SizedBox(height: 25),
                        const Text(
                          'Belum ada pemberitahuan',
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 16,
                              color: Colors.black38),
                        )
                      ],
                    )
                  : const ListTile(
                      title: Text('Harga Promo'),
                      subtitle: Text('Makin hemat'),
                    ),
            ],
          ),
          ListView(
            children: [
              adanotifikasi == false
                  ? Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 100),
                          child: SvgPicture.asset(
                              'assets/images/no-notification-svg.svg'),
                        ),
                        const SizedBox(height: 25),
                        const Text(
                          'Belum ada pemberitahuan',
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 16,
                              color: Colors.black38),
                        )
                      ],
                    )
                  : const ListTile(
                      title: Text('Harga Promo'),
                      subtitle: Text('Makin hemat'),
                    ),
            ],
          ),
        ],
      ),
    );
  }
}

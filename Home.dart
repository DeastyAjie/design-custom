import 'package:flutter/material.dart';

class HomeOVO extends StatefulWidget {
  const HomeOVO({super.key});

  @override
  _TestAppState createState() => _TestAppState();
}

class _TestAppState extends State<HomeOVO> with SingleTickerProviderStateMixin {
  int _currentPage = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade200,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "OVO",
                style: TextStyle(
                  fontFamily: 'Futura',
                  fontWeight: FontWeight.w700,
                  color: Colors.purple.shade600,
                  fontSize: 24,
                  letterSpacing: 2.0,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Icon(
                  Icons.notifications_active,
                  color: Colors.purple.shade600,
                ),
              ),
            ],
          ),

        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.purple.shade600,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "OVO Cash",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            const Text(
                              "Rp 69.420",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: "OVO Points ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "6.420",
                                    style: TextStyle(
                                      color: Color.fromRGBO(
                                          228, 172, 69, 1), // Yellow color
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                            const SizedBox(height: 16.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildActionButton(Icons.add, "Top Up"),
                                _buildActionButton(Icons.send, "Transfer"),
                                _buildActionButton(Icons.money, "Tarik Tunai"),
                                _buildActionButton(Icons.history, "History"),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        
                        width: 140,
                        top: 85,
                        right: 8,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons. paid_outlined,
                                color: Colors.purple.shade600,
                              ),
                              const SizedBox(width: 1.0),
                              Text(
                                "Points",
                                style: TextStyle(
                                  color: Colors.purple.shade600,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.purple.shade600,
                                
                                ),
                                
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16.0),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                  ),

                  child: Column(
                    children: [
                      // Row(
                      //   children: [
                      //     Container(child: Text("data"))
                      //     ,
                      //     Container(child: Text("data")),
                      //     Container(child: Text("data")),
                      //     Container(child: Text("data")),
                      //   ],
                      // ),
                      GridView.count(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: 4,
                        children: [
                          _buildFeatureButton(Icons.attach_money, "Pinjaman"),
                          _buildFeatureButton(Icons.money_off, "Uang Elektronik"),
                          _buildFeatureButton(Icons.credit_card, "Angsuran Kredit"),
                          _buildFeatureButton(
                              Icons.phone_android, "Pulsa/Paket Data"),
                          _buildFeatureButton(Icons.electrical_services, "PLN"),
                          _buildFeatureButton(Icons.water_damage, "Air PDAM"),
                          _buildFeatureButton(Icons.tv, "Internet dan TV"),
                          _buildFeatureButton(
                              Icons.account_balance_wallet, "Pajak PBB"),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 18.0),
                Container(  
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // To align the text properly
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 15.0,
                            top: 3.0,
                            bottom: 3.0),
                        child: Text(
                          "Special Offers",
                          style: TextStyle(
                            fontSize: 23.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      // Swipeable Advertisement Section with Dots
                      Column(
                        children: [
                          SizedBox(
                            height: 250.0,
                            child: PageView(
                              controller: _pageController,
                              onPageChanged: (int index) {
                                setState(() {
                                  _currentPage = index;
                                });
                              },
                              children: [
                                _buildAdPage(Colors.red),
                                _buildAdPage(Colors.green),
                                _buildAdPage(Colors.blue),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0, top: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                3,
                                (index) => _buildDot(index),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 17.0),
                const Text(
                  "Rekomendasi Pilihan",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8.0),
                SizedBox(
                  height: 150.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _buildCard("Sambungin OVOmu di aplikasi traveloka!",
                          "OVO"),
                      _buildCard("Sambungin OVOmu di aplikasi traveloka!",
                          "OVO"),    
                      _buildCard("Isi Bensin Dapet Cashback?", "OVO"),
                      _buildCard("All Deals for You", "Deals"),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                // Second Feature Section
                const Text(
                  "Yang Menarik di OVO",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8.0),
                SizedBox(
                  height: 150.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _buildCard("Pusat Bantuan", "Lihat Bantuan"),
                      _buildCard("Promo Voucher Favorit", "Cek di sini!"),
                      _buildCard(
                          "Strategi untuk Keuangan Anda", "Lihat Selengkapnya"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: const Color(0xFFE8E2E8),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet),
              label: 'Finance',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code),
              label: 'Pay',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.inbox),
              label: 'Inbox',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          selectedItemColor: Colors.purple.shade600,
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }

  Widget _buildActionButton(IconData icon, String label) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(height: 4.0),
          Text(
            label,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureButton(IconData icon, String label) {
    return GestureDetector(
      onTap: () {
        // Add your onTap action here
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.purple.shade50,
            child: Icon(icon, color: Colors.purple.shade600),
          ),
          const SizedBox(height: 8.0),
          Text(label, textAlign: TextAlign.center),
        ],
      ),
    );
  }

  Widget _buildAdPage(Color color) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      margin: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: const Center(
          child: Text(
            "Ad Content",
            style: TextStyle(color: Colors.white, fontSize: 24.0),
          ),
        ),
      ),
    );
  }

  Widget _buildDot(int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      width: _currentPage == index ? 12.0 : 8.0,
      height: _currentPage == index ? 12.0 : 8.0,
      decoration: BoxDecoration(
        color: _currentPage == index ? Colors.purple.shade600 : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _buildCard(String title, String subtitle) {
    return Container(
      width: 200.0,
      margin: const EdgeInsets.only(right: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

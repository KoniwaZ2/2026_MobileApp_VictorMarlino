import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: ''),
      routes: {'/home': (context) => const ProfilePage()},
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 163, 207, 255),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 350,
              child: Stack(
                children: [
                  Image(
                    image: NetworkImage(
                      "https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/original/test-discovery/2023/11/02/38942d92-652e-4b16-9eb7-113ca69e81f1-1698921296142-0b97418fb0548ee6e463e1c90ccb1536.png",
                    ),
                    width: double.infinity,
                    height: 350,
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                  Positioned(
                    top: -30,
                    left: 90,
                    child: Image(
                      image: NetworkImage(
                        "https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/original/test-discovery/2023/08/09/ab858d80-6dae-4ada-bada-cb81e130ff84-1691548783277-327996318bac9f6f2b2c4359ce4629d6.png",
                      ),
                      width: 200,
                      height: 200,
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 20,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(17.5)),
                      ),
                      child: Icon(Icons.close, size: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Blur Box
          Positioned(
            top: 310,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(128, 255, 255, 255),
                    Color.fromARGB(133, 255, 255, 255),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        Container(
                          height: 55,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Nomor HP atau email',
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ),
                            ),
                            textAlignVertical: TextAlignVertical.center,
                          ),
                        ),
                        SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 0, 105, 255),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Log in',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Log in lebih cepat dengan',
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Icon(Icons.apple, size: 32),
                            ),
                            SizedBox(width: 15),
                            Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Icon(
                                Icons.facebook,
                                size: 32,
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(width: 15),
                            Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                    image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVCvLeTHwisItiq2ogbeAY_JJe5SBA38iLCA&s",
                                    ),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Belum punya akun? ',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'Daftar, yuk!',
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 105, 255),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Dengan log in, kamu menyetujui Kebijakan Privasi dan Syarat & Ketentuan Blibli Tiket.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey[600], fontSize: 12),
                    ),
                  ),
                  SizedBox(height: 12),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Image.asset(
                        'images/blibli-tiket.png',
                        height: 24,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.grey[700]),
          onPressed: () => Navigator.pop(context),
        ),
        title: Center(
          child: Image.asset("images/blibli-tiket.png", height: 24),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Profile Header
          Container(
            width: double.infinity,
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: [
                // Avatar
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'images/blibli-profile.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Masuk',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[700],
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Tidak punya akun? ',
                      style: TextStyle(color: Colors.grey[600], fontSize: 14),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Daftar',
                        style: TextStyle(
                          color: Colors.blue[700],
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 8),

          Container(
            color: Colors.white,
            child: Column(
              children: [
                _buildMenuItem(
                  icon: Icons.help_outline,
                  title: 'Bantuan BlibliCare',
                  onTap: () {},
                ),
                Divider(height: 1, thickness: 1),
                _buildMenuItem(
                  icon: Icons.shopping_bag_outlined,
                  title: 'Jual di Blibli',
                  onTap: () {},
                ),
              ],
            ),
          ),

          Spacer(),

          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.shopping_bag, color: Colors.grey[600], size: 20),
                    SizedBox(width: 8),
                    Text(
                      'Tentang Blibli',
                      style: TextStyle(color: Colors.grey[700], fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  'All Rights Reserved',
                  style: TextStyle(color: Colors.grey[500], fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(
          children: [
            Icon(icon, color: Colors.grey[600], size: 24),
            SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: TextStyle(fontSize: 16, color: Colors.grey[800]),
              ),
            ),
            Icon(Icons.chevron_right, color: Colors.grey[400]),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.blue[700],
      unselectedItemColor: Colors.grey[600],
      selectedFontSize: 12,
      unselectedFontSize: 12,
      currentIndex: 4,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.emoji_events_outlined),
          label: 'Blibli Bonus',
        ),
        BottomNavigationBarItem(
          icon: Stack(
            children: [
              Icon(Icons.shopping_bag_outlined),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  constraints: BoxConstraints(minWidth: 16, minHeight: 16),
                  child: Text(
                    '0',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          label: 'Bag',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt_outlined),
          label: 'Daftar pesanan',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Akun'),
      ],
    );
  }
}

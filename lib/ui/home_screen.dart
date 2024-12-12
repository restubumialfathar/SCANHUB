import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromARGB(255, 30, 62, 98)),
        title: Text(
          "Home",
          style: TextStyle(color: Color.fromARGB(255, 30, 62, 98)),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              color: Color.fromARGB(255, 30, 62, 98),
              icon: const Icon(Icons.settings)),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/pplagi.png'),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      "Halo, alfa",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 101, 0),
                      ),
                    ),
                    Text(
                      "Selamat Datang",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 255, 101, 0),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "aduuh gantengnyaa",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 30, 62, 98),
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("SCANNER",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 255, 101, 0),
                    )),
                Text("QR_CODE",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 255, 101, 0),
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                BuildButton(
                  icon: Icons.qr_code,
                  label: 'create',
                  iconColor: Color.fromARGB(255, 255, 101, 0),
                  backgroundColor: Color.fromARGB(255, 11, 25, 44),
                  onTap: () {
                    Navigator.pushNamed(context, '/create');
                  },
                ),
                BuildButton(
                  icon: Icons.adf_scanner,
                  label: 'scan',
                  iconColor: Color.fromARGB(255, 255, 101, 0),
                  backgroundColor: Color.fromARGB(255, 11, 25, 44),
                  onTap: () {
                    Navigator.pushNamed(context, '/scan');
                  },
                ),
                BuildButton(
                  icon: Icons.send,
                  label: 'send',
                  iconColor: Color.fromARGB(255, 255, 101, 0),
                  backgroundColor: Color.fromARGB(255, 11, 25, 44),
                  onTap: () {},
                ),
                BuildButton(
                  icon: Icons.print,
                  label: 'print',
                  iconColor: Color.fromARGB(255, 255, 101, 0),
                  backgroundColor: Color.fromARGB(255, 11, 25, 44),
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BuildButton extends StatelessWidget {
  const BuildButton({
    super.key,
    required this.icon,
    required this.label,
    required this.iconColor,
    required this.backgroundColor,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final Color iconColor;
  final Color backgroundColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: backgroundColor, // Warna latar ikon
              borderRadius: BorderRadius.circular(12), // Sudut membulat ikon
            ),
            padding: const EdgeInsets.all(35),
            child: Icon(
              icon,
              color: iconColor, // Warna ikon
              size: 70, // Ukuran ikon lebih besar
            ),
          ),
          const SizedBox(height: 10), // Jarak antara ikon dan teks
          Text(
            label,
            style: const TextStyle(
              color: Color.fromARGB(255, 255, 101, 0),
              fontWeight: FontWeight.bold,
              fontSize: 16, // Ukuran teks
            ),
          ),
        ],
      ),
    );
  }
}

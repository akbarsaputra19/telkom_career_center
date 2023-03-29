part of '../pages.dart';

class LowonganEmpty extends StatefulWidget {
  const LowonganEmpty({super.key});

  @override
  State<LowonganEmpty> createState() => _LowonganEmptyState();
}

class _LowonganEmptyState extends State<LowonganEmpty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Daftar Pelamar"),
        titleTextStyle: const TextStyle(
          fontFamily: "inter_semibold",
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Color(0xff333333)
        ),
        backgroundColor: const Color(0xffFFFFFF),
        leading: const Icon(Icons.arrow_back_ios_rounded, color: Color(0xff333333)
        ),
        elevation: 0.05
      ),
      body: Container(
        color: Colors.grey[100],
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 40, bottom: 16),
                  child: Image.asset(
                    "assets/images/illus-search-null.png",
                  width: 226,
                  height: 200,
                  fit: BoxFit.cover)
                ),
                Container(
                  margin: const EdgeInsets.only(top: 40, left: 16, right: 16),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                  Text(
                  'Data tidak ditemukan',
                  style: TextStyle(
                    fontFamily: "inter_semibold",
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff333333)
                  ),
                textAlign: TextAlign.center
                  ),
                SizedBox(height: 8),
                Text(
                  "Belum ada pelamar pekerjaan pada lowongan ini",
                  style: TextStyle(
                    fontFamily: "Regular",
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff333333)
                  ),
                  textAlign: TextAlign.center
                  )
                  ]
                ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 20, 0, 20),
                  child: InkWell(
                    onTap: () => context.go('/terkirim'),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Text(
                          "Kembali",
                        style: TextStyle(
                          fontFamily: "inter_semibold",
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffEA232A)
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
part of '../pages.dart';

class LowonganAktif extends StatefulWidget {
  const LowonganAktif({super.key});

  @override
  State<LowonganAktif> createState() => _LowonganAktifState();
}

class _LowonganAktifState extends State<LowonganAktif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Detail Pekerjaan"),
        titleTextStyle: const TextStyle(
          fontFamily: "inter_semibold",
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Color(0xff333333)
        ),
        backgroundColor: const Color(0xffFFFFFF),
        leading: const Icon(Icons.arrow_back_ios_rounded, color: Color(0xff333333)
        ),
        elevation: 0.05,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.grey[100],
            margin: const EdgeInsets.only(top: 16),
            child: Column(
              children: [
                Center(
                  child: Image.asset("assets/images/accenture.png"),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: const Text(
                    "Accounting Officer",
                    style: TextStyle(
                      fontFamily: 'inter_semibold',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff333333)
                    )
                  )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Accenture Southeast Asia",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400
                      )
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: const Text(
                    "Kebon Jeruk, Jakarta Barat",
                    style: TextStyle(
                      fontFamily: 'inter_semibold',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff333333)
                    )
                  )
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: const Text(
                    "26 Jan 2023 | 12 Pelamar",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    )
                  )
                ),
                TextButton(
                  onPressed: () => context.go('/detail'), 
                  child: const Text(
                    "Lihat Pelamar",
                    style: TextStyle(
                      fontFamily: 'inter_semibold',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffEA232A)
                    )
                  )
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16, top: 25),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "Kualifikasi",
                    style: TextStyle(
                      fontFamily: "inter_semibold",
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff333333),
                    )
                  )
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Html(data: htmlKualifikasi)
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16, top: 16),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "Deskripsi Pekerjaan",
                    style: TextStyle(
                      fontFamily: "inter_semibold",
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff333333),
                    )
                  )
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Html(data: htmlDeskripsi),
                ),
                const Divider(
                  height: 16,
                  thickness: 2,
                  indent: 16,
                  endIndent: 15,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16, top: 16),
                  alignment: Alignment.topLeft,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 8),
                        width: 40,
                        height: 40,
                        child: Image.asset(
                          "assets/images/accenture.png",
                        fit: BoxFit.cover),
                      ),
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                      Text(
                        "Accenture Southeast Asia",
                      style: TextStyle(
                        fontFamily: 'inter_semibold',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff333333)
                      )
                    ),
                    Text(
                      "Teknologi & Layanan Informasi",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff333333)
                            )
                          )
                        ]
                      )
                    ]
                  )
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16, right: 15),
                  alignment: Alignment.topLeft,
                  child: Html(data: htmlData),
                ),
              ]
            )
          )
        )
      )
    );
  }
}
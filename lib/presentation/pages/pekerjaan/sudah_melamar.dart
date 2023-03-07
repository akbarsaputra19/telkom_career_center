part of '../pages.dart';

class SudahMelamar extends StatefulWidget {
  const SudahMelamar({super.key});

  @override
  State<SudahMelamar> createState() => _SudahMelamarState();
}

const htmlKualifikasi = """
<ul>
<li>Gelar Sarjana (S1) di bidang Akutansi.</li>
<li>Pengalaman minimal 2 tahun di posisi Accounting.</li>
<li>Pengetahuan yang kuat tentang pembukuan dan prinsip akuntansi, hukum dan peraturan (PSAK).</li>
<li>Pengalaman bekerja di Perusahaan Retail atau FMCG menjadi nilai tambah.</li>
<li>Pemikiran analitis yang kuat dan kemampuan pemecahan masalah.</li>
<li>Berorientasi pada hasil dan memiliki mindset berkembang.</li>
<li>Baik dengan detail, tajam, mampu bekerja di bawah tekanan & bekerja dalam tim.</li>
<li>Keahlian komputer yang kuat, khususnya MS Excel (mengelola spreadsheet, membuat bagan, dan menggunakan rumus tingkat lanjut).</li>
</ul>""";

const htmlDeskripsi = """
<ul>
<li>Siapkan pelaporan keuangan dan pastikan semua informasi keuangan yang dilaporkan sesuai dengan catatan akuntansi.</li>
<li>Lakukan aktivitas akuntansi akhir bulan seperti rekonsiliasi dan entri jurnal.</li>
<li>Mendukung persiapan laporan manajemen bulanan, triwulanan, dan tahunan.</li>
<li>Memastikan kebenaran pembukuan yang relevan dan mendukung persiapan semua deklarasi pajak dengan benar tepat waktu.</li>
</ul>""";

const htmlData = """
<p>Accenture adalah perusahaan layanan profesional global dengan kemampuan terkemuka di bidang digital, cloud, dan keamanan. Menggabungkan pengalaman tak tertandingi dan keterampilan khusus di lebih dari 40 industri, kami menawarkan layanan Strategi dan Konsultasi, Interaktif, Teknologi, dan Operasi—semua didukung oleh jaringan pusat Teknologi Canggih dan Operasi Cerdas terbesar di dunia. 500.000+ orang kami memenuhi janji teknologi dan kecerdikan manusia setiap hari, melayani klien di lebih dari 120 negara. Kami merangkul kekuatan perubahan untuk menciptakan nilai dan kesuksesan bersama bagi klien, karyawan, pemegang saham, mitra, dan komunitas kami. Accenture Asia Tenggara terdiri dari Indonesia, Malaysia, Singapura, dan Thailand.</p>""";

class _SudahMelamarState extends State<SudahMelamar> {
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
            margin: const EdgeInsets.only(top: 16),
            child: Column(
              children: [
                Center(
                  child: Image.asset("assets/images/kompas.png")
                ),
              Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: const Text(
                    "Administration Warranty Staff",
                    style: TextStyle(
                      fontFamily: 'inter_semibold',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff333333)
                    )
                    )
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: const Text(
                          "KOMPAS GRAMEDIA",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                          )
                          )
                      )
                    ],
                  )
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
                    "Melamar 24 Jan 2023 | Lamaran sedang diproses",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
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
                        child: Image.asset("assets/images/kompas.png",
                        fit: BoxFit.cover),
                      ),
                      Container(
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                      Text("Kompas Gramedia",
                      style: TextStyle(
                      fontFamily: 'inter_semibold',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff333333)
                    )
                    ),
                    Text("Teknologi & Layanan Informasi",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff333333)
                              )
                            )
                          ]
                        ),
                      )
                    ]
                  )
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16, right: 15),
                  alignment: Alignment.topLeft,
                  child: Html(data: htmlData),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(16, 8, 15, 21),
                  child: ElevatedButton(
                    onPressed: () => context.go('/detail'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff999999),
                        padding: const EdgeInsets.fromLTRB(118.5, 12, 118.5, 12),
                      ),
                    child: const Text(
                      "Sudah Melamar",
                      style: TextStyle(
                          fontFamily: "inter_bold",
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffE6E6E6),
                        ),
                    )
                    ),
                )
              ]
            )
          )
        )
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan03/pages/get_started_page.dart';

class TampilanDua extends StatelessWidget {
  const TampilanDua({super.key});

  @override
  Widget build(BuildContext context) {
    Widget doctorCard(
      String img,
      String name,
      String role,
    ) {
      return Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            color: const Color(0xffFFFFFF)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 24,
          ),
          Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(img)))),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff000000),
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        role,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w300,
                          color: const Color(0xff000000),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  "assets/ic-star.png",
                                ))),
                      ),
                      Text(
                        "4.9",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff000000),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ]),
          )
        ]),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const GetStartedPage()),
                            );
                          },
                          child: Text(
                            'Hello, \nFajri Awwaluddin',
                            style: GoogleFonts.poppins(
                              fontSize: 24,
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Text(
                          'Stay Healty with Out Spesialist Doctor',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: const Color.fromARGB(200, 0, 0, 0),
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                    Container(
                      width: 75,
                      height: 75,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/img-profile.png",
                              ))),
                    ),
                  ],
                ),
                doctorCard("assets/img-doc2.png", "Dr. Reisa Broto Asmoro",
                    "specialist in internal\nmedicine and infection"),
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      " Indonesia. Ia terkenal sebagai salah satu juru bicara pemerintah Indonesia dalam menangani pandemi COVID-19 di Indonesia.\n Dokter Reisa lahir di Klaten, Jawa Tengah, pada tanggal 5 Mei 1975. Ia menyelesaikan pendidikan dokternya di Fakultas Kedokteran Universitas Gadjah Mada pada tahun 2000. Setelah itu, ia menyelesaikan program spesialisasi penyakit dalam di Rumah Sakit Umum Pusat Dr. Sardjito, Yogyakarta pada tahun 2006.\n Sebelum terjun ke dunia medis, dokter Reisa pernah bekerja sebagai pembaca berita dan reporter di salah satu stasiun televisi di Yogyakarta. Namun, ia akhirnya memutuskan untuk kembali ke dunia medis dan meniti karir sebagai dokter.\n Pada tahun 2018, dokter Reisa diangkat menjadi Direktur Pengendalian Penyakit Menular Langsung dan Zoonosis di Kementerian Kesehatan Republik Indonesia. Selain itu, ia juga sering menjadi narasumber dalam berbagai acara televisi dan menjadi salah satu juru bicara pemerintah dalam menangani pandemi COVID-19 di Indonesia.\n Dokter Reisa Broto Asmoro dikenal sebagai sosok yang cerdas dan memiliki komunikasi yang baik dengan publik. Ia aktif memberikan edukasi dan informasi kepada masyarakat mengenai pencegahan dan penanganan COVID-19. \n Dokter Reisa Broto Asmoro dikenal sebagai sosok yang cerdas dan memiliki komunikasi yang baik dengan publik. Ia aktif memberikan edukasi dan informasi kepada masyarakat mengenai pencegahan dan penanganan COVID-19.",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        color: const Color(0xff000000),
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_lintang/navigation/about_page.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  // Palet Warna Tema Perpustakaan Modern
  static const Color bg = Color(0xFF0D1117);
  static const Color surface = Color(0xFF161B22);
  static const Color gold = Color(0xFFF59E0B);
  static const Color amberLight = Color(0xFFFBBF24);
  static const Color emerald = Color(0xFF10B981);
  static const Color muted = Color(0xFF8B949E);

  @override
  Widget build(BuildContext context) {
    final List menus = [
      {
        'title': 'Peminjaman',
        'subtitle': 'Sirkulasi Buku',
        'icon': Icons.swap_horiz_rounded,
        'route': '/Perpustakaan', // Sesuaikan route jika sudah ada
        'number': '02',
        'color': emerald,
      },

      {
        'title': 'Peminjaman',
        'subtitle': 'Sirkulasi Buku',
        'icon': Icons.swap_horiz_rounded,
        'route': '/CommentsPage', // Sesuaikan route jika sudah ada
        'number': '02',
        'color': emerald,
      },
 ];

    return Scaffold(
      backgroundColor: bg,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(22, 25, 22, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // TOP BAR
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [gold, Color(0xFFD97706)],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.circular(13),
                                boxShadow: [
                                  BoxShadow(
                                    color: gold.withOpacity(0.25),
                                    blurRadius: 12,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: const Icon(
                                Icons.local_library_rounded,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'LINTANG LIBRARY',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  'DIGITAL ARCHIVE & SYSTEM',
                                  style: TextStyle(
                                    color: muted,
                                    fontSize: 9,
                                    letterSpacing: 1.2,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: emerald.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: emerald.withOpacity(0.3),
                            ),
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: emerald,
                                size: 8,
                              ),
                              SizedBox(width: 6),
                              Text(
                                'BUKA',
                                style: TextStyle(
                                  color: emerald,
                                  fontSize: 9,
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 32),

                    // GREETING
                    Text(
                      'SELAMAT DATANG,',
                      style: TextStyle(
                        color: gold,
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2.2,
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'Lintang.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.w900,
                        letterSpacing: -1,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      'Kelola koleksi buku dan literasi dengan mudah.',
                      style: TextStyle(
                        color: muted,
                        fontSize: 13,
                      ),
                    ),

                    const SizedBox(height: 24),

                    // HERO CARD (NUANSA BUKU & LITERASI)
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(22),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFF271F14),
                            Color(0xFF1A1817),
                            Color(0xFF161B22),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(
                          color: gold.withOpacity(0.3),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            right: -15,
                            bottom: -20,
                            child: Icon(
                              Icons.auto_stories_rounded,
                              size: 130,
                              color: gold.withOpacity(0.07),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: gold.withOpacity(0.15),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: const Text(
                                  'PUSTAKAWAN SYSTEM',
                                  style: TextStyle(
                                    color: amberLight,
                                    fontSize: 9,
                                    letterSpacing: 1.5,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              const Text(
                                'Baca. Catat.\nLestarikan.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  height: 1.2,
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: -0.5,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'Buku adalah jendela dunia. Kelola seluruh arsip bacaan dalam satu genggaman.',
                                style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: 11.5,
                                  height: 1.5,
                                ),
                              ),
                              const SizedBox(height: 20),
                              OutlinedButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AboutPage(
                                        nama: 'Lintang Ganteng',
                                        kelas: 'XII RPL 3',
                                        umur: 18,
                                      ),
                                    ),
                                  );
                                },
                                icon: const Icon(
                                  Icons.badge_outlined,
                                  size: 17,
                                ),
                                label: const Text('PROFIL PUSTAKAWAN'),
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: amberLight,
                                  side: BorderSide(
                                    color: gold.withOpacity(0.5),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 12,
                                  ),
                                  textStyle: const TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: 1,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 32),

                    // SECTION HEADER
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'LAYANAN PERPUSTAKAAN',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 0.8,
                          ),
                        ),
                        Text(
                          '${menus.length} MENU',
                          style: TextStyle(
                            color: gold,
                            fontSize: 10,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Text(
                      'Pilih menu untuk mengelola data perpustakaan.',
                      style: TextStyle(
                        color: muted,
                        fontSize: 11.5,
                      ),
                    ),
                    const SizedBox(height: 18),
                  ],
                ),
              ),
            ),

            // MENU GRID
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final menu = menus[index];
                    final Color itemColor = menu['color'] as Color;

                    return Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(18),
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            menu['route'] as String,
                          );
                        },
                        child: Ink(
                          decoration: BoxDecoration(
                            color: surface,
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(
                              color: const Color(0xFF262C36),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: itemColor.withOpacity(0.14),
                                        borderRadius: BorderRadius.circular(11),
                                      ),
                                      child: Icon(
                                        menu['icon'] as IconData,
                                        color: itemColor,
                                        size: 21,
                                      ),
                                    ),
                                    Text(
                                      menu['number'] as String,
                                      style: const TextStyle(
                                        color: Color(0xFF485261),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      menu['title'] as String,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.5,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      menu['subtitle'] as String,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        color: muted,
                                        fontSize: 10.5,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.arrow_forward_rounded,
                                      color: itemColor,
                                      size: 17,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  childCount: menus.length,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 14,
                  childAspectRatio: 1.08,
                ),
              ),
            ),

            // FOOTER
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(22, 32, 22, 25),
                child: Column(
                  children: [
                    Container(
                      height: 1,
                      color: const Color(0xFF21262D),
                    ),
                    const SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.auto_stories_outlined,
                          color: gold,
                          size: 15,
                        ),
                        const SizedBox(width: 7),
                        Text(
                          'SISTEM PERPUSTAKAAN • BY LINTANG',
                          style: TextStyle(
                            color: muted,
                            fontSize: 9.5,
                            letterSpacing: 1.4,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
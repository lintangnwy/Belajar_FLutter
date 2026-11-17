
import 'package:flutter/material.dart';
import 'package:flutter_lintang/navigation/about_page.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  static const Color bg = Color(0xFF080B12);
  static const Color surface = Color(0xFF111722);
  static const Color blue = Color(0xFF3987FF);
  static const Color cyan = Color(0xFF36D6E8);
  static const Color muted = Color(0xFF8491A5);

  @override
  Widget build(BuildContext context) {
    final menus = [
      {
        'title': 'Grid View',
        'subtitle': 'Grid Layout',
        'icon': Icons.grid_view_rounded,
        'route': '/GridView',
        'number': '01',
      },
      {
        'title': 'List Widget',
        'subtitle': 'List Components',
        'icon': Icons.view_agenda_rounded,
        'route': '/list_widget',
        'number': '02',
      },
      {
        'title': 'Expanded',
        'subtitle': 'Flexible Layout',
        'icon': Icons.open_in_full_rounded,
        'route': '/sized_expanded_stack',
        'number': '03',
      },
      {
        'title': 'Row & Column',
        'subtitle': 'Basic Layout',
        'icon': Icons.view_week_rounded,
        'route': '/row_column',
        'number': '04',
      },
      {
        'title': 'Container',
        'subtitle': 'UI Components',
        'icon': Icons.crop_square_rounded,
        'route': '/container_widget',
        'number': '05',
      },
      {
        'title': 'Latihan 1',
        'subtitle': 'Coding Practice',
        'icon': Icons.code_rounded,
        'route': '/latihan',
        'number': '06',
      },
      {
        'title': 'Latihan 2',
        'subtitle': 'Coding Practice',
        'icon': Icons.terminal_rounded,
        'route': '/Latihan2fix',
        'number': '07',
      },
      {
        'title': 'Latihan 3',
        'subtitle': 'Coding Practice',
        'icon': Icons.widgets_rounded,
        'route': '/Latihan3',
        'number': '08',
      },
      {
        'title': 'Latihan 4',
        'subtitle': 'Coding Practice',
        'icon': Icons.dashboard_customize_rounded,
        'route': '/Latihan4',
        'number': '09',
      },
      {
        'title': 'Latihan 5',
        'subtitle': 'Coding Practice',
        'icon': Icons.layers_rounded,
        'route': '/Latihan5',
        'number': '10',
      },
      {
        'title': 'Latihan 7',
        'subtitle': 'Coding Practice',
        'icon': Icons.rocket_launch_rounded,
        'route': '/Latihan7',
        'number': '11',
      },
      {
        'title': 'Formulir',
        'subtitle': 'Form Components',
        'icon': Icons.assignment_rounded,
        'route': '/FormEkskul',
        'number': '12',
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
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 42,
                              height: 42,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [blue, cyan],
                                ),
                                borderRadius:
                                    BorderRadius.circular(13),
                              ),
                              child: const Icon(
                                Icons.terminal_rounded,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'LINTANG.DEV',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15,
                                    letterSpacing: 1.5,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  'PERSONAL WORKSPACE',
                                  style: TextStyle(
                                    color: muted,
                                    fontSize: 9,
                                    letterSpacing: 1.4,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 9,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFF14251F),
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: const Color(0xFF245B43),
                            ),
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Color(0xFF35D49A),
                                size: 8,
                              ),
                              SizedBox(width: 7),
                              Text(
                                'ONLINE',
                                style: TextStyle(
                                  color: Color(0xFF5DE5AA),
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

                    const SizedBox(height: 35),

                    // GREETING
                    Text(
                      'WELCOME BACK,',
                      style: TextStyle(
                        color: muted,
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2.5,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Lintang.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w900,
                        letterSpacing: -1.5,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Build something extraordinary.',
                      style: TextStyle(
                        color: muted,
                        fontSize: 13,
                      ),
                    ),

                    const SizedBox(height: 25),

                    // HERO CARD
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(22),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFF172A43),
                            Color(0xFF101B2C),
                            Color(0xFF111722),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(
                          color: const Color(0xFF263C56),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            right: -10,
                            top: -15,
                            child: Icon(
                              Icons.code_rounded,
                              size: 120,
                              color: Colors.white.withOpacity(0.045),
                            ),
                          ),
                          Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: blue.withOpacity(0.15),
                                  borderRadius:
                                      BorderRadius.circular(6),
                                ),
                                child: const Text(
                                  'FLUTTER DEVELOPER',
                                  style: TextStyle(
                                    color: Color(0xFF70ABFF),
                                    fontSize: 9,
                                    letterSpacing: 1.5,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 18),
                              const Text(
                                'Code. Create.\nInnovate.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  height: 1.2,
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: -0.5,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'Your journey to becoming a great developer starts here.',
                                style: TextStyle(
                                  color: Colors.blueGrey.shade200,
                                  fontSize: 11,
                                  height: 1.6,
                                ),
                              ),
                              const SizedBox(height: 20),
                              OutlinedButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          AboutPage(
                                        nama: 'Lintang Ganteng',
                                        kelas: 'XII RPL 3',
                                        umur: 18,
                                      ),
                                    ),
                                  );
                                },
                                icon: const Icon(
                                  Icons.person_outline_rounded,
                                  size: 17,
                                ),
                                label: const Text('ABOUT ME'),
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: cyan,
                                  side: const BorderSide(
                                    color: Color(0xFF3475A0),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 15,
                                    vertical: 12,
                                  ),
                                  textStyle: const TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: 1,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(9),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 35),

                    // SECTION HEADER
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'MY WORKSPACE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 1,
                          ),
                        ),
                        Text(
                          '12 MODULES',
                          style: TextStyle(
                            color: muted,
                            fontSize: 10,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 7),
                    Text(
                      'Select a module and start exploring.',
                      style: TextStyle(
                        color: muted,
                        fontSize: 11,
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

                    return Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(17),
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            menu['route'] as String,
                          );
                        },
                        child: Ink(
                          decoration: BoxDecoration(
                            color: surface,
                            borderRadius: BorderRadius.circular(17),
                            border: Border.all(
                              color: const Color(0xFF222C3A),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 39,
                                      height: 39,
                                      decoration: BoxDecoration(
                                        color: blue.withOpacity(0.12),
                                        borderRadius:
                                            BorderRadius.circular(11),
                                      ),
                                      child: const Icon(
                                        Icons.code_rounded,
                                        color: cyan,
                                        size: 21,
                                      ),
                                    ),
                                    Text(
                                      menu['number'] as String,
                                      style: const TextStyle(
                                        color: Color(0xFF465366),
                                        fontSize: 11,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ],
                                ),

                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      menu['title'] as String,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      menu['subtitle'] as String,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        color: muted,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.end,
                                  children: const [
                                    Icon(
                                      Icons.arrow_outward_rounded,
                                      color: cyan,
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
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 13,
                  mainAxisSpacing: 13,
                  childAspectRatio: 1.12,
                ),
              ),
            ),

            // FOOTER
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(22, 30, 22, 25),
                child: Column(
                  children: [
                    Container(
                      height: 1,
                      color: const Color(0xFF222C3A),
                    ),
                    const SizedBox(height: 18),
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.terminal_rounded,
                          color: cyan,
                          size: 15,
                        ),
                        const SizedBox(width: 7),
                        Text(
                          'DESIGNED & BUILT BY LINTANG',
                          style: TextStyle(
                            color: muted,
                            fontSize: 9,
                            letterSpacing: 1.5,
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

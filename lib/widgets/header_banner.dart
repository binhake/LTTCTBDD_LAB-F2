import 'package:flutter/material.dart';

/// Ảnh bìa có nền chuyển màu và ảnh đại diện chồng lên — dùng Stack + Positioned.
class HeaderBanner extends StatelessWidget {
  const HeaderBanner({super.key, required this.onDoiCheDo});

  final VoidCallback onDoiCheDo;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final laCheDoToi = Theme.of(context).brightness == Brightness.dark;
    return SizedBox(
      height: 196,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [scheme.primary, scheme.tertiary],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              image: const DecorationImage(
                image: AssetImage('assets/images/Untitled.png'),
                fit: BoxFit.cover,
                opacity: 0.35,
              ),
              borderRadius: const BorderRadius.vertical(bottom: Radius.circular(24)),
            ),
            padding: const EdgeInsets.fromLTRB(20, 24, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'INT4211 – LẬP TRÌNH DI ĐỘNG',
                  style: TextStyle(color: scheme.onPrimary, fontSize: 12, letterSpacing: 1.5),
                ),
                const SizedBox(height: 6),
                Text(
                  'Cổng thực hành LTDD',
                  style: TextStyle(
                    color: scheme.onPrimary,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Center(
              child: CircleAvatar(
                radius: 46,
                backgroundColor: scheme.surface,
                child: CircleAvatar(
                  radius: 42,
                  backgroundColor: scheme.primaryContainer,
                  // child: Text(
                  //   'LT',
                  //   style: TextStyle(
                  //     fontSize: 30,
                  //     fontWeight: FontWeight.bold,
                  //     color: scheme.onPrimaryContainer,
                  //   ),
                  // ),
                  child: const CircleAvatar(
                    radius: 42,
                    backgroundImage: AssetImage('assets/images/avatar.jpg'),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 8,
            right: 8,
            child: IconButton(
              tooltip: laCheDoToi ? 'Chế độ sáng' : 'Chế độ tối',
              icon: Icon(
                laCheDoToi ? Icons.light_mode : Icons.dark_mode,
                color: scheme.onPrimary,
              ),
              onPressed: onDoiCheDo,
            ),
          ),
        ],
      ),
    );
  }
}
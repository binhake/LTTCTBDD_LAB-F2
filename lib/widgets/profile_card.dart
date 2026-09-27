import 'package:flutter/material.dart';

import 'stat_box.dart';

/// Thẻ thông tin sinh viên — Card + ListTile + Row/Expanded.
class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: scheme.shadow.withValues(alpha: 0.18),
              blurRadius: 16,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Card(
          margin: EdgeInsets.zero,
          child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const ListTile(
                leading: CircleAvatar(child: Text('B')),
                title: Text('Nguyễn Trọng Bình'),
                subtitle: Text('MSSV: 231A010044'),
              ),
              const Divider(height: 1),
              const ListTile(
                leading: Icon(Icons.class_outlined),
                title: Text('Lớp'),
                subtitle: Text('CNTT – LTDD'),
              ),
              const ListTile(
                leading: Icon(Icons.mail_outline),
                title: Text('Email'),
                subtitle: Text('binh231A010044@st.vhu.edu.vn'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
                child: Row(
                  children: const [
                    Expanded(child: StatBox(label: 'Lab đã nộp', value: '5')),
                    SizedBox(width: 12),
                    Expanded(child: StatBox(label: 'Điểm TB lab', value: '9.5')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
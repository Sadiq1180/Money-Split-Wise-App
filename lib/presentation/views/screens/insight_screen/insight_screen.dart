import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:project_core/presentation/widgets/custom_title.dart';
import 'package:project_core/shared/constants/app_colors.dart';

// ---------------------------------------------------------------------------
// Design tokens
// ---------------------------------------------------------------------------
class _C {
  static const green = Color(0xFF35D49A);
  static const red = Color(0xFFFF6B72);
  static const blue = Color(0xFF6C8CFF);
  static const orange = Color(0xFFFFA45B);
  static const purple = Color(0xFFC58BFF);
  static const card = Color(0xFF20242F);
  static const muted = Color(0xFF9CA3B4);
}

// ---------------------------------------------------------------------------
// Sample data (swap with real data / state management later)
// ---------------------------------------------------------------------------
class _Category {
  final String title;
  final IconData icon;
  final int amount;
  final Color color;
  const _Category(this.title, this.icon, this.amount, this.color);
}

class _DaySpendPoint {
  final String label;
  final int amount;
  const _DaySpendPoint(this.label, this.amount);
}

const int _income = 40000;
const int _spending = 25000;
const int _owed = 3500;
const int _owe = 1500;

const _week = [
  _DaySpendPoint('Mon', 1200),
  _DaySpendPoint('Tue', 2100),
  _DaySpendPoint('Wed', 1500),
  _DaySpendPoint('Thu', 3000),
  _DaySpendPoint('Fri', 1700),
  _DaySpendPoint('Sat', 3400),
  _DaySpendPoint('Sun', 1100),
];

const _categories = [
  _Category('Food & Dining', Icons.restaurant_rounded, 10000, _C.orange),
  _Category('Transport', Icons.directions_car_rounded, 6000, _C.blue),
  _Category('Shopping', Icons.shopping_bag_outlined, 5000, _C.purple),
  _Category('Other', Icons.receipt_long_rounded, 4000, _C.green),
];

String _fmt(int n) {
  final s = n.abs().toString();
  final buf = StringBuffer();
  for (var i = 0; i < s.length; i++) {
    if (i > 0 && (s.length - i) % 3 == 0) buf.write(',');
    buf.write(s[i]);
  }
  return (n < 0 ? '-' : '') + buf.toString();
}

// ---------------------------------------------------------------------------
// Screen
// ---------------------------------------------------------------------------
class InsightScreen extends StatefulWidget {
  static const String routeName = "InsightScreen";

  const InsightScreen({super.key});

  @override
  State<InsightScreen> createState() => _InsightScreenState();
}

class _InsightScreenState extends State<InsightScreen> {
  int _selectedDay = 5; // defaults to the highest-spend day

  int get _net => _income - _spending;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dark,
      appBar: CustomTitle(title: 'Insights'),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              const SizedBox(height: 20),
              _buildBalanceCard(),
              const SizedBox(height: 14),
              Row(
                children: [
                  Expanded(
                    child: _buildMiniCard(
                      title: 'Total income',
                      amount: _income,
                      icon: Icons.south_west_rounded,
                      color: _C.green,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildMiniCard(
                      title: 'Total spending',
                      amount: _spending,
                      icon: Icons.north_east_rounded,
                      color: _C.red,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              _buildSectionHeader('Spending overview', 'This week'),
              const SizedBox(height: 14),
              _buildWeeklyChart(),
              const SizedBox(height: 30),
              _buildSectionHeader('Spending categories', 'This month'),
              const SizedBox(height: 14),
              _buildCategoryCard(),
              const SizedBox(height: 30),
              _buildSectionHeader('Group settlements', 'Summary'),
              const SizedBox(height: 14),
              _buildSettlementCard(),
              const SizedBox(height: 24),
              _buildFooter(),
            ],
          ),
        ),
      ),
    );
  }

  // ------------------------------------------------------------------ header
  Widget _buildHeader() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your financial overview',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w700,
            letterSpacing: -0.5,
          ),
        ),
        SizedBox(height: 6),
        Text(
          'Track your money and stay in control.',
          style: TextStyle(color: _C.muted, fontSize: 13),
        ),
      ],
    );
  }

  // ------------------------------------------------------------ balance card
  Widget _buildBalanceCard() {
    final spentRatio = _spending / _income;
    final savedRatio = 1 - spentRatio;
    final positive = _net >= 0;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF176B55), Color(0xFF164A43), Color(0xFF252E3A)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: _C.green.withValues(alpha: 0.22)),
        boxShadow: [
          BoxShadow(
            color: _C.green.withValues(alpha: 0.10),
            blurRadius: 30,
            offset: const Offset(0, 14),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(9),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(
                  Icons.account_balance_wallet_outlined,
                  color: Colors.white,
                  size: 21,
                ),
              ),
              const SizedBox(width: 10),
              const Expanded(
                child: Text(
                  'Net cash flow',
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: _C.green.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'Monthly',
                  style: TextStyle(
                    color: _C.green,
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          TweenAnimationBuilder<double>(
            tween: Tween(begin: 0, end: _net.toDouble()),
            duration: const Duration(milliseconds: 900),
            curve: Curves.easeOutCubic,
            builder: (_, v, __) => Text(
              'PKR ${_fmt(v.round())}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 34,
                fontWeight: FontWeight.w800,
                letterSpacing: -0.8,
                fontFeatures: [FontFeature.tabularFigures()],
              ),
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            'Income minus spending',
            style: TextStyle(color: Colors.white70, fontSize: 12),
          ),
          const SizedBox(height: 22),

          // Spent vs saved split bar
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SizedBox(
              height: 8,
              child: Row(
                children: [
                  Expanded(
                    flex: (spentRatio * 1000).round(),
                    child: Container(color: _C.red.withValues(alpha: 0.85)),
                  ),
                  const SizedBox(width: 3),
                  Expanded(
                    flex: (savedRatio * 1000).round(),
                    child: Container(color: _C.green),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              _legendDot(_C.red, 'Spent ${(spentRatio * 100).round()}%'),
              const SizedBox(width: 16),
              _legendDot(_C.green, 'Saved ${(savedRatio * 100).round()}%'),
            ],
          ),
          const SizedBox(height: 18),
          Container(height: 1, color: Colors.white.withValues(alpha: 0.15)),
          const SizedBox(height: 14),
          Row(
            children: [
              Icon(
                positive
                    ? Icons.trending_up_rounded
                    : Icons.trending_down_rounded,
                color: positive ? _C.green : _C.red,
                size: 18,
              ),
              const SizedBox(width: 7),
              Expanded(
                child: Text(
                  positive
                      ? 'You earned more than you spent.'
                      : 'You spent more than you earned.',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _legendDot(Color color, String text) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        const SizedBox(width: 6),
        Text(text, style: const TextStyle(color: Colors.white70, fontSize: 11)),
      ],
    );
  }

  // --------------------------------------------------------------- mini card
  Widget _buildMiniCard({
    required String title,
    required int amount,
    required IconData icon,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _C.card,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withValues(alpha: 0.05)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.14),
              borderRadius: BorderRadius.circular(11),
            ),
            child: Icon(icon, color: color, size: 19),
          ),
          const SizedBox(height: 16),
          Text(title, style: const TextStyle(color: _C.muted, fontSize: 12)),
          const SizedBox(height: 6),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              'PKR ${_fmt(amount)}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 19,
                fontWeight: FontWeight.w700,
                fontFeatures: [FontFeature.tabularFigures()],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ---------------------------------------------------------- section header
  Widget _buildSectionHeader(String title, String subtitle) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.06),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            subtitle,
            style: const TextStyle(color: _C.muted, fontSize: 11),
          ),
        ),
      ],
    );
  }

  // ------------------------------------------------------------ weekly chart
  Widget _buildWeeklyChart() {
    const chartHeight = 150.0;
    final maxValue = _week.map((d) => d.amount).reduce(math.max);
    final total = _week.fold<int>(0, (s, d) => s + d.amount);
    final avg = (total / _week.length).round();
    final selected = _week[_selectedDay];

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(16, 18, 16, 14),
      decoration: BoxDecoration(
        color: _C.card,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Total this week',
                      style: TextStyle(color: _C.muted, fontSize: 11),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'PKR ${_fmt(total)}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontFeatures: [FontFeature.tabularFigures()],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'Daily average',
                    style: TextStyle(color: _C.muted, fontSize: 11),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'PKR ${_fmt(avg)}',
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 22),
          SizedBox(
            height: chartHeight,
            child: LayoutBuilder(
              builder: (context, constraints) {
                // Space reserved above the tallest bar for the value tooltip.
                const tooltipSlot = 32.0;
                final maxBarHeight = constraints.maxHeight - tooltipSlot;

                return Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: List.generate(_week.length, (i) {
                    final point = _week[i];
                    final isSelected = i == _selectedDay;
                    final isPeak = point.amount == maxValue;
                    final barColor = isSelected
                        ? _C.green
                        : _C.blue.withValues(alpha: isPeak ? 0.9 : 0.5);
                    final barHeight = math.max(
                      4.0,
                      (point.amount / maxValue) * maxBarHeight,
                    );

                    return Expanded(
                      child: Semantics(
                        button: true,
                        selected: isSelected,
                        label: '${point.label}, PKR ${_fmt(point.amount)}',
                        child: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () => setState(() => _selectedDay = i),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: TweenAnimationBuilder<double>(
                              tween: Tween(begin: 0, end: 1),
                              duration: Duration(milliseconds: 500 + (i * 70)),
                              curve: Curves.easeOutCubic,
                              builder: (_, t, __) {
                                // Stack + Positioned can never overflow,
                                // unlike a Column with fixed-size children.
                                return Stack(
                                  alignment: Alignment.bottomCenter,
                                  clipBehavior: Clip.none,
                                  children: [
                                    Positioned(
                                      bottom: barHeight * t + 6,
                                      child: AnimatedOpacity(
                                        duration: const Duration(
                                          milliseconds: 180,
                                        ),
                                        opacity: isSelected ? 1 : 0,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 6,
                                            vertical: 3,
                                          ),
                                          decoration: BoxDecoration(
                                            color: _C.green.withValues(
                                              alpha: 0.16,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              8,
                                            ),
                                          ),
                                          child: Text(
                                            _fmt(point.amount),
                                            maxLines: 1,
                                            style: const TextStyle(
                                              color: _C.green,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    AnimatedContainer(
                                      duration: const Duration(
                                        milliseconds: 200,
                                      ),
                                      height: barHeight * t,
                                      decoration: BoxDecoration(
                                        color: barColor,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: List.generate(_week.length, (i) {
              final isSelected = i == _selectedDay;
              return Expanded(
                child: Text(
                  _week[i].label,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: isSelected ? _C.green : _C.muted,
                    fontSize: 10,
                    fontWeight: isSelected ? FontWeight.w700 : FontWeight.w400,
                  ),
                ),
              );
            }),
          ),
          const SizedBox(height: 14),
          Container(height: 1, color: Colors.white.withValues(alpha: 0.06)),
          const SizedBox(height: 12),
          Text(
            selected.amount > avg
                ? '${selected.label} was PKR ${_fmt(selected.amount - avg)} above your daily average.'
                : '${selected.label} was PKR ${_fmt(avg - selected.amount)} below your daily average.',
            style: const TextStyle(color: Colors.white70, fontSize: 12),
          ),
        ],
      ),
    );
  }

  // ----------------------------------------------------------- category card
  Widget _buildCategoryCard() {
    final total = _categories.fold<int>(0, (s, c) => s + c.amount);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: _C.card,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        children: [
          SizedBox(
            width: 172,
            height: 172,
            child: TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: 1),
              duration: const Duration(milliseconds: 1000),
              curve: Curves.easeOutCubic,
              builder: (_, t, __) => CustomPaint(
                painter: _DonutPainter(
                  fractions: _categories.map((c) => c.amount / total).toList(),
                  colors: _categories.map((c) => c.color).toList(),
                  progress: t,
                ),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Total spent',
                        style: TextStyle(color: _C.muted, fontSize: 11),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        _fmt(total),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -0.4,
                        ),
                      ),
                      const Text(
                        'PKR',
                        style: TextStyle(color: _C.muted, fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 22),
          for (var i = 0; i < _categories.length; i++) ...[
            _buildCategoryRow(_categories[i], total),
            if (i != _categories.length - 1) const SizedBox(height: 16),
          ],
        ],
      ),
    );
  }

  Widget _buildCategoryRow(_Category c, int total) {
    final pct = c.amount / total;

    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: c.color.withValues(alpha: 0.13),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(c.icon, color: c.color, size: 20),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      c.title,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'PKR ${_fmt(c.amount)}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontFeatures: [FontFeature.tabularFigures()],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: TweenAnimationBuilder<double>(
                        tween: Tween(begin: 0, end: pct),
                        duration: const Duration(milliseconds: 900),
                        curve: Curves.easeOutCubic,
                        builder: (_, v, __) => LinearProgressIndicator(
                          value: v,
                          minHeight: 5,
                          backgroundColor: Colors.white.withValues(alpha: 0.08),
                          valueColor: AlwaysStoppedAnimation<Color>(c.color),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 30,
                    child: Text(
                      '${(pct * 100).round()}%',
                      textAlign: TextAlign.right,
                      style: const TextStyle(color: _C.muted, fontSize: 11),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  // ---------------------------------------------------------- settlement card
  Widget _buildSettlementCard() {
    final net = _owed - _owe;
    final positive = net >= 0;
    final netColor = positive ? _C.green : _C.red;

    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: _C.card,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        children: [
          _buildSettlementRow(
            icon: Icons.arrow_downward_rounded,
            title: 'You are owed',
            subtitle: 'Money others owe you',
            amount: 'PKR ${_fmt(_owed)}',
            color: _C.green,
          ),
          const SizedBox(height: 18),
          Container(height: 1, color: Colors.white.withValues(alpha: 0.07)),
          const SizedBox(height: 18),
          _buildSettlementRow(
            icon: Icons.arrow_upward_rounded,
            title: 'You owe',
            subtitle: 'Your pending payments',
            amount: 'PKR ${_fmt(_owe)}',
            color: _C.red,
          ),
          const SizedBox(height: 18),
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: netColor.withValues(alpha: 0.09),
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: netColor.withValues(alpha: 0.18)),
            ),
            child: Row(
              children: [
                Icon(Icons.balance_rounded, color: netColor, size: 20),
                const SizedBox(width: 10),
                const Expanded(
                  child: Text(
                    'Net settlement balance',
                    style: TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                ),
                Text(
                  '${positive ? '+' : '-'} PKR ${_fmt(net.abs())}',
                  style: TextStyle(
                    color: netColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSettlementRow({
    required IconData icon,
    required String title,
    required String subtitle,
    required String amount,
    required Color color,
  }) {
    return Row(
      children: [
        Container(
          width: 42,
          height: 42,
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.12),
            borderRadius: BorderRadius.circular(13),
          ),
          child: Icon(icon, color: color, size: 21),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: const TextStyle(color: _C.muted, fontSize: 11),
              ),
            ],
          ),
        ),
        const SizedBox(width: 6),
        Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              amount,
              style: TextStyle(
                color: color,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFooter() {
    return Center(
      child: Text(
        'Your money, clearly understood.',
        style: TextStyle(
          color: _C.muted.withValues(alpha: 0.7),
          fontSize: 11,
          letterSpacing: 0.3,
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Donut chart painter
// ---------------------------------------------------------------------------
class _DonutPainter extends CustomPainter {
  final List<double> fractions;
  final List<Color> colors;
  final double progress;

  _DonutPainter({
    required this.fractions,
    required this.colors,
    required this.progress,
  });

  @override
  void paint(Canvas canvas, Size size) {
    const stroke = 16.0;
    const gap = 0.07; // radians between segments
    final rect = (Offset.zero & size).deflate(stroke / 2);

    final track = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = stroke
      ..color = Colors.white.withValues(alpha: 0.06);
    canvas.drawArc(rect, 0, math.pi * 2, false, track);

    var start = -math.pi / 2;
    for (var i = 0; i < fractions.length; i++) {
      final full = fractions[i] * math.pi * 2;
      final sweep = math.max(0.0, full * progress - gap);
      final paint = Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = stroke
        ..strokeCap = StrokeCap.round
        ..color = colors[i];
      if (sweep > 0) {
        canvas.drawArc(rect, start + gap / 2, sweep, false, paint);
      }
      start += full * progress;
    }
  }

  @override
  bool shouldRepaint(covariant _DonutPainter old) =>
      old.progress != progress ||
      old.fractions != fractions ||
      old.colors != colors;
}

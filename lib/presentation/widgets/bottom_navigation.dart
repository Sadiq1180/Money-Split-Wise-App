// import 'package:flutter/material.dart';
// import 'package:project_core/presentation/views/screens/main_screens/home_screen/home_page.dart';

// class MainNavigationScreen extends StatefulWidget {
//   static const String routeName = "MainNavigationScreen";
//   const MainNavigationScreen({super.key});

//   @override
//   State<MainNavigationScreen> createState() => _MainNavigationScreenState();
// }

// class _MainNavigationScreenState extends State<MainNavigationScreen> {
//   int _selectedIndex = 0;

//   final List<Widget> _screens = [
//     HomePage(),
//     Center(
//       child: Text('Splinters', style: TextStyle(color: Colors.white)),
//     ),
//     Center(
//       child: Text('Insights', style: TextStyle(color: Colors.white)),
//     ),
//     Center(
//       child: Text('Profile', style: TextStyle(color: Colors.white)),
//     ),
//   ];

//   void _onTabTapped(int index) {
//     setState(() => _selectedIndex = index);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF1A1A1A), // Dark background
//       body: _screens[_selectedIndex],
//       bottomNavigationBar: Container(
//         decoration: BoxDecoration(
//           color: const Color(0xFF2D2D2D), // Dark grey background
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.3),
//               blurRadius: 10,
//               offset: const Offset(0, -2),
//             ),
//           ],
//         ),
//         child: SafeArea(
//           child: SizedBox(
//             height: 70,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Expanded(
//                   child: _buildNavItem(
//                     icon: Icons.home,
//                     label: 'Home',
//                     index: 0,
//                   ),
//                 ),
//                 Expanded(
//                   child: _buildNavItem(
//                     icon: Icons.people_alt_rounded,
//                     label: 'Splinter',
//                     index: 1,
//                   ),
//                 ),
//                 Expanded(
//                   child: _buildNavItem(
//                     icon: Icons.insights,
//                     label: 'Insights',
//                     index: 2,
//                   ),
//                 ),
//                 Expanded(
//                   child: _buildNavItem(
//                     icon: Icons.person,
//                     label: 'Profile',
//                     index: 3,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildNavItem({
//     required IconData icon,
//     required String label,
//     required int index,
//   }) {
//     final bool isSelected = _selectedIndex == index;

//     return GestureDetector(
//       onTap: () => _onTabTapped(index),
//       child: AnimatedContainer(
//         duration: const Duration(milliseconds: 200),
//         margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
//         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//         decoration: BoxDecoration(
//           color: isSelected
//               ? const Color(0xFFD4AF37).withOpacity(
//                   0.15,
//                 ) // Golden background with opacity
//               : Colors.transparent,
//           borderRadius: BorderRadius.circular(12),
//           border: isSelected
//               ? Border.all(color: const Color(0xFFD4AF37), width: 1)
//               : null,
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             AnimatedContainer(
//               duration: const Duration(milliseconds: 200),
//               child: Icon(
//                 icon,
//                 color: isSelected
//                     ? const Color(0xFFD4AF37) // Golden color when selected
//                     : const Color(0xFF8A8A8A), // Light grey when not selected
//                 size: isSelected ? 22 : 22,
//               ),
//             ),
//             // const SizedBox(height: 4),
//             AnimatedDefaultTextStyle(
//               duration: const Duration(milliseconds: 200),
//               style: TextStyle(
//                 fontSize: isSelected ? 12 : 11,
//                 color: isSelected
//                     ? const Color(0xFFD4AF37) // Golden color when selected
//                     : const Color(0xFF8A8A8A), // Light grey when not selected
//                 fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
//               ),
//               child: Text(label),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

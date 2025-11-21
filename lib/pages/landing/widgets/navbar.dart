import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../providers/theme_provider.dart';

class LandingNavbar extends ConsumerWidget {
  const LandingNavbar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    final isDark = themeMode == ThemeMode.dark;
    final theme = Theme.of(context);
    final screenWidth = MediaQuery.of(context).size.width;
    final showFullNav = screenWidth >= 850;
    final showCompactNav = screenWidth >= 600 && screenWidth < 850;

    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth < 600 ? 16 : (screenWidth < 900 ? 24 : 48),
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface.withOpacity(0.9),
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.outlineVariant.withOpacity(0.3),
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          // Logo
          Flexible(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.local_pharmacy,
                  color: theme.colorScheme.primary,
                  size: 28,
                ),
                const SizedBox(width: 8),
                Text(
                  'ikPharma',
                  style: GoogleFonts.inter(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ],
            ),
          ),

          const Spacer(),

          // Desktop Navigation (show only on large screens)
          if (showFullNav) ...[
            _NavLink(label: 'Features', onTap: () {}),
            const SizedBox(width: 24),
            _NavLink(label: 'Solutions', onTap: () {}),
            const SizedBox(width: 24),
            _NavLink(label: 'Pricing', onTap: () {}),
            const SizedBox(width: 24),
            _NavLink(label: 'Resources', onTap: () {}),
            const SizedBox(width: 24),
          ],

          // Theme Toggle
          IconButton(
            onPressed: () => ref.read(themeProvider.notifier).toggle(),
            icon: Icon(
              isDark ? Icons.light_mode : Icons.dark_mode,
              color: theme.colorScheme.onSurface,
            ),
            tooltip: isDark ? 'Light Mode' : 'Dark Mode',
          ),

          if (showFullNav) ...[
            const SizedBox(width: 8),
            // Login Button
            TextButton(
              onPressed: () {},
              child: Text(
                'Login',
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(width: 8),
            // CTA Button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                elevation: 0,
              ),
              child: Text(
                'Start Free Trial',
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ] else if (showCompactNav) ...[
            const SizedBox(width: 8),
            // Compact CTA Button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                elevation: 0,
              ),
              child: Text(
                'Get Started',
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ] else ...[
            // Mobile Menu Icon
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          ],
        ],
      ),
    );
  }
}

class _NavLink extends StatefulWidget {
  final String label;
  final VoidCallback onTap;

  const _NavLink({required this.label, required this.onTap});

  @override
  State<_NavLink> createState() => _NavLinkState();
}

class _NavLinkState extends State<_NavLink> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 200),
          style: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: _isHovered
                ? theme.colorScheme.primary
                : theme.colorScheme.onSurface.withOpacity(0.7),
          ),
          child: Text(widget.label),
        ),
      ),
    );
  }
}

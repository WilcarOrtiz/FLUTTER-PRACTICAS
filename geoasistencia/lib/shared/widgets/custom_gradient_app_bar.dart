import 'package:flutter/material.dart';
import '../../shared/themes/app_colors.dart';

class CustomGradientAppBar extends StatelessWidget {
  final double height;
  final Widget? child;
  final bool center;
  final VoidCallback? onBack;
  final String? goToRoute;
  final String? leadingText;

  const CustomGradientAppBar({
    super.key,
    this.height = 180,
    this.child,
    this.center = false,
    this.onBack,
    this.goToRoute,
    this.leadingText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.primary, AppColors.secondary],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            physics:
                const NeverScrollableScrollPhysics(), // no permite desplazamiento
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        onPressed:
                            onBack ??
                            () {
                              if (goToRoute != null) {
                                Navigator.of(
                                  context,
                                ).pushReplacementNamed(goToRoute!);
                              } else {
                                Navigator.of(context).pop();
                              }
                            },
                      ),
                      if (leadingText != null)
                        Expanded(
                          child: Text(
                            leadingText!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                    ],
                  ),

                  const SizedBox(height: 12),

                  ///Contenido personalizado (título, buscador, etc.)
                  if (child != null) center ? Center(child: child!) : child!,
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

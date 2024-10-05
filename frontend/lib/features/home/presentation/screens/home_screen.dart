import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greenshift/core/common/widgets/indices_card.dart';
import 'package:greenshift/features/home/presentation/widgets/co2_bar_chart.dart';
import 'package:greenshift/features/home/presentation/widgets/weather_card.dart';
import 'package:greenshift/theme/app_colors.dart';
import 'package:lucide_icons/lucide_icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin<HomeScreen> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                WeatherCard(),
                SizedBox(height: 16),
                IndicesCard(),
                SizedBox(height: 16),
                CO2BarChart()
              ],
            ),
          ),
        ),
      ),
    );
  }

  PreferredSize buildAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(MediaQuery.of(context).size.width, 76),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
        child: SafeArea(
          child: Row(
            children: [
              buildTitle(),
              const Spacer(),
              IconButton(
                  iconSize: 18,
                  splashRadius: 18,
                  onPressed: () {},
                  icon: const Icon(
                    LucideIcons.bell,
                    size: 18,
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Row buildTitle() {
    return Row(
      children: [
        SvgPicture.asset('assets/icons/logo.svg'),
        const SizedBox(width: 4),
        const Text(
          'GreenShift',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
        ),
        const SizedBox(width: 12),
        Container(
          decoration: BoxDecoration(
              color: AppColors.secondaryColor,
              borderRadius: BorderRadius.circular(32)),
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              style: const TextStyle(fontSize: 14, color: Colors.black),
              hint: const Text('Select '),
              icon: const Padding(
                padding: EdgeInsets.only(left: 8),
                child: Icon(
                  LucideIcons.chevronsUpDown,
                  size: 14,
                ),
              ),
              items: [DropdownMenuItem(child: Text('Peach Farm'))],
              onChanged: (value) => print(value),
            ),
          ),
        )
      ],
    );
  }
}

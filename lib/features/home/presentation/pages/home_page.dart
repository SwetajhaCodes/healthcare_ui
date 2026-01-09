import 'package:flutter/material.dart';
import 'package:healthcare_dashbaord/core/theme/app_colors.dart';
import 'package:healthcare_dashbaord/features/home/presentation/widgets/category_grid.dart';
import 'package:healthcare_dashbaord/features/home/presentation/widgets/doctor_prescription.dart';
import 'package:healthcare_dashbaord/features/home/presentation/widgets/family_care_package.dart';
import 'package:healthcare_dashbaord/features/home/presentation/widgets/faq.dart';
import 'package:healthcare_dashbaord/features/home/presentation/widgets/footer.dart';
import 'package:healthcare_dashbaord/features/home/presentation/widgets/header.dart';
import 'package:healthcare_dashbaord/features/home/presentation/widgets/health_checkup.dart';
import 'package:healthcare_dashbaord/features/home/presentation/widgets/holistic_women_care.dart';
import 'package:healthcare_dashbaord/features/home/presentation/widgets/home_banner.dart';
import 'package:healthcare_dashbaord/features/home/presentation/widgets/horizontal_packages.dart';
import 'package:healthcare_dashbaord/features/home/presentation/widgets/scan_grid.dart';
import 'package:healthcare_dashbaord/features/home/presentation/widgets/service.dart';
import 'package:healthcare_dashbaord/features/home/presentation/widgets/testimonials.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              HeaderSection(),
              SizedBox(height: 16),
              ServicesRow(),
              SizedBox(height: 16),
              DoctorPrescriptionBanner(),
              SizedBox(height: 20),
              CategoryGrid(title: "Doctor-Curated Health Checkup Packages"),
              SizedBox(height: 20),
              HorizontalPackages(title: "Top Booked Health Checkup Packages"),
              SizedBox(height: 20),
              HomeBanner(),
              SizedBox(height: 20),
              RoutineHealthCheckupMen(title: "Routine Health Checkup for Men"),
              SizedBox(height: 20),
              RoutineHealthCheckupMen(
                title: "Routine Health Checkup for Women",
              ),
              SizedBox(height: 20),
              FamilyCarePackages(title: "Family Care Packages"),
              SizedBox(height: 20),
              HorizontalPackages(title: "Women’s Health & Wellness"),
              SizedBox(height: 20),
              HolisticWomenCare(title: "Holistic Women’s Care"),
              SizedBox(height: 20),
              ScanGrid(),
              SizedBox(height: 20),
              Testimonials(),
              SizedBox(height: 20),
              FAQSection(),
              SizedBox(height: 80),
              LiveHealthyFooter(),
              SizedBox(height: 80),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            label: "Reports",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.science),
            label: "Lab Tests",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: "Bookings",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

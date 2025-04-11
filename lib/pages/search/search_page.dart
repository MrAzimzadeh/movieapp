import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/pages/search/widget/search_widget.dart';
import 'package:movieapp/utils/app_colors.dart';
import 'package:movieapp/utils/app_txt.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  String? _searchQuery;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppTxt.searchTitle,
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: AppColors.textColor,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _searchController,
                onChanged: (value) {
                  setState(() {
                    _searchQuery = value;
                  });
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.searchBarBg,
                  prefixIcon: Icon(Icons.search, color: AppColors.searchColor),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: AppColors.searchBarBg),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.searchBarBg),
                    borderRadius: BorderRadius.circular(28),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.searchBarBg),
                    borderRadius: BorderRadius.circular(28),
                  ),
                  hintText: 'Search for a title...',
                  hintStyle: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.searchColor,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                  child: _searchQuery?.isNotEmpty ?? false
                      ? SearchWidget(query: _searchQuery!)
                      : SizedBox.shrink()),
            ],
          ),
        ),
      ),
    );
  }
}

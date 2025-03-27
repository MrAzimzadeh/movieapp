import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/utils/app_colors.dart';
import 'package:movieapp/utils/app_dimens.dart';
import 'package:movieapp/utils/app_txt.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 40,
          top: 10,
        ),
        child: SafeArea(
          child: SizedBox(
            width: 320,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    AppTxt.searchTitle,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      color: AppColors.textColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox.fromSize(
                  size: Size(0, 20),
                ),
                SearchAnchor(
                  builder: (BuildContext context, SearchController controller) {
                    return SearchBar(
                      controller: controller,
                      hintText: 'Search for a title...',
                      hintStyle: WidgetStatePropertyAll(GoogleFonts.roboto(
                        color: AppColors.searchColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      )),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: _buildBorderRadiusCirular(
                                AppDimens.searchInputRadius,
                              ),
                              topRight: _buildBorderRadiusCirular(
                                AppDimens.searchInputRadius,
                              ),
                              bottomLeft: _buildBorderRadiusCirular(
                                AppDimens.searchInputRadius,
                              ),
                              bottomRight: _buildBorderRadiusCirular(
                                AppDimens.searchInputRadius,
                              )),
                        ),
                      ),
                      onTap: () {
                        controller.openView();
                      },
                      onChanged: (_) {
                        controller.openView();
                      },
                      leading: const Icon(
                        Icons.menu,
                        color: AppColors.searchColor,
                        size: 24,
                      ),
                      trailing: [
                        IconButton(
                          icon: Icon(
                            Icons.search,
                            color: AppColors.searchColor,
                            size: 18,
                          ),
                          onPressed: () {
                            controller.clear();
                          },
                        )
                      ],
                    );
                  },
                  suggestionsBuilder:
                      (BuildContext context, SearchController controller) {
                    return List.generate(3, (index) {
                      final String item = 'item $index';
                      return ListTile(
                        title: Text(item),
                        onTap: () {
                          setState(() {
                            controller.closeView(item);
                          });
                        },
                      );
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Radius _buildBorderRadiusCirular(double radius) => Radius.circular(radius);

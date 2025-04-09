import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/utils/app_colors.dart';
import 'package:movieapp/utils/app_images.dart';

class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
  //  final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Align(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //  _buildHomeImage(size),
                Padding(
                  padding: const EdgeInsets.only(
                  right: 75,  top: 17, bottom: 17,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back, color: AppColors.inputField),
                        onPressed: () => Navigator.pop(context),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'The Glory',
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppImages.posterBg),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10, top: 10, bottom: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'The Glory',
                        style: GoogleFonts.inter(
                          color: AppColors.textColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '2022 | 18+ | 1 Season | K-Drama',
                        style: GoogleFonts.inter(
                          color: AppColors.movieText,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'A young woman, bullied to the point of deciding to drop out of school, '
                        'plans the best way to get revenge. After becoming a primary school teacher, '
                        'she takes in the son of the man who tormented her the most to enact her vengeance.',
                        style: GoogleFonts.inter(
                          color: AppColors.textColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Starring : Song Hye-kyo, Lee Do-hyun, Lim Ji-yeon',
                        style: GoogleFonts.inter(
                          color: AppColors.textColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Creators : Kim Eun-sook, An Gil-ho',
                        style: GoogleFonts.inter(
                          color: AppColors.textColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Genre : Revenge, Psychological Thriller',
                        style: GoogleFonts.inter(
                          color: AppColors.textColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Episodes',
                        style: GoogleFonts.inter(
                          color: AppColors.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Season 1',
                        style: GoogleFonts.inter(
                          color: AppColors.textColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 10),
                      _buildEpisodeCard(
                        imagePath: AppImages.episode,
                        title: 'Episode 1',
                        duration: '47m',
                        description:
                            'Tormented by her high school classmates and with nowhere...',
                      ),
                      _buildEpisodeCard(
                        imagePath: AppImages.episode,
                        title: 'Episode 2',
                        duration: '52m',
                        description: 'With Park Yeon-jin\'s wedding on...',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEpisodeCard({
    required String imagePath,
    required String title,
    required String duration,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120,
            height: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: GoogleFonts.inter(
                          color: AppColors.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      duration,
                      style: GoogleFonts.inter(
                        color: AppColors.movieText,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  description,
                  style: GoogleFonts.inter(
                      color: AppColors.movieText,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

  // Widget _buildHomeImage(Size size) {
  //   return Image.asset(
  //     AppImages.posterBg,
  //     fit: BoxFit.cover,
  //     width: size.width,
  //   );
  // }
import 'package:flutter/material.dart';
import 'package:aplikasi_cafe/models/cafe.dart';
import 'package:aplikasi_cafe/utils/favorite_manager.dart';

class CafeDetailScreen extends StatefulWidget {
  final Cafe cafe;

  const CafeDetailScreen({super.key, required this.cafe});

  @override
  State<CafeDetailScreen> createState() => _CafeDetailScreenState();
}

class _CafeDetailScreenState extends State<CafeDetailScreen> {
  bool isLiked = false;
  bool isProcessing = false;

  @override
  void initState() {
    super.initState();
    isLiked = FavoriteManager.isFavorite(widget.cafe);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          // Hero Image with Back Button
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            backgroundColor: Colors.white,
            leading: Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(20),
              ),
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: 'cafe-image-${widget.cafe.name}',
                child: Container(
                  color: Colors.grey[200],
                  child: widget.cafe.imageAsset.isNotEmpty
                      ? Image.asset(
                          widget.cafe.imageAsset,
                          width: double.infinity,
                          height: 300,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              color: Colors.grey[300],
                              child: const Icon(
                                Icons.broken_image,
                                size: 60,
                                color: Colors.grey,
                              ),
                            );
                          },
                        )
                      : Center(
                          child: Icon(
                            Icons.local_cafe,
                            color: Colors.grey[600],
                            size: 80,
                          ),
                        ),
                ),
              ),
            ),
          ),

          // Cafe Details
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Cafe Name and Rating
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          widget.cafe.name,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          setState(() {
                            isProcessing = true;
                          });

                          // Simulate API call delay
                          await Future.delayed(
                            const Duration(milliseconds: 500),
                          );

                          // Toggle favorite using FavoriteManager
                          FavoriteManager.toggleFavorite(widget.cafe);

                          setState(() {
                            isLiked = FavoriteManager.isFavorite(widget.cafe);
                            isProcessing = false;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: isProcessing
                                ? Colors.grey.withOpacity(0.5)
                                : isLiked
                                ? Colors.red.withOpacity(0.1)
                                : Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: isProcessing
                                  ? Colors.grey.withOpacity(0.3)
                                  : isLiked
                                  ? Colors.red.withOpacity(0.3)
                                  : Colors.grey.withOpacity(0.3),
                              width: 1,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              AnimatedSwitcher(
                                duration: const Duration(milliseconds: 200),
                                child: isProcessing
                                    ? SizedBox(
                                        key: const ValueKey('loading'),
                                        width: 16,
                                        height: 16,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2,
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                                isLiked
                                                    ? Colors.red
                                                    : Colors.grey,
                                              ),
                                        ),
                                      )
                                    : Icon(
                                        key: ValueKey(
                                          isLiked ? 'liked' : 'unliked',
                                        ),
                                        isLiked
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: isProcessing
                                            ? Colors.grey
                                            : isLiked
                                            ? Colors.red
                                            : Colors.grey,
                                        size: 16,
                                      ),
                              ),
                              if (!isProcessing) ...[
                                const SizedBox(width: 4),
                                AnimatedSwitcher(
                                  duration: const Duration(milliseconds: 200),
                                  child: Text(
                                    key: ValueKey(
                                      isLiked ? 'liked-text' : 'unliked-text',
                                    ),
                                    isLiked ? 'Disukai' : 'Sukai',
                                    style: TextStyle(
                                      color: isLiked ? Colors.red : Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  // Location with Icon
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: const Color(0xFF6B5CE6).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(
                          Icons.location_on,
                          color: Color(0xFF6B5CE6),
                          size: 20,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          widget.cafe.location,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                            height: 1.4,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  // Operating Hours
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(
                          Icons.access_time,
                          color: Colors.green,
                          size: 20,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          widget.cafe.jamOperasional,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                            height: 1.4,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  // Description Section
                  const Text(
                    'Tentang Kafe',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    widget.cafe.description,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      height: 1.6,
                    ),
                    textAlign: TextAlign.justify,
                  ),

                  const SizedBox(height: 32),
                  const SizedBox(height: 32),

                  // Additional Photos Section
                  if (widget.cafe.headerPhotos.isNotEmpty &&
                      widget.cafe.headerPhotos.first.isNotEmpty) ...[
                    const Text(
                      'Foto Lainnya',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.cafe.headerPhotos.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 120,
                            height: 100,
                            margin: const EdgeInsets.only(right: 12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey[200],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: widget.cafe.headerPhotos[index].isNotEmpty
                                  ? Image.asset(
                                      widget.cafe.headerPhotos[index],
                                      fit: BoxFit.cover,
                                      errorBuilder:
                                          (context, error, stackTrace) {
                                            return Container(
                                              color: Colors.grey[300],
                                              child: const Icon(
                                                Icons.broken_image,
                                                size: 30,
                                                color: Colors.grey,
                                              ),
                                            );
                                          },
                                    )
                                  : const Icon(
                                      Icons.local_cafe,
                                      color: Colors.grey,
                                      size: 40,
                                    ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 32),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

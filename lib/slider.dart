import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderP extends StatefulWidget {
  SliderP({Key? key}) : super(key: key);

  @override
  State<SliderP> createState() => _SliderPState();
}

class _SliderPState extends State<SliderP> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    'https://i.pinimg.com/564x/55/ce/ce/55cece76384488443fd6a315b390cf7e.jpg',
    'https://i.pinimg.com/236x/26/45/ea/2645ea2dc6f8a74ea57bce20422e2f07.jpg',
    'https://i.pinimg.com/564x/0d/f4/c2/0df4c21726e89f18eedcd1c0af873e7f.jpg',
    'https://i.pinimg.com/564x/11/b3/bc/11b3bcc30f99ffd67b46edbe2105183c.jpg',
    'https://i.pinimg.com/564x/fd/be/d2/fdbed24528fcbf72a036eb1a466faf5a.jpg',
    'https://i.pinimg.com/564x/99/fc/2d/99fc2dd201eea7b085e964ad01105f99.jpg',
    'https://i.pinimg.com/564x/78/7b/d4/787bd4c3c1e57bf714164636c162d211.jpg',
    'https://i.pinimg.com/564x/cd/58/50/cd5850dceb74156c85f745fbf1e7870c.jpg',
    'https://i.pinimg.com/564x/5a/7a/b4/5a7ab4f4631b0bafd905383c3637daea.jpg',
    'https://i.pinimg.com/564x/2e/fe/41/2efe415626277fd884eec33ed99e4adf.jpg',
    'https://i.pinimg.com/564x/fa/58/dd/fa58dd96392fec42090bbb56e92817ad.jpg',
    'https://i.pinimg.com/564x/19/81/6f/19816f23b96e93c1f1b7641e50d36e9a.jpg',
  ];

  final templeImages = [
    'https://upload.wikimedia.org/wikipedia/commons/8/8e/PremMandirSideViewFromCanteen.jpg',
    'https://i.pinimg.com/564x/29/1b/19/291b19d572c0cc58eba9a3dfe435c21b.jpg', //blr
    'https://i.pinimg.com/564x/8f/f7/6f/8ff76fb7ff64787f6219470db4887dda.jpg', //vrindavan
    'https://i.pinimg.com/564x/9a/96/f6/9a96f6cd1ca6e362b0849bf28e0f4f7c.jpg', //jaipur
    'https://i.pinimg.com/564x/8c/26/ec/8c26ec841eeef77338be37cd5b903483.jpg', //maya
    'https://i.pinimg.com/564x/05/be/6f/05be6f03ed0c4c8466b3177df8cdda6c.jpg', //hyd
  ];

  List<String> templeTexts = [
    'Prem Mandir, Vrindavan',
    'ISKCON Temple, Bangalore',
    'ISKCON Temple, Vrindavan',
    'Govind Dev Ji Temple, Jaipur',
    'ISKCON Temple, Mayapur',
    'ISKCON Temple, Hyderabad',
  ];

  int additionalActiveIndex = 0;
  final additionalController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildAdditionalSlider(),
          SizedBox(height: 15),
          buildMainSlider(),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: buildIndicator(),
          ),
        ],
      ),
    );
  }

  Widget buildAdditionalSlider() => Column(
        children: [
          CarouselSlider.builder(
            carouselController: additionalController,
            itemCount: templeImages.length,
            itemBuilder: (context, index, realIndex) {
              final urlImage = templeImages[index];
              final text = templeTexts[index];
              return buildRectangularImage(urlImage, text);
            },
            options: CarouselOptions(
              height: 275, //pixel overflow
              enableInfiniteScroll: true,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) =>
                  setState(() => additionalActiveIndex = index),
            ),
          ),
          SizedBox(height: 10),
          AnimatedSmoothIndicator(
            onDotClicked: animateToAdditionalSlide,
            effect: ExpandingDotsEffect(
              dotWidth: 10,
              activeDotColor: Color.fromARGB(255, 224, 153, 153),
            ),
            activeIndex: additionalActiveIndex,
            count: templeImages.length,
          ),
        ],
      );

  Widget buildMainSlider() => Column(
        children: [
          SizedBox(height: 5), // Space before the text
          Text(
            'Radha Krishna - Divine Love',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 184, 80, 66),
            ),
          ),
          SizedBox(height: 10), // Space between the text and the slider
          CarouselSlider.builder(
            carouselController: controller,
            itemCount: urlImages.length,
            itemBuilder: (context, index, realIndex) {
              final urlImage = urlImages[index];
              return buildImage(urlImage, index);
            },
            options: CarouselOptions(
              height: 200,
              enableInfiniteScroll: true,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) =>
                  setState(() => activeIndex = index),
            ),
          ),
          SizedBox(height: 10),
        ],
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        onDotClicked: animateToSlide,
        effect: ExpandingDotsEffect(
            dotWidth: 10, activeDotColor: Color.fromARGB(255, 228, 139, 139)),
        activeIndex: activeIndex,
        count: urlImages.length,
      );

  void animateToSlide(int index) => controller.animateToPage(index);

  void animateToAdditionalSlide(int index) =>
      additionalController.animateToPage(index);
}

Widget buildImage(String urlImage, int index) => Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.network(
          urlImage,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              color: Colors.grey,
              child: Center(
                child: Text(
                  'Image not available',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          },
        ),
      ),
    );

Widget buildRectangularImage(String urlImage, String templeText) => Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color.fromARGB(96, 203, 107, 94),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 184, 80, 66),
            blurRadius: 16,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              urlImage,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey,
                  child: Center(
                    child: Text(
                      'Image not available',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: Text(
              templeText,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );

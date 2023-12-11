import 'package:flutter/material.dart';


class IntroductionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Header Section
            Container(
              padding: EdgeInsets.all(20.0),
              child: const Text(
                'Your Name',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            
            // Hero Image/Video
            Container(
              height: 300.0, // Adjust the height accordingly
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/hero_image.jpg'), // Replace with your image asset
                  fit: BoxFit.cover,
                ),
              ),
              child: const Center(
                child: Text(
                  'Introduction Text',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            
            // Professional Photo
            Container(
              padding: EdgeInsets.all(20.0),
              child: const CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/professional_photo.jpg'), // Replace with your photo asset
              ),
            ),
            
            // Tagline or Mission Statement
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: const Text(
                'Tagline or Mission Statement',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
            
            // Portfolio Showcase (Replace with your actual projects)
            Container(
              padding: EdgeInsets.all(20.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: 4,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text('Project $index'),
                      // Add project images and links here
                    ),
                  );
                },
              ),
            ),
            
            // Other Sections (Skills, Testimonials, Contact, etc.)
            // Add your own widget implementations
            
          ],
        ),
      ),
    );
  }
}

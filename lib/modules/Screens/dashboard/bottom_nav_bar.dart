import 'package:esm/modules/Screens/AdvertScreens/adverts_screen.dart';
import 'package:esm/modules/Screens/live_user_tabs/tab_layout.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/widgets/app_text.dart';
import 'package:esm/resources/widgets/dialogs/create_event_dialog.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

import 'home/event_screen.dart';
import 'home/home_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BottomNavigationBarScreenState();
  }
}

class BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _selectedIndex = 0;
  final GlobalKey<SliderDrawerState> sliderDrawerKey =
      GlobalKey<SliderDrawerState>();
  bool afterJoining = true;
  String? home = 'Home';

  final List<String> selectedImagePaths = [
    'assets/images/home_slected.png',
    'assets/images/fav_slected.png',
    'assets/images/add.png',
    'assets/images/video-play_slected.png',
    'assets/images/person_slected.png',
  ];

  final List<String> unselectedImagePaths = [
    'assets/images/home_unslwcted.png',
    'assets/images/fav_unslected.png',
    'assets/images/add.png',
    'assets/images/video-play.png',
    'assets/images/profile_unslected.png',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 0) {
        /* setState(() {
          home = 'Home';
        });*/
      } else if (_selectedIndex == 1) {
        /* setState(() {
          home = 'My Event';
        });*/
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        decoration: BoxDecoration(
            color: AppColors.bluecolor,
            borderRadius: BorderRadius.circular(50)),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: AppText(
            'Tip eSM',
            color: AppColors.primaryColor,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: List.generate(
          selectedImagePaths.length,
          (index) => BottomNavigationBarItem(
            icon: Image.asset(
              _selectedIndex == index
                  ? selectedImagePaths[index]
                  : unselectedImagePaths[index],
              width: index == 2 ? 35.0 : 24.0,
              height: index == 2 ? 35.0 : 24.0,
            ),
            label: '',
          ),
        ),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 32.0),
        child: SliderDrawer(
          appBar: SliderAppBar(
            isTitleCenter: true,
            appBarColor: Colors.white,
            title: Image.asset(
              'assets/images/app_logo.png',
              fit: BoxFit.contain,
              height: 50,
            ),
            trailing: const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: AppText(
                'Find Event',
                size: 14,
              ),
            ),
          ),
          key: sliderDrawerKey,
          //sliderOpenSize: 280,
          slider: SliderView(
            onItemClick: (title) {
              sliderDrawerKey.currentState!.closeSlider();
              setState(() {
                title = title;
              });
              if (kDebugMode) {
                print("print");
              }
            },
          ),
          child: IndexedStack(
            index: _selectedIndex,
            children:  [
              // Replace these with your content screens
              EventScreen(),
              HomeScreen(),
              AddScreen(),
              Adverts(),
              LiveUserTab(),
            ],
          ),
        ),
      ),
    );
  }
}

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Add Screen'),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Profile Screen'),
    );
  }
}

class SliderView extends StatelessWidget {
  final Function(String) onItemClick;

  const SliderView({
    Key? key,
    required this.onItemClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 30),
      child: ListView(
        children: <Widget>[
          Image.asset(
            "assets/images/app_logo.png",
            height: 70,
            width: 70,
          ),
          const SizeBoxHeight32(),
          ...[
            Menu('Quick Meetings & Hologram',
                'Free Unlimited, time & participents', () {
              onItemClick('Quick Meetings & Hologram');
              Navigator.pushNamed(context, '/QuickMeetingScreen');
            }),
            Menu('Events & Hologram', 'Free Unlimited, time & participents',
                () {
              onItemClick('Join Hologram Engineers Us');
              Navigator.pushNamed(context, '/MyEventTabScreen');
            }),
            Menu('Join Event Workers', 'Get Paid', () {
              onItemClick('Join Event Workers');
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return CreateEventDialog(
                    liveOnTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/WorkerScreen');
                    },
                    recordedOnTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/BankAccountScreen');
                    },
                    dialogTitle: 'Join Event Workers',
                    btnTextOne: 'General',
                    btnTextTwo: 'Bank Account',
                  );
                },
              );
            }),
            Menu('Join Hologram Engineers', 'Make Money', () {
              onItemClick('Join Hologram Engineers Us');
              Navigator.pushNamed(context, '/HologramJoin');
            }),
            Menu('Seller add used/new Products/Services', 'Make Money', () {
              onItemClick('Seller add used/new Products/Services');
              Navigator.pushNamed(context, '/ServiceScreen');
            }),
            Menu('Find any event In your area',
                'Make GPS default in you present location', () {
              onItemClick('Find any event In your area');
              Navigator.pushNamed(context, '/EventByLocationScreen');
            }),
            Menu('Find any event by location',
                'Search by address, city, state or country', () {
              onItemClick('Find any event by location');
              Navigator.pushNamed(context, '/EventByLocationScreen');
            }),
            Menu('All Free But You Can Tip Us', '', () {}),
            Menu('Worldwide & Attend', '', () {}),
            Menu('Contact Us', '', () {
              onItemClick('Contact Us');
              Navigator.pushNamed(context, '/ContactUsScreen');
            }),
            Menu('About Us', '', () {
              onItemClick('About Us');
              Navigator.pushNamed(context, '/AboutUsScreen');
            }),
            Menu('FAQ', '', () {}),
            Menu('Start Shopping', '', () {
              onItemClick('Start Shopping');
              Navigator.pushNamed(context, '/ShopScreen');
            }),
          ]
              .map((menu) => _SliderMenuItem(
                    title: menu.title,
                    subTitle: menu.subTitle,
                    onTap: menu.onTap,
                  ))
              .toList(),
        ],
      ),
    );
  }
}

class _SliderMenuItem extends StatelessWidget {
  final String title;
  final String subTitle;
  final Function? onTap;

  const _SliderMenuItem({
    Key? key,
    required this.title,
    required this.subTitle,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!();
      },
      splashColor: Colors.lightBlue,
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(0), // Remove any margin
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    subTitle,
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Divider(),
            ),
          ],
        ),
      ),
    );
  }
}

class Menu {
  final String title;
  final String subTitle;
  final Function onTap;

  Menu(this.title, this.subTitle, this.onTap);
}

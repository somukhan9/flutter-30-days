import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const String imageUrl =
        "https://scontent.fdac151-1.fna.fbcdn.net/v/t1.6435-9/122702090_2295893270555845_1186201468462564080_n.jpg?_nc_cat=111&cb=99be929b-59f725be&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeE2YWgsG7rEv15kIpI_ywSPRy-QrUcHH8BHL5CtRwcfwNZ5L25qsXsTAc0PF-KJV8Qmp8aIAv4B8XFAqNiI9iBD&_nc_ohc=Y3M2cf-fDT8AX-z5eUk&_nc_ht=scontent.fdac151-1.fna&oh=00_AfDJZEFE927wL_QYIUW8hMwRd23C10oNdkA0BBdEMgLJHQ&oe=64BE304A";

    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text(
                    "Samrat",
                    textScaleFactor: 1.5,
                  ),
                  accountEmail: Text(
                    "mhsomrat154@gmail.com",
                    textScaleFactor: 1.5,
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                )),
            ListTile(
              horizontalTitleGap: 0,
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
            ListTile(
              horizontalTitleGap: 0,
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
            ListTile(
              horizontalTitleGap: 0,
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email Me",
                textScaleFactor: 1.2,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

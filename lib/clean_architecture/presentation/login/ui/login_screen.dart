import 'package:demo_dio_retrofit/clean_architecture/presentation/login/widget/outline_form_filed.dart';
import 'package:demo_dio_retrofit/clean_architecture/presentation/weather/ui/weather_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:demo_dio_retrofit/clean_architecture/presentation/custom_scrollview/custom_scrollview.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Stack(
        children: [
          _background(),
          Container(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(24, 20, 0, 0),
                    child: Row(
                      children: [SvgPicture.asset('assets/images/ic_back.svg')],
                    ),
                  ),
                  Container(
                      child: Image.asset(
                    'assets/images/logo.png',
                  )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _textLogin(),
                      _loginName(),
                      _loginPass(),
                      _forgotLogin(),
                      _buttonLogin(),
                      _createAccount(),
                      _containerLogin(),
                      _bannerLogin()
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _background() {
    return SizedBox.expand(
      child: Image.asset(
        'assets/images/background.png',
        fit: BoxFit.cover,
      ),
    );
  }

  _textLogin() {
    return Container(
      padding: const EdgeInsets.only(left: 16, top: 16, bottom: 20),
      child: Text(
        'Đăng nhập',
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }

  _loginName() {
    return OutLineFormField(
      hintText: 'Tên đăng nhập',
    );
  }

  _loginPass() {
    return OutLineFormField(
      hintText: 'Mật khẩu',
    );
  }

  _forgotLogin() {
    return Padding(
      padding: const EdgeInsets.only(left: 32, top: 6, bottom: 20),
      child: Row(
        children: [
          Container(
            child: Text(
              'Quên mật khẩu',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Color(0xFFFFBF4E),
              ),
            ),
          ),
          SvgPicture.asset('assets/images/ic_backright.svg')
        ],
      ),
    );
  }

  _buttonLogin() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => WeatherScreen()));
      },
      child: Container(
        margin: EdgeInsets.only(left: 16),
        padding: EdgeInsets.fromLTRB(130, 16, 130, 16),
        decoration: BoxDecoration(
            color: Color(0xFFFFBF4E), borderRadius: BorderRadius.circular(20)),
        child: Text(
          'Đăng nhập',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  _createAccount() {
    return Padding(
      padding: EdgeInsets.only(left: 67, top: 39, bottom: 39),
      child: Row(
        children: [
          Container(
            child: Text(
              'Bạn chưa có tài khoản?',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Container(
            child: Text(
              'Tạo tài khoản ngay',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Color(0xFFFFBF4E),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFFFBF4E),
                decorationThickness: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }

  _itemLogin({
    String? icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (icon != null)
                  SvgPicture.asset(
                    icon,
                    width: 40,
                    height: 40,
                  ),
                SizedBox(height: 20),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _containerLogin() {
    return Padding(
      padding: EdgeInsets.only(left: 4, right: 4),
      child: Row(
        children: [
          _itemLogin(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CustomScrollviewScreen()));
            },
            icon: 'assets/images/ic_contact.svg',
            title: 'Liên hệ hỗ trợ',
          ),
          SizedBox(width: 8),
          _itemLogin(
            onTap: () {},
            icon: 'assets/images/ic_branch.svg',
            title: 'Tìm chi nhánh',
          ),
        ],
      ),
    );
  }

  _bannerLogin() {
    return Padding(
      padding: EdgeInsets.only(top: 8, right: 4, left: 4, bottom: 100),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset('assets/images/banner.png'),
        ),
      ),
    );
  }
}

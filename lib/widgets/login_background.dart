import 'package:flutter/material.dart';

class LoginBackground extends StatefulWidget {
  LoginBackground({
    Key? key,
    required this.onPress,
    required this.child,
    this.color = Colors.white,
    this.decorationPadding = 30.0,
    this.radius = 100.0,
    this.height = 400.0,
    this.padding = 40.0,
    this.elevation,
    this.buttonRadius = 60.0,
    this.animationColor = Colors.red,
  }) : super(key: key);

  final Function() onPress;
  final Widget child;
  final double decorationPadding;
  final double radius;
  final Color color;
  final double padding;
  final double height;
  final double? elevation;
  final Color animationColor;
  final double buttonRadius;

  @override
  _LoginBackgroundState createState() => _LoginBackgroundState();
}

class _LoginBackgroundState extends State<LoginBackground> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widget.padding),
      child: SizedBox(
        height: widget.height,
        width: size.width,
        child: CustomPaint(
          key: widget.key,
          painter: BackgroundPaint(
              color: widget.color,
              radius: widget.radius,
              padding: widget.decorationPadding,
              elevation: widget.elevation),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: widget.child),
              _buildButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: GestureDetector(
        onTap: () {
          widget.onPress.call();
        },
        child: Container(
          padding: EdgeInsets.all(2.5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white60,
            boxShadow: [
              BoxShadow(
                color: Colors.black45,
                blurRadius: 10.0,
                offset: Offset(4.0, 4.0),
              ),
              BoxShadow(
                color: Colors.white10,
                blurRadius: 10.0,
                offset: -Offset(4.0, 4.0),
              ),
            ],
          ),
          child: Container(
            width: widget.buttonRadius,
            height: widget.buttonRadius,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white60,
                ],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
                stops: [0.2, .6],
              ),
            ),
            child: Icon(
              Icons.arrow_forward,
              color: Colors.black,
              size: 30.0,
            ),
          ),
        ),
      ),
    );
  }
}

class BackgroundPaint extends CustomPainter {
  BackgroundPaint({
    this.radius = 100.0,
    this.padding = 30.0,
    this.color = Colors.white,
    this.elevation,
  }) : backgroundPaint = Paint()
          ..style = PaintingStyle.fill
          ..color = color;
  final double radius;
  final double padding;
  final Color color;
  final Paint backgroundPaint;
  final double? elevation;

  @override
  void paint(Canvas canvas, Size size) {
    final Path path = Path();
    path.moveTo(padding, size.height - radius / 2);
    path.lineTo(
      size.width / 2 - radius / 2 - padding,
      size.height - radius / 2,
    );
    path.quadraticBezierTo(
      size.width / 2 - radius / 2,
      size.height - radius / 2,
      size.width / 2 - radius / 2 + padding / 10,
      size.height - radius / 2 + padding,
    );
    path.arcToPoint(
      Offset(
        size.width / 2 + radius / 2 - padding / 10,
        size.height - radius / 2 + padding,
      ),
      radius: Radius.circular(radius / 2),
      clockwise: false,
    );

    path.quadraticBezierTo(
      size.width / 2 + radius / 2 - padding / 10,
      size.height - radius / 2,
      size.width / 2 + radius / 2 + padding,
      size.height - radius / 2,
    );

    path.lineTo(size.width - padding, size.height - radius / 2);
    path.quadraticBezierTo(
      size.width,
      size.height - radius / 2,
      size.width,
      size.height - radius / 2 - padding,
    );
    path.lineTo(size.width, padding);
    path.quadraticBezierTo(
      size.width,
      0.0,
      size.width - padding,
      0.0,
    );

    path.lineTo(padding, 0.0);
    path.quadraticBezierTo(0.0, 0.0, 0.0, padding);
    path.lineTo(0.0, size.height - radius / 2 - padding);
    path.quadraticBezierTo(
      0.0,
      size.height - radius / 2,
      padding,
      size.height - radius / 2,
    );
    canvas.drawShadow(path, Colors.black, elevation ?? 4.0, false);
    canvas.drawPath(path, backgroundPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

// class ButtonFramePaint extends CustomPainter {
//   ButtonFramePaint({
//     this.color = Colors.white,
//     this.percent = 0.0,
//     this.radius = 40.0,
//   }) : framePaint = Paint()
//           ..style = PaintingStyle.stroke
//           ..color = color
//           ..strokeWidth = 4.0;
//   final double radius;
//   final double percent;
//   final Color color;
//   final Paint framePaint;

//   @override
//   void paint(Canvas canvas, Size size) {
//     final angle = 2 * pi * (percent / 100);
//     canvas.drawArc(
//       Rect.fromCircle(center: size.center(Offset.zero), radius: radius),
//       0.0,
//       angle,
//       false,
//       framePaint,
//     );
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
// }

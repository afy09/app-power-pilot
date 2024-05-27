import 'package:flutter/material.dart';

class CategoryCard extends StatefulWidget {
  final String name;
  final String asset;
  final void Function() onClick;
  final bool isLeft;

  CategoryCard(
      {required this.name,
      required this.asset,
      required this.onClick,
      required this.isLeft});

  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    )..forward();

    _offsetAnimation = Tween<Offset>(
      begin: widget.isLeft ? const Offset(-1, 0) : const Offset(1, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: widget.onClick,
            child: Container(
              width: MediaQuery.of(context).size.width / 2 - 40,
              height: 170,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF2B3F6C).withOpacity(0.8),
                      spreadRadius: 0,
                      blurRadius: 8,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(widget.asset),
                  )),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(
              widget.name,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF34312F)),
            ),
          )
        ],
      ),
    );
  }
}

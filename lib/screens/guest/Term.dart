import 'package:flutter/material.dart';

class TermScreen extends StatefulWidget {
  final Function(int) onChangedStep;

  const TermScreen({
    Key key,
    this.onChangedStep,
  }) : super(key: key);

  @override
  _TermScreenState createState() => _TermScreenState();
}

class _TermScreenState extends State<TermScreen> {
  bool _termsReaded = false;
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    _scrollController.addListener(() {
      if (_scrollController.offset >=
              _scrollController.position.maxScrollExtent &&
          !_scrollController.position.outOfRange) {
        setState(() => _termsReaded = true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          elevation: 0.0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text(
            'Terme & Condition',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () => widget.onChangedStep(0),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            bottom: 10.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  controller: _scrollController,
                  physics: AlwaysScrollableScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n\nNullam a enim fringilla, hendrerit ex ac, suscipit augue. Quisque scelerisque pellentesque nulla, ac iaculis mauris. Integer a varius turpis, ut gravida justo. Curabitur ultricies lacus ut gravida pulvinar. Nunc ac faucibus tortor, ut ultrices tellus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam at lobortis velit. In tempor gravida velit, eu euismod arcu egestas mattis.\n\nSed sagittis eleifend dui, vel commodo purus iaculis a. Proin convallis diam massa, a sodales ipsum vestibulum at. Nullam non semper arcu. Sed urna eros, finibus quis vehicula eu, faucibus at risus. Nam suscipit facilisis dui, ac bibendum enim efficitur nec. Fusce hendrerit ipsum sit amet nulla sollicitudin volutpat. Phasellus tempor, nunc id porttitor faucibus, lectus neque tempor est, vitae iaculis diam felis sit amet ligula. In pellentesque enim ex, vel finibus justo eleifend luctus. Aliquam pellentesque massa ante, sit amet maximus diam mattis sit amet.\n\nSed sagittis eleifend dui, vel commodo purus iaculis a. Proin convallis diam massa, a sodales ipsum vestibulum at. Nullam non semper arcu. Sed urna eros, finibus quis vehicula eu, faucibus at risus. Nam suscipit facilisis dui, ac bibendum enim efficitur nec. Fusce hendrerit ipsum sit amet nulla sollicitudin volutpat. Phasellus tempor, nunc id porttitor faucibus, lectus neque tempor est, vitae iaculis diam felis sit amet ligula. In pellentesque enim ex, vel finibus justo eleifend luctus. Aliquam pellentesque massa ante, sit amet maximus diam mattis sit amet.\n\nSed sagittis eleifend dui, vel commodo purus iaculis a. Proin convallis diam massa, a sodales ipsum vestibulum at. Nullam non semper arcu. Sed urna eros, finibus quis vehicula eu, faucibus at risus. Nam suscipit facilisis dui, ac bibendum enim efficitur nec. Fusce hendrerit ipsum sit amet nulla sollicitudin volutpat. Phasellus tempor, nunc id porttitor faucibus, lectus neque tempor est, vitae iaculis diam felis sit amet ligula. In pellentesque enim ex, vel finibus justo eleifend luctus. Aliquam pellentesque massa ante, sit amet maximus diam mattis sit amet.\n\nDonec porttitor vestibulum ullamcorper.',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                padding: EdgeInsets.symmetric(
                  vertical: 15.0,
                ),
                color: Theme.of(context).primaryColor,
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                onPressed: !_termsReaded ? null : () => widget.onChangedStep(2),
                child: Text(
                  'accept & continue'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

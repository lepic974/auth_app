import 'package:flutter/material.dart';

class TermScreen extends StatefulWidget {
  @override
  _TermScreenState createState() => _TermScreenState();
}

class _TermScreenState extends State<TermScreen> {
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
            onPressed: () {},
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
                  physics: AlwaysScrollableScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n\n Nullam a enim fringilla, hendrerit ex ac, suscipit augue. Quisque scelerisque pellentesque nulla, ac iaculis mauris. Integer a varius turpis, ut gravida justo. Curabitur ultricies lacus ut gravida pulvinar. Nunc ac faucibus tortor, ut ultrices tellus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam at lobortis velit. In tempor gravida velit, eu euismod arcu egestas mattis.\n\n Sed sagittis eleifend dui, vel commodo purus iaculis a. Proin convallis diam massa, a sodales ipsum vestibulum at. Nullam non semper arcu. Sed urna eros, finibus quis vehicula eu, faucibus at risus. Nam suscipit facilisis dui, ac bibendum enim efficitur nec. Fusce hendrerit ipsum sit amet nulla sollicitudin volutpat. Phasellus tempor, nunc id porttitor faucibus, lectus neque tempor est, vitae iaculis diam felis sit amet ligula. In pellentesque enim ex, vel finibus justo eleifend luctus. Aliquam pellentesque massa ante, sit amet maximus diam mattis sit amet.\n\n Sed sagittis eleifend dui, vel commodo purus iaculis a. Proin convallis diam massa, a sodales ipsum vestibulum at. Nullam non semper arcu. Sed urna eros, finibus quis vehicula eu, faucibus at risus. Nam suscipit facilisis dui, ac bibendum enim efficitur nec. Fusce hendrerit ipsum sit amet nulla sollicitudin volutpat. Phasellus tempor, nunc id porttitor faucibus, lectus neque tempor est, vitae iaculis diam felis sit amet ligula. In pellentesque enim ex, vel finibus justo eleifend luctus. Aliquam pellentesque massa ante, sit amet maximus diam mattis sit amet.\n\n Sed sagittis eleifend dui, vel commodo purus iaculis a. Proin convallis diam massa, a sodales ipsum vestibulum at. Nullam non semper arcu. Sed urna eros, finibus quis vehicula eu, faucibus at risus. Nam suscipit facilisis dui, ac bibendum enim efficitur nec. Fusce hendrerit ipsum sit amet nulla sollicitudin volutpat. Phasellus tempor, nunc id porttitor faucibus, lectus neque tempor est, vitae iaculis diam felis sit amet ligula. In pellentesque enim ex, vel finibus justo eleifend luctus. Aliquam pellentesque massa ante, sit amet maximus diam mattis sit amet.\n\n Donec porttitor vestibulum ullamcorper.',
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
                onPressed: () => print('accept'),
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

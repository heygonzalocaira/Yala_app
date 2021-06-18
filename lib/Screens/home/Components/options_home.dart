import 'package:flutter/material.dart';
import 'package:yala_app/models/LearningType.dart';

class OptionsHome extends StatelessWidget {
  const OptionsHome({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                ...List.generate(
                  listOptions.length,
                  (index) {
                    return GestureDetector(
                      onTap: () {
                        print("ah prro");
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  listOptions[index].text,
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 24.0,
                                  ),
                                ),
                              ),
                              Container(
                                  height: 180,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15)),
                                  ),
                                  child: Image.asset(listOptions[index].img,
                                      fit: BoxFit.fitWidth)),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

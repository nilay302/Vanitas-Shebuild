
import 'package:flutter/material.dart';

class delay extends StatefulWidget {
  const delay({Key? key}) : super(key: key);

  @override
  State<delay> createState() => _delayState();
}

class _delayState extends State<delay> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar('Delay in Menstrual Cycle'),
      //
      appBar: AppBar(
        title: Text("Delay in Menstrual Cycle"),
        backgroundColor: Colors.pink[100],

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(
          child: SingleChildScrollView(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Image.network("https://i0.wp.com/post.healthline.com/wp-content/uploads/2022/03/1972590-4-Yoga-Poses-for-Period-Cramps-Forward-Fold.png?w=1155&h=1530", height: 250, width: 250,),
                        //"image": "",
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 300,
                          child: Text(

                            '''
You can follow the following at your home:
1. Reduce stress
2. Meditate
3. Practice yoga
4. Lose or gain weight
5. Adjust exercise levels
6. Top up on vitamin D

Well if you are interested in yoga, then we recommend you the followings too. Although prescription drugs and supplements help to normalize hormonal mechanisms in the body, Yoga, an ancient natural physical exercise practice, complements potent medicines, vastly boosting reproductive wellbeing and regularizing menstrual cycles. Comprising stationary poses, flexing movements and breathing techniques that work in synergy to instil holistic wellbeing, 

Yoga is a time-tested tradition that offers instant relief from stress, relaxing the body, calming the mind and activating reproductive operations in women. Read on, to discover some astounding yoga asanas that will synchronize monthly periods and guarantee all-around women’s health.

Yoga Postures To Tackle Irregular Periods And Preserve Hormonal Balance:
1. Matsyasana (Fish Pose)
2. Dhanurasana (Bow Pose)
3. Adho Mukha Svanasana (Downward Facing Dog Pose)
4. Malasana (Garland Pose)
5. Ustrasana (Camel Pose)

Do Not Exercise Too Much
While regular physical activity is essential for physical fitness and mental wellness, thereby guaranteeing optimal hormone levels, working out excessively can lead to muscular wear and tear, bone and joint damage, as well as hormonal imbalance. 
This, in turn, prompts irregular periods and at times can even result in the ceasing of menstruation in women for long intervals of time. Healthcare experts advise women to engage in not more than 2.5 – 5 hours of moderate intensity exercise every week, to preserve hormonal balance and regulate menstrual cycles.

Talk to your doctor if you have had sex and have missed a 
period because you could be pregnant. Also let the doctor 
know if:
a. You were having regular periods that then become irregular.
b. You stop getting your period.
c. You have extra hair growth on the face, chin, chest, or abdomen.
d. You start having periods that last longer than 7 days, are heavy, or are coming more often than every 21 days.
e. Your period comes less often than every 45 days.
f. You have severe cramping or abdominal pain.
g. You have bleeding in between your periods.
h. Your periods are irregular for 3 years or more.
The doctor may prescribe hormone pills or other medicines, or recommend lifestyle changes that can help you to have regular periods.

How can the risk of abnormal menstruation (periods) be reduced?
Here are some recommendations for self-care:
a. Try to maintain a healthy lifestyle by exercising moderately and eating nutritious foods. If you have to lose weight, do so gradually instead of turning to diets that drastically limit your calorie and food intake.
b. Make sure you get enough rest.
c. Practice stress reduction and relaxation techniques.
d. If you are an athlete, cut back on prolonged or intense exercise routines. Excessive sports activities can cause irregular periods.
e. Use birth control pills or other contraceptive methods as directed.
f. Change your tampons or sanitary napkins approximately every four to six hours to avoid toxic shock syndrome and prevent infections.
See a doctor for regular check-ups.
                           ''',
                            textAlign: TextAlign.justify,
                            style: TextStyle(

                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),),
                        )

                        //Text("data")
                      ],
                    ), //Text("See a doctor for regular check-ups."),
                  ],
                ),

              ),
            ),
          ),
        ),
      ),
    );

  }
}

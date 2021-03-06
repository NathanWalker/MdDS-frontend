angular.module("Story").provider("Stories", ->

  $get: ($window) ->
    api = {}

    api.storyById = (id) ->
      for s in api.stories
        if s.id is id
          return s
          break

    api.stories = [
      {
        id:1
        title:"Kylie Streed"
        pic:"img/stories/kylie.jpg"
        content:'''Almost six years ago, at the tender age of 25, I was struck with MdDS. I had spent several days on Lake Shasta in a house boat. I'd been on boats many times prior to this without incident. Those few days were fun-filled and relaxing. However, upon reaching dry land, I soon realized that I would be stuck on that house boat (so to speak) for quite a while. Five weeks after that fateful boat trip, my symptoms of swaying, bobbing and rocking abruptly came to a stop.
<br/><br/>
Since that time, I've endured six more episodes of MdDS, all ranging from six to nine weeks. Currently, I've "been on a boat" since April 1st, 2012. I've tried benzodiazepines, antidepressants, herbal supplements, acupuncture, miofascial release, chiropractic work, meditation, water therapy and even a full blown inner ear surgery that put me out of work and on strict bed rest for six weeks. I will share this bit about treatment: I have been taking Sertraline (Zoloft) for the last six months. This is the only therapy that has made my symptoms manageable and I'm grateful every day for this discovery.
<br/><br/>
This Fall, I'm going to participate in a study headed by Dr. Cha at the Laureate Brain Institute in Tulsa, Oklahoma. She has had some promising results, and I look forward to lending myself to further the efforts to find a cure.
<br/><br/>
Thank you for taking the time to look through this app. Together, we will conquer this.'''
      },
      {
        id:2
        title:"Karen"
        content:'''I am a stay at home mom with three kids and a wonderfully supportive husband. We live in Denver, CO and as a family, ski 40 plus days a year. I can rip it up on a double black diamond ski slopes and telemark ski. Ironically, when I stop skiing to adjust a buckle on my ski boot, I fall over. On average, I bike 100 miles a week. However, I have difficulty walking my dog without my REI trekking poles or even walking to the bathroom because I get too dizzy. I love to swim with my kids, but I cannot play board games or help them with homework. I also find going to the grocery store almost impossible because I get too disoriented and dizzy there. I have had Mal de Disembarquement syndrome (MdDS) for 23 years, but was only diagnosed six months ago.
        <br/><br/>
When I was a senior in college, I was riding my bicycle to class when a car hit me. I went to the ER and had stitches and was told I had a concussion. Since I was a college student and did not realize the extent of my injury, I did not have follow up care. I was told I had a concussion and that the dizziness and headache would go away. The headache turned into a migraine or “post concussion headache” that did not go away for 10 years! My parents felt sorry for me and offered to take me on vacation for winter break if I could figure out how to use the time share condo. I traded it for a free week in Tahiti!! I think I got my first episode of MdDS on the vacation, but I was such a mess from the head injury that I didn’t notice.
  <br/><br/>
After college, my best friend from high school invited me to move out to Vail, Colorado with her. I always loved to ski and since I wasn’t feeling very well and couldn’t really do a professional job, I decided to join her. It was the best thing I could have done for myself. I felt better skiing. While I still had headaches, my overall well being improved. Since ski bums are notorious for being unreliable, when I didn’t show up to work due to headaches, I fit right in!
<br/><br/>
After a year of being a ski bum, it was time to go to law school. It seems like everyone in my family goes to law school and it was a rite of passage that could not be held off any longer. I started law school in January in Chicago, not the best choice for me. The noise of a big city was terrible. The transportation situation was unbearable. I could choose from going on the EL, elevated train, or bus; neither worked well for me. My headaches grew and my overall health got worse.
<br/><br/>
Summer vacation was wonderful. My travel buddy from Junior Year Abroad was an avid cyclist and invited me to go on a biking trip in Montana. We flew out to Kalispell with our bikes and rode the Going to the Sun Road in Glacier, Montana. I felt great on the bike! I am grateful my friend introduced me to biking. Since that trip, biking has become an integral part of my life because when I bike, I feel normal, most of my symptoms disappear.
<br/><br/>
I returned to Chicago and Law School and started feeling really bad again. I went to a specialty Headache Clinic where I was prescribed pain medication for my severe headaches. Soon after, my roommate, the same girl who was my roommate in Vail, found me in our apartment on the floor and took me to the ER. I had had a GI bleed and yet another head injury. I was hospitalized for a week and transfused.
<br/><br/>
Once again, I was medically unable to complete the semester. I tried, but I missed so much and was feeling so bad that I failed the semester. I explained to the school that I had been hospitalized and was granted the opportunity to retake the semester. Further, under the Americans with Disabilities Act, I was given a private room and extra time to take exams in the future so that I could get up and walk around or take my medication during the exam.
<br/><br/>
After that year, my roommate said to me that she noticed I was so much better in Colorado. I agreed and shortly after, I took a leave of absence and moved to Aspen to be a ski instructor! Life was better there. I also became a bank teller, but did not feel good whenever I worked, so I quit. I tried working in retail, but was fired from all of those jobs. It seemed that I was only able to function on skis.
<br/><br/>
Just before I left Chicago, I met the man of my dreams. My neighbor took me to a party of her friends from medical school. There, across the room was the cutest guy. Lucky for me, my friend introduced us. We fell in love and dated long distance. By the end of the ski season, he needed to make his choice for residencies. We decided that he should go to University of Chicago, and that I should return to Chicago to be with him.
<br/><br/>
I returned to Law School. This time, I was doing things differently. I commuted to school via bike. I got an apartment along Lake Shore Drive and rode my bike to class. When the weather was not appropriate for biking, I drove a car and parked by the meters at Art Institute and walked a few blocks to class. I could not read comfortably, so I did not buy my Law books. This time, I had friends in the classes ahead of me, and used their briefs on the cases assigned. I always took out library books so that it looked like I read the book. I figured, let them fail me out, I had nothing to lose, but I was not going to kill myself over Law School. I was amazed, it worked, I passed and graduated! I graduated in August. I joke that I graduated in the top 10 students of my law class; there were only 10 summer graduates that year.
  <br/><br/>
Studying for the Bar Exam I had another MdDS episode. I took a bus to the Bar Review course. After getting off the bus, the sidewalk started moving on me. I was diagnosed with viral labryinthinitis. I could not read a thing without getting severely nauseous. Surprisingly, using my Americans with Disabilities Act, once again, I got a private room to take the exam with extra time. I passed the Bar and became an unemployed lawyer.
<br/><br/>
There was no way I could work in the condition I was in. By this time I was married and my husband was looking to do a fellowship in Pennsylvania. We decided that it was a perfect time to start a family. I became pregnant and was delighted to find the migraine that I had for the past 10 years finally resolved and went away. I was normal again, YEAH!!!
<br/><br/>
However, I had severe morning sickness. I never vomited, but I was always nauseous throughout my pregnancies. I was so happy to be like everyone else, I did not mind. In hindsight, I think it was motion sickness from MdDS and not morning sickness. However, at that time, I did not know that. In order to move from Chicago to Pennsylvania, we drove a U-Haul truck cross-country. I think the drive must have set off another episode of MdDS.
<br/><br/>
Post partum, I was exhausted, but so glad that the headaches didn’t return. I was told every new mom is tired. My husband was working long hours and I had no family near by. I had 3 kids in 5 years, no wonder I was tired. I was told that I tested positive for Epstein Barr Virus and that I was just tired, nothing was wrong. However, I did not have the energy to even unbuckle my baby from the car seat to take the preschooler into preschool. I knew something was not right.
<br/><br/>
We decided to move back to Colorado. I felt better biking in the sunshine and going skiing until the next episode hit me. I was skiing in a whiteout and got disoriented. I could not tell where was up or down. I literally let my skis go downhill with gravity but was completely disoriented. I fell down, a rare event for me. I was told that I had another head injury and that my resulting dizziness was from the original bike accident 19 years prior. The headaches were back. I felt like I had viral labrynthinitis again. For three years I went from doctor to doctor, ENT to neurologist and audiologist, private practice and to the university, anyone who was willing to treat me. I tried acupuncture and vestibular therapy. I tried medications. Nothing seemed to work. I was eventually told I had Benign Positional Vertigo and treated with the Epiley maneuver. I got better and then six months later it was back with a vengeance. Nothing could cure me. I contacted an expert via email and had my records looked at. I finally was diagnosed with Migraine Associated Vertigo. Some medicines helped.
<br/><br/>
To celebrate my renewed health, my husband and I went on a vacation without kids. Bad idea. I came home as a disaster. For the next couple years, every time I sort of felt better, we would travel and I would get worse. I was told that changing time zones affected my migraines and eating habits, which is why I always felt worse. In hindsight, each time I travelled, I triggered MdDS symptoms.
<br/><br/>
To celebrate my parents’ 50th anniversary, my sisters and their husbands and children were all going on a cruise. I was nervous. I did not think that would be a good venue for me, yet I did not want my kids to miss the opportunity for this memory. We went and I came home as sick as ever. I called my doctor and was told the good news. Finally, now that I had been on a cruise ship, I was easier to diagnose. I had MdDS. It took me 23 years to figure out what was wrong with me.
<br/><br/>
Now that I know what I have, life is a little easier. I remind myself daily this is life altering not life threatening. I have already altered my life and figured out what works somewhat. Being part of this foundation made such an improvement in my life. Finding others like me has been life changing in a positive way. Now I feel like I have some “rules” to follow and it is a little easier to predict what is going on with me. I have others to give me advice so I can hope for remission.
<br/><br/>
MdDS has shaped my adult life, it has had some surprisingly good benefits. My husband, children and myself are really close to each other, something that I don’t think others without illness or adversity really enjoy. We love to ski together and have fun doing it a lot. I exercise because that is the only way I feel good. I have probably avoided other family illnesses such as diabetes and heart disease because I take good care of myself. I also get to enjoy every day on my bike. If not for MdDS, I would probably be a boring lawyer at work and not enjoying life with my kids so much. I have founds ways to benefit from having MdDS, but I would not wish it on anyone and I hope for permanent remission. It is scary to think that I will be like this for the rest of my life.
<br/><br/>
Life is hard with MdDS. My balance is completely based on my vision. When something moves, I cannot tell if it is moving or if I am moving, kind of like when you see the car next to you move forward and you have the illusion that you are going backwards. I don’t like going out at night or being in a car after dark because I have no horizon to balance me. Stores are very difficult for me because people are moving around and the items all seem to be flying around which causes me to get extremely dizzy. I find it hard to grocery shop or buy clothes without help because I get so seasick shopping, so I generally avoid it. Walking is very dizzying so I use REI trekking poles to stabilize myself when I take the dog for a walk. I find most movies and television uncomfortable to watch since it increases my symptoms. Computers and most technology are too hard to focus on. Background music in stores and restaurants puts me over the edge because I get overestimulated. When I go to my kid’s sporting events or school plays, I get very motion sick from all the movement, so I usually end up looking at my feet instead. I avoid crowds and noise as best I can. I always carry with me sunglasses, earplugs and emergency medicine so that I can block some of life’s normal stimulation. However, with every hardship, I remember this is life altering not life threatening and there are solutions. I just have to do things differently.
<br/><br/>
I wake up in the morning and stumble like a drunk out of bed. I feel dizzy and fuzzy unless I am biking or in motion. When I walk the dog, I like company to distract me from the feeling that I am walking on a swinging rope suspension bridge. I feel lightheaded most of the time. Imagine going on the worst amusement park ride and being asked physics or difficult math problems, this is what it feels like for me to just remember my birth date. My husband talks to me and all I am thinking is “I am not moving but I feel like I am”; I try to concentrate on his forehead to balance and look like I am listening. I feel like a can of coke that has been shaken up and is about to explode and needs to sit still to settle. However, sitting in a chair feels like a spinning teacup ride at Disney.
<br/><br/>
I have probably spent millions of dollars on my health care for this illness. I have had 3 knee surgeries because I can’t balance I wobble, which causes wear, and tear on my joints. I have had numerous MRI’s, CAT scans and tests. I go to lots of doctor’s visits. I have had lots of physical therapy. For example, I fell down stairs and tore my rotator cuff. I have had unneeded eye exams to see if that is why I am dizzy, but I still have 20/20 vision. I experimented multiple times on alternative medicine such as acupuncture and vitamin supplements. I keep trialing different medications. I keep trying vestibular therapy. My health care costs continue to escalate.
<br/><br/>
I find it amazing that we can send astronauts up to the moon, have paying passengers on orbit trips around the world and instant messages via computer, yet no one knows why my brain and others like me have this phantom motion that goes away when I am in motion. I hope that people will hear my story so that doctors will be able to diagnose all the people out there with this mystery disease. I suspect there are lots of people like me out there undiagnosed. I wish I had saved every dollar spent on my medical costs and spent them on research for preventive care. I dream that I can get people organized together to STOP THE ROCK AND JOIN THE WALK.
<br/><br/>
Two friends that I have met from this foundation are joining me in organizing the WALK for MdDS (1st Annual Rock’N Stroll for MdDS) on October 16, 2011 in Denver. I hope that people will read this story and join us physically or financially and support the walk to raise awareness and money so that there can be research to find out what causes this illness. Once we have money for research, we will hopefully find a treatment.
<br/><br/>
I am a very happy stay at home mom and love my family and life. I am so grateful to finally know what is wrong with me and to learn how to live with it. I realize that everyone has their own baggage it really is what you do with it. As my son said to me once, “Mom, you are so lucky to have MdDS, you get to go on roller coaster rides and boat trips while staying at home, all I get is boring land. It just goes to show you that everything is in the eye of the beholder.
<br/><br/>
Karen
<br/><br/>
June, 2011<br/>
updated, August, 2011'''
      },
      {
        id:3
        title:"Arianne Daume"
        content:'''My name is Arianne Daume. I am a 32 year old homemaker of a 5 and 7 year old boys.  Eight years ago, I went on a 7 day cruise and came back walking into walls and dizzy. I was misdiagnosed with labrynthitis and, finally after 3 weeks, was placed on steroids, and it seemed to fix me or so I thought.
        <br/><br/>
     In February of 2010, I went on another 7 day cruise and came back thinking that if this happened again, I would take steroids and be fine. Boy was I wrong. My body was in constant motion, rocking, head bobbing, bed swaying, and tons of nausea. I was actually diagnosed over the phone while I was visiting my folks in WV by an ENT in Nashville. After seeing an ENT and trying a 5mg 24 hour Valium induced sleep to try and reboot my system and not working I was sent to the Balance Disorder clinic. It showed nothing wrong with my ears. I did try vestibular rehabilitation with no luck. I finally flew to Chicago and saw Dr. Hain (an otoneurologist) who got me started on lots of medicine to help control my rocking and nausea. I started having migraines as well or at least a significant headache daily.
     <br/><br/>
MdDS has affected everything in my life. In the beginning, I had to rely on neighbors and my mother who came and stayed for 3 months with us. She and my friends did everything for my household. My boys and I then had to spend the summer away at my folks, making my husband miss all summer with our boys. Things have gotten a bit easier. I am very tired all of the time, but I only have the bed swaying, and when I get tired, my head bobs. I did  recently have an intractable migraine from this that landed me in the hospital for a week. I am afraid for what my boys have seen and what they won’t want to do. I fear they will never want to go on a cruise with their daddy. My seven year old is always saying he wishes I never went on a cruise. I know I will never hold them back from those doing things that I can’t or won’t do (roller coasters, boat rides, train rides, cruises, etc.). I know that time is on my side, but with 2 small kids, it makes it hard. I know that Klonopin is my biggest help with the disease and the constant help of family and friends support. I am also seeing a therapist to just vent, which helps in a way.<br/><br/>
This syndrome has taken a lot from our family, but we are hanging in there. I think my husband finally had his eyes opened this past week when I was hospitalized and had gone down 20 pounds. Hopefully time will help get me into remission, but I am very frustrated that it is taking a lot longer than I want.'''
      },
      {
        id:4
        title:"More coming soon..."
        content:"coming soon..."
      }
    ]

    api
)

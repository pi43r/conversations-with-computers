In early 2020 I was asked by my colleague  and precious informant of anything-AI Matthias Schäfer (aka Pitscher) to collaborate on a project using GPT-2—in particular to create an AI hand-reading machine after a rough idea had been in the air for a while.  By mid-2019 I was already interested in the capabilities of GPT-2 (see next project) to generate proper text which were not there just one year earlier, so it was an offer I could not refuse. The chiromancer conveys many of the topics covered extensively in the previous sections of this text, probably also in part because it was produced at the same time I was halfway into the writing. In addition to the ideas explored with the first project, this prototype points much more clearly to the concept of a technology that works like magic and the depiction of AI as a black box, all while introducing a new focus on data collection and with an aesthetic borrowed from Eighteenth century automata but with a modern twist. From the very start, the selection of a hand-reading device was done with a very specific intent. While the one who knows uses user-typed text as its input, the chiromancer shifts the attention to personal data and data collection by employing a well-known fortune-telling practice. Behind this choice lay several observations which combined are at the base of this project. First of all, computers and AI models are used all the time to predict things upon which
societies rely—be it the weather, the climate, the stock market, or more personally the health, preferences and the supposed buying needs of billions of people. We not only consult these predictions, but we often adapt our lives according to them. Secondly, a considerable portion of humanity believes in the supernatural, and surprisingly many people who claim not to have any belief in it still engage in practices like astrology, which along other similar shenanigans is one of the textbook examples where the Barnum-Forer Effect can be best observed.266 Third, such practices have moved on the Internet and through the screens of our devices as websites but more often in the form of an app. We discovered services offering horoscope APIs which in fact just cycle through a series of pre-written answers; even more interestingly, we found an article detailing how a Facebook horoscope app using such APIs—giving essentially random answers— was downloaded and used millions of times by users who had to give it permission to access their personal information—name, birth date, friends, likes, preferences, basically everything—in order for it to supposedly create a ‘reliable’ and ‘personalized’ reading. Behind this claim the company was able to collect very detailed data about millions of Facebook users.267 Finally, wrong premises are combined to create answers that seem to work, if it wasn’t that the question is not the right one—like for example financial predictions combined with horoscopes. This however seems yet another cautionary tale for AI, where arbitrary biased data can be pumped into a model just to come up with some sort of result for the sake of the market to have something to sell or something to believe in.
These points were all combined with the premise of design fiction, filtered through Clarke’s third law— “any sufficiently advanced technology is indistinguishable from magic”—and condensed into the chiromancer. 

Under the idea of a technology that works like magic the machine uses the practice of hand-reading to predict a fortune which is tailored to the user; in doing so, it naturally asks the person to scan their palm. A hand might not seem as important as other personal information like a full Facebook profile or biometric data such as faces accompanying a name, but while it surely doesn’t contain lines that can tell about the owner’s future it definitely is one of the best sources for identification (full disclaimer: we scan the hand at a low resolution to save on time and further process it to enhance certain features, so there is no possibility from the start to detect fingerprints). The fortune isn’t of course tied in any way to the hand of the user; if we tried to come up with something like that—correlating hand scans with fortune-telling— we would have fallen exactly into the last point just criticized above. Instead, where a good cold reader would traditionally understand things about the person sitting in front of them by observing their aspect or asking some apparently vague but informing question to be able then to surprise them, the project exploits some computer tools in order to give the illusion that each fortune is in fact computationally deduced for each user by an intelligent machine. Like the Facebook app but a bit more fancy and without asking so much.
Inside the black box, after each scan is completed the obtained image goes through a process of object recognition—is there a hand or not, is it a palm or not— and if it is determined that there is a palm in it the picture moves on to fingertips detection and a series of filters are applied to it. On a complete parallel process a GPT-2 instance, fine-tuned with text from horoscopes, hand-readings and other fortune-telling practices scraped from the web, generates some paragraphs of text. The processed image, paired with the fine-tuning material and the way GPT-2 generates text make for a convincing fortune when a person eager to believe such things is put in front of a rather opaque piece of machinery of which they don’t know its inner working. This is once again enhanced by the aspect of the machine, by its visible processes and by the atmosphere surrounding it—essentially by the story it evokes. One probably imagines fortune-tellers in a temple or in a dark room filled with incense smoke and lit only by candlelight, but they can also be traditionally found with a small cart offering their service in many street of Asian cities. Adding to the human ones, fortune teller machines have existed since the early Twentieth century—appearing in amusement parks and arcades—fitting straight into the tradition of automata with their humanoid aspect. The chiromancer connects fortune-telling with AI by referencing another automaton, the one which has been central to some key sections of this text. Wolfgang von Kempelen’s Mechanical Turk not only probably influenced the aspect of some of the fortune teller machines and presents the same itinerant aspect as
street fortune-tellers; by presenting and demonstrating a fake but credible connection between its complex gearbox and its chess-playing capabilities—while having a human player hidden inside responsible for the moves— it is a perfect example to describe the illusion of automation of artificial intelligence. This spectacle is also a bridge to let many aspects of practices such as astrology, fortune telling and others spill into the world of information technology and computers as a metaphor for the way these machines are presented to the public. Once more, magical black boxes that just work. 

Building on this aspects and on this aesthetic, the chiromancer is presented as a black cubic structure made of aluminum beams and standing on a flight case which is the same one used to transport it, evoking both the touring spectacle of the Mechanical Turk as well as the moving stand of the street fortune-tellers. All its components are exposed and showcased for everyone to see, and yet the machine is unintelligible, with only the moving GPU fan and some LEDs lighting up as the sole feedback for the user to tell that the machine is in fact working. 
In this case a simple OpenCv program does the image recognition part and GPT-2 does the work of generating the text, but the concept could have been developed differently and we could have signed up on Amazon Mechanical Turk to let real human workers on the other side do the job in real time—the end result wouldn’t be so different for the person in front of the chiromancer. However, in the end this project is self contained, and 

each of its three layers represents one step: the input, the processing, the output. As already mentioned, the top one consists of a scanner on which the user has to place their hand, the middle layer houses a computer— the processing unit—with all its components visible and the GPU fan reminding of an eye, able to see the future, and the bottom layer is occupied by an old dot matrix printer. Like in the one who knows, the output is printed on a piece of paper for the user to take. This time, however, the format is much bigger and contains the picture of the processed hand, with the fingers highlighted in the familiar way computer vision algorithms create bounding rectangles around objects, along with the produced fortune text—creating a sort of profiling page. 

The components where chosen once again to support a narrative which tells a story of a unique machine accessing some unique knowledge. The structure does not hint to modern devices and it is rather monolithic; the scanning takes a while, the processing takes a while, the printing takes more than a while, like in an outdated appliance for some invented office for fortune-telling. To reiterate this concept a box of continuous paper is placed on the floor in front of the flight case; an outdated medium which reminds also to the stacks of punched cards fed into early computers used in order to program them. The chiromancer doesn’t strive to create a correlation between features of the hand and possible readings in order to validate a pseudoscience; quite on the contrary, it borrows its practice, processes, aesthetic and narrative to draw a connection to the world of artificial intelligence and information technology in order to bring in a different perspective—one made of magic tricks and spectacles.
In doing so behind its facade this project abandons any pretense of accuracy and instead exploits the whole arsenal of tools described in the first four sections of this text. Its aspect, the visual language of the hand scan and the style of text generated by GPT-2 are there to trigger a series of effects in the user and which supposedly end with the person asking themselves, even if just for a second, if the box in front of them must be intelligent in order to be able to come up with such an output. By proposing—on a first impression—a bizarre correlation, exaggerating the scope of the machine and the validity of its results, the hope is once again to be able to lead some of the users to a moment of realization from which they can then draw some connections between this harmless prop and the devices we are accustomed with everyday. Objects that fill and shape our world, and where the mechanics of trust, indirect acceptance and data collection are much more subtle.
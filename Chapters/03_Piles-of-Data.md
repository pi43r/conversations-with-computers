# Piles of Data

  

## Self-Learning Networks


The idea behind Artificial Neural Networks has a long-standing history. Using our understanding of the brain as a blueprint for mathematical operations dates back to the 1950s when the psychologist Frank Rosenblatt developed the *perceptron*.[^1] Inspired by nerve cells and their connections (synapses), the perceptron takes multiple input values, sums them up, and outputs a 0 or 1 depending if a predefined threshold is reached. This system can be ‘trained’ by using positive and negative reinforcement to define the weights for each connection. With an apparatus, the Mark-I Perceptron,[^2] that uses photoreceptors to turn light into ‘bits’ (today we would say pixels), the perceptron could ‘sense’ shapes in the form of a binary matrix and distinguish between circles, squares, and triangles. He proposed that a network of perceptrons could possibly even recognize faces and objects. Even though he developed the perceptron in 1964, Frank Rosenblatt never saw his invention take off.[^3] 

Another engineer, Kunihiko Fukushima, kept refining his methods in the 70s by adding multiple layers, effectively creating the first ‘deep neural network’ where deep just means the depth of ‘hidden’ or in-between layers connecting the input signal to the output classifier.[^4] He called this self-organizing system Cognitron,[^5] which successfully recognized numbers and letters on a 12x12 grid. Its successor, the Neocognitron,[^6] took further inspiration from the visual cortex and discoveries by Hubel & Wiesel made in the 1950s that some biological neurons selectively respond to local features like lines, edges, or color and others to figures like circles, squares or even human faces. This is also the core idea behind convolutional neural networks (ConvNet or CNN), which separate images into a smaller grid and apply a certain filter to them, e.g., checking for edges. The French computer scientist Yann LeCun came up with ConvNets in the 1980s, which are *the* driving force for AI systems today. Additionally, Geoff Hinton, a cognitive psychologist and computer scientist, popularized the backpropagation algorithm in 1986, which finally made it possible for filters to tune themselves instead of relying on predefined rules.

Most conceptual ideas behind current deep, weighted networks were already present in Frank Rosenblatt's papers [^7], but rule-based systems often outperformed weighted networks. So what changed when Alex Krizhevsky, a student of Hinton, made a phenomenal leap in 2012 on the ImageNet classification competition?

Krizhevsky outlines the main innovation in the paper: “To make training faster, we used non-saturating neurons and a very efficient GPU implementation of the convolution operation.”[^8] Until AlexNet was released, it was incredibly time-consuming to run the conditioning process on the CPU, which could only do one operation of matrix multiplication at a time. As the name Graphics Processing Unit suggests, the GPU was originally designed to calculate 3D scenes and render them on display, which involves a lot of matrix and vector operations. To accelerate them, GPUs are capable of calculating large blocks of data in parallel. For AlexNet, conditioning on 1.2 million pictures took only 6-9 days on two consumer graphics cards compared to probably weeks or months without them. However, it was not the first system that utilized the GPU; it is similar to a CNN by Dan C. Cireȿan et al. released a year prior, with a reported speedup of 60 times for large weighted networks.[^9]

The other roadblock for deep, weighted networks is ‘overfitting’: in the case of the ImageNet competition, that would mean that the model adapts to the image so closely that it would simply reproduce the categories of the image without being able to identify new pictures which were not inside the training set. The most common way to reduce overfitting is to have a sufficiently large dataset with a high amount of variance. For AlexNet, the 1000 classes and 1.2 million images were still not enough, and they used data augmentation, which transforms, flips, or changes the color of an image to increase the training set by a factor of 2048. A larger dataset—in theory—increases the robustness of the weighted network.

In conclusion, the conceptual framework of how weighted networks (artificial neural nets, perceptrons, or cognitrons) work was mostly established in the past century. Their performance today comes from increased computing power and more extensive training sets. In fact, datasets have become larger and larger, and we haven’t seen the limits of what weighted networks are capable of. They seem to be mainly limited by data and computation.

## Making Data

My first encounter with a large dataset in the field of computer vision was in late 2017 when I found *11k Hands*.[^10] As the name suggests, it is a dataset of 11076 human hands compiled by the researcher Mahmoud Afifi for gender recognition and biometric identification. The images show the hands of 190 individuals, in both their palm and dorsal orientation, placed on a white background with uniform lighting. Each image is accompanied by the following metadata: age, binary gender, skin color on a scale of “very fair”, “fair”, “medium”, and “dark”, left or right hand, palm or dorsal, if it has nail polish and if there are “irregularities”. A statistical analysis of the dataset shows that it contains more female than male hands, mainly people in their 20s and a majority of “medium” and “fair” skin tones. The gender bias is addressed in the paper and mitigated by filtering the training set to equal male and female hands. They report that the CNN conditioned on this dataset had, on average, 87% accuracy in recognizing the correct gender on an image of the palm and 90% accuracy for the dorsal side.

But it is not the ‘state-of-the-art’ results that drew me to the paper; it was the gender and skin tone classification itself that appalled me. It reminds me of phrenology in the 19th and 20th centuries, a popular pseudoscience claiming that a skull's shape could determine a person's character and mental abilities. Phrenologists like Franz Joseph Gall went to great lengths, measuring and categorizing human skulls and associating certain regions to human traits. While it didn’t take scientists to debunk the idea that bumps on a head could indicate a person's characteristics, it came back in the early 20th century when it was applied to racist and sexist stereotypes and used to justify Nazi eugenics. The underlying assumption that the shape of the head has anything to do with the person's mental state was simply wrong.[^11]

The paper by Afifi et al. does not make such horrendous claims about the personality of their subjects, but considering that gender is a social construct and not necessarily a binary choice trying to use a computer to identify if a person is male or female by analyzing their hand seems arbitrary at best and reinforcing gender stereotypes at least.[^12] 

Another aspect of the dataset stood out to me when I started to look through the images. These are not pictures in the traditional sense. Their aesthetic value does not matter because they are simply tools to accomplish a task. They are not made ‘to look at’; instead, these images of hands are produced for a computer to analyze. Harun Faroki called these types of images ‘operative’ in his three-part series *Machine/Eye* where he examined how military technologies like guided weapons produce images that serve only the utility of the machine. As Aud Sissel Hoel puts it: “operative images are devoid of social intent, that they are not meant for edification, and nor for contemplation.” [^13]

Upon contemplating the hand dataset, I was struck by its remarkable features. When I looked through the images quickly, I could not only see the motion of the test subject as the photos were selected frames from a video, but I also started to imagine the person behind the hand and apply my subjective stereotypes and biases which far expanded the labels of the dataset. I could imagine the scene around the camera with a couple of researchers who assembled a make-shift photo studio in the office of their lab. They greet the subject with a handshake, maybe a fellow student, and explain the procedure quickly to get them to sign the paper that their anonymized personal data will be published for scientific research. Then the person puts both hands under the camera, spreads their fingers, and leaves. 

This dichotomy between the label and my narrative inspired me to create a video piece featuring the unaltered dataset. I used the default Mac computer speech synthesis to read the labels corresponding to each hand and sped it up to fit into a 26-minute-long video. As viewers witness the participants holding their hands into the camera and spreading their fingers, they are met with a monotone, beat-like soundtrack of repeating words like “fair” and “medium” and occasionally “nail polish”.[^14]

![Example of a frame from 11k hands](11khands.png)

  

At the 36th Chaos Communication Congress, I organized a workshop called “Palm Reading AI”, inviting visitors to read people's palms from the 11k hands dataset. At first, I only introduced them to palmistry using wikiHow as a reference.[^15] Then I handed out some prints where a random hand from the dataset was depicted, and participants had to answer a couple of questions. Some questions were short guesses like age, gender, and country of origin; for others, they had to come up with fictional stories with only the hand lines as a reference: what is the persons future? How was their childhood? How is their love life?

After they filled in the form, some people shared their stories, and then I revealed where these hands came from and how computer scientists are using them to create models that try to predict their gender. Afterward, we discussed the practice of creating large datasets and their ethical considerations. I had a long talk with one participant that did not want to guess the age or gender of that person, and I told them that this was precisely the point of the workshop: to reflect on our own biases and stereotypes and how they translate into science.

After long contemplation on 11k hands and finding datasets that are much more problematic than this one, I don’t think the type of work from Afifi et al. is ‘unethical’ or needs to be redacted. They got consent from their subjects and shared the dataset with the scientific community for “reasonable academic fair use”. The work on biometric identification and comparing CNNs to previous methods are interesting and novel; however, as I stated above, I think the premise behind the gender recognition task is flawed. Unfortunately, this is very common in computer vision, where people are (mis-)labeled, reflecting and amplifying societal stereotypes.[^16]

My research on the hands dataset, in conjunction with esoteric practices and fortune-telling, informed a later work of mine, “The Chiromancer”, that I built with Giacomo Piazzi.

## In the wild

The process of collecting and creating data has drastically changed since the wide adoption of the internet. Where the 11k hands dataset has invited participants to their institute to take a picture specifically for the dataset, other researchers started to search and download huge collections from the internet without consent.

Take, for example, the ImageNet dataset, initiated by Stanford University’s AI professor Fei Fei Li, which was created to tackle object recognition tasks and eventually consisted of 14 million images.[^17] The team queried multiple search engines with common nouns and multiple translations to get around 500-1000 images per category. The categories derive from an older project called WordNet, created in 1985 at Princeton University, that tried to achieve a hierarchical ontology of words. For example, the noun *human* is a synonym for *homo, man, and human being* which are subcategories of the *hominid* class, which are *primates*, which are *mammals*, which are *animals*, which an *organism* and finally part of the *entity* class. After downloading millions of images in thousands of categories, they were first automatically deduplicated, but the task of checking whether the image actually depicts the search term could not be done by an algorithm. Originally Fei Fei Li wanted to hire graduate students to sort the data, which was too costly and time-consuming.[^18]

One of her undergraduates suggested using a new service called Amazon Mechanical Turk, where people worldwide complete small tasks for little compensation. Even with the help of Mechanical Turk, it took 2,5 years to sort and validate the first dataset with 3.2 million images in over 5000 categories. At some point, ImageNet was the largest academic client for Amazon’s Turk service, and after the popularization of weighted networks, they became a cornerstone of data annotation. Similar platforms were established, and Mechanical Turk grew to half a million workers, rigorously exploited and alienated as ‘click workers’. One paper estimates their median hourly wage to 2 USD, and only the top 4 per cent earn more than 7.25 USD per hour.[^19] If the requester rejects the task, the worker does not get paid at all and has no way of appealing that decision. To advocate for better working conditions, the designer and researcher Caroline Sinders built an open-source tool for data annotation and a wage calculator to estimate the cost of labeling better.[^20]

With so many different people working on labeling images, the dataset eventually reflects societal biases. In 2019 the artist Trevor Paglen and researcher Kate Crawford collaborated on an exhibition titled *Training Humans*, dedicated to human image datasets. One of the main exhibits was a vast collection of human images from ImageNet.[^21]   

As you go further down the category tree, you might find images of people labeled as “Bad Person, Call Girl, Drug Addict, Closet Queen, Convict”, and so on.[^22] The artists used these absurd, racist, and misogynistic labels to train *ImageNet Roulette*,[^23] a recognition algorithm accessible online and in an interactive installation. People online quickly picked up on the tool and shared images of themselves with sometimes amusing and often deeply problematic image captions.[^24] While some of the people in the research community defended ImageNet, that these offensive labels are not part of the competition and make up only a tiny fraction of the total dataset, as a result of the media attention that followed, more than 600,000 images were removed. It is now only accessible after proving to be part of a scientific institute.

Another pair of artists and researchers, Adam Harvey and Jules LaPlace, have been exposing image sets which often get revoked and removed after publishing their investigation.[^25] Harvey and LaPlace focus on datasets with faces captured “in the wild”. One particular example was the *UnConstrained College Students (UCCS)* dataset captured at the University of Colorado Colorado Springs. According to the authors of the associated papers to the dataset, they identified that current image sets created for face recognition research did not address the presence of unknown subjects. The authors of the papers associated with this dataset wanted to create a more realistic benchmark for face recognition research by introducing unknown subjects over time. To achieve this, they captured students on campus during breaks using a 800mm telephoto lens from a distance of 100-150 meters through an office window. The authors frame it as a benefit that the students are unaware of their capturing for the dataset as they casually focus on random activities, and their faces are sometimes blurred and occluded. To make things worse, this research was mainly funded by US defense and intelligence agencies. The public backlash was immense, and as a result, the dataset is no longer publicly available. The researchers did not see any ethical problems and argued that their subjects are anonymous as their names or other identifiers are not published.[^26]

However, when researchers need unconstrained and non-consensual data, they do not often capture them directly using creepy surveillance tactics. Starting with “Labeled Faces in the Wild” in 2007, collecting and labeling image data from internet sources has become normalized and remains largely unregulated. Often these image sets “in the wild” operate in a gray zone where they either depict public figures, arguing that privacy regulations do not apply, or simply link to the file and only store them temporarily for analysis. A third option uses media licensed under Creative Commons (CC), which is mostly considered free and legal data with no restrictions in the AI research community.[^27] In a detailed report, Adam Harvey lists many datasets that exploit and often misuse CC licenses to create face and object recognition datasets.[^28] He identifies Flickr as a significant source for collecting images, a popular image-sharing website where users can choose from various Creative Commons, copyright, and public domain licenses. Flickr actively promoted the use of CC licenses and offered unlimited free hosting if a CC license is used. Their strategy worked; by 2022, they amassed 467 million CC-licensed images. In 2014 a joint research group, including Yahoo Labs, the company that bought Flickr, shared one of the most extensive public media datasets[^29] with the name *Yahoo! Flickr Creative Commons 100 Million (YFCC100M)*.

Other more specific datasets were created from this corpus. One is the *MegaFace* face recognition dataset with 4,7 million faces from 672,057 identities. While all the images fall under a CC license, most prohibit their commercial use and require appropriate attribution, which was not given in the dataset. As Harvey and LaPlace verified, the *MegaFace* dataset was used globally by commercial, military, and academic organizations.[^30] As an investigative article from the New York Times explains, most people are unaware that their images are powering face recognition research worldwide, including companies with ties to China's surveillance of the Uyghur population.[^31] 

To conclude, the three common issues with CC-licensed media are that they are not or wrongly attributed, the use of non-consensual biometric data is prohibited in some places (e.g., Illinois), and the use in commercial applications is often prohibited. Many of these issues identified by Harvey and LaPlace remain today and operate in a legal grey zone. While the notion behind uploading images under an open license for others to freely share, distribute, and remix media is a noble goal, the CC license is legally weak and practically useless against opting out of statistical analysis in AI research. But we might be slowly moving in a direction where lawmakers catch up and create precedences that disallow the use of biometric data in certain applications, like the upcoming AI Act.[^32] 

## This Person Does Exist

I examined a dataset using Creative Commons images more closely: *Flickr Faces HQ (FFHQ)*. In 2018 the research lab of Nvidia, one of the leading companies for visual computing, published a paper introducing a machine learning architecture called StyleGAN.[^33] They improved generative adversarial networks (GAN) so that it was possible to create controllable synthetic high-resolution images. In simple terms, the system is able to abstract large amounts of images with a model that, in turn, outputs similar-looking pictures. In this case, the model can generate realistic-looking photographs of human faces. 

*FFHQ* is relatively small compared to other datasets, with only 70,000 images. As existing datasets were too low in resolution, a new corpus was created by scraping Creative Commons, Public Domain, or U.S. Government Works licensed images through Flickr’s API. The dataset is published under a CC-BY-NC-SA license, and the instructions for use and download are very clear, making it manageable for me in terms of size and effort to discover the underlying characteristics. The dataset consists only of photographic images, as Amazon Mechanical Turk workers checked it to remove occasional pictures of statues, paintings, or photos of photos. The raw images were automatically aligned and cropped around the face, using the open-source library dlib, to create a uniform square ratio of 1024px. This library also identifies 68 points outlining the chin, eyebrows, eyes, nose, and mouth, which are included in the metadata. So the final dataset used for training the GAN consists of a large number of faces where the eye and mouth positions are always in the same spot.

![Screenshot of This Person Does Exist](Screen_Shot_2023-03-15_at_20.50.49.png)

One year after Nvidia released its StyleGAN paper, the software developer Phillip Wang published the website *thispersondoesnotexist.com*, which shows the capabilities of the generative model to create realistic-looking photographs of people.[^34] The site quickly took off and alarmed people about the potential impact of AI systems in generating cheap synthetic media.  

As a counter-narrative to the AI image creator, I wanted to showcase the people who were used to condition this system. In 2020 I moved the cropped and aligned face images to my server and built my website with the name *this-person-does-exist.com*, which displays the faces from the training set alongside their metadata.[^35] Looking at the individual faces facilitates an interpersonal connection with the unknown person and evokes a feeling for the images that were used to train the generative model. At the same time, it shows the creepy and strange practice of AI researchers using personal images as raw data.

As Flickr is used mostly by hobbyists and professional photographers, one can find portraits of children and families, speakers at conferences, or people on holiday. We can assume that, like other scraped datasets, the photographers of these images are unaware that their images are used for AI analysis. In contrast to other scraped datasets, the Nvidia researchers provide a tool to see if an image is part of the collection and allow the removal of the photograph.[^36] According to Adam Harvey, the company does not disclose if any images were requested for removal and have not updated or removed any photos since its release in 2016.[^37]

![70k faces from FFHQ compiled into one image ](Fig2.png)

![The Flickr Face - averaged FFHQ dataset](Fig3.png)

To get a sense of the scale of the dataset, I compiled all face images into a grid, reducing the size of each image to 16 by 16px. This simple montage makes it possible to get a feeling for the vast amount of normalized image data.

The authors claim that FFHQ includes more variety than other face image sets in terms “of age, ethnicity and image background, and also has much better coverage of accessories such as eyeglasses, sun-glasses, hats, etc.”.[^38] They admit to biases inherited from the Flickr platform but fail to mention them. Looking through the data, it becomes clear that most images are taken with high-resolution digital camera systems under good lighting conditions. Many pictures separate the subject from the background by blurring the background, which conforms to photographic aesthetic norms and is easier to achieve with professional lenses with a lower aperture.

Indeed, the dataset contains a variety of skin tones, age groups, and backgrounds, but they are not equally distributed. I averaged the pixel values of the images together, suppressing outliers but allowing us to see an overall trend of the dataset and find a visual bias. The resulting composite image, the _Flickr Face_, reveals a tendency towards smiling and light-skinned people in the data set.

My project, _"This Person Does Exist",_ is equally flawed in preserving user privacy as the research labs in question. Still, by making people uncomfortable and showing the human behind AI systems, we can better understand how creepy this harvesting of faces is.

As a part of a growing group of artists exploring and exposing research datasets, I tried to find a new term for this genre: Dataset Art. My paper on this subject was published in _Temes de Disseny_ in 2021 and included more examples from contemporary artists. Through their works, these artists make large datasets understandable and captivating. Their art has sometimes even created enough attention to lead some institutions to remove questionable parts or entire collections. Whether through galleries or online, Dataset Art provides a new way for viewers to peek into the workings of AI systems.[^39]

## Scrapism

Web scraping is the technique of using computer programs to visit links and automatically aggregate data from the internet. It is the backbone for many of the current machine-learning applications. The artist Sam Lavigne uses web scraping to create art with an emotional or critical message, a practice he calls 'Scrapism'.[^40]

Perhaps an early work using the internet as a data source to convey emotion is *Listening Post* by Mark Hansen and Paul Ruben. The work was awarded the Golden Nica in 2004, uses snippets from internet chat rooms and displays them on over 200 LED signs while a crude computer voice reads them out loud. The artists are transforming live data into a sensual experience where the viewer enters a dark room and listens to the world chatter happening simultaneously all over the planet.[^41]

Instead of using and exposing datasets made for scientific research, Lavigne creates his own datasets by downloading and analyzing materials on the internet to revert common power structures. For example, he produced the online artwork *New York Apartment* with Tega Brain for the Artport Collection of the Whitney Museum.[^42] In this work, they collected all for-sale listings on multiple real estate websites for New York City apartments and created a website that compiles all of them into one giant apartment listing. The value of this fictional apartment is over 43 billion USD and boasts 65,674 bedrooms and 55,588 bathrooms on around 3.4 million square meters. The website consists of multiple columns describing the listing with all of the clichéd languages and staged photographs common in the real estate market. They extruded the floor plans into 3D models and placed them together next to each other in a tower or pyramid formation so that you can explore this maze of apartments. The videos are cut up into thematic categories like “Welcome”, “Bedroom”, “Master”, or “Pre-war”, creating strange supercuts of panning and zooming shots of slick interiors.

Although looking through this compilation is funny and entertaining, it reveals the absurd language of luxury commodities. It shows the inequality of who can afford to own housing in a city like New York.

Another experiment by Sam Lavigne uses an open source hair detector to create a compilation of Mark Zuckerberg hairstyles in reaction to multiple people mocking the billionaire for his ‘terrible’ hairstyle.[^43] This project, in particular, inspired me as it shows that using web scraping and machine learning technologies can sometimes be for silly projects at the expense of billionaires funding this tech for surveillance and personal profits.

![Sam Lavigne - Zuckerhair](lavigne_zuck-cut.jpg)

## hidden.pictures

When downloading things from the web, we often assume that everything is stored for eternity. “The web never forgets” is a common phrase to warn people before uploading sensitive and personal content online. It can be true for widely shared content or data automatically scraped and stored on sites like archive.org, but the web is brittle for many files and links. Domain names expire and cut the link to the requested page. But even if the hypertext can be accessed, they often contain links to files that no longer exist on the server; in the case of images, the browser then shows a broken image icon and an empty rectangle.

For the online artwork *hidden.pictures* (previously called *empty.photos*) I created a web crawler that visits random URLs, and whenever it hits an image that did not load correctly, it gets stored in a database. I collected thousands of broken image links with their metadata that sometimes describes the image.[^44]

I present the viewer with a collage of randomly placed image rectangles on a blank white website. A visitor can pan around in all directions, finding their web browser's default rendering for broken images, often showcasing a ripped paper icon on the top left corner. When hovering over one of the boxes, the original URL is shown on the bottom left corner of the page, and whenever it existed, the alt-tag pops up next to the cursor.

These images from thousands of blogs, shops, and forums show the forgotten and neglected part of the internet. It invites the imagination about the internet that is not getting maintained and reveals an even bigger source of data; data that does not exist anymore.

When looking at this through the lens of weighted networks and training data, we have to ask what these models are learning when so many things get missing on the net every day. On the other hand, the models become a blurry snapshot of what they could gather but might not exist in the future.

  

![empty.photos exhibited at Best Off 2019](emptyphotos-IMG_2261-HDR_1.jpg)

  

## doggg.art

In 2020 I created doggg.art, an exercise in _scrapism_ where I downloaded and transformed content from the social media giant Instagram. Instagram has become the biggest tool for artists to find an audience and a community. Every possible niche can be found using hashtags like #dogart, which collects drawings and photographs of personal and commercial dog-related imagery. With around a million posts, it is only one example of the immense creative output on the image platform. Facebook, the mother company of Instagram, has access to abundant image data that they analyze and use to optimize internal computational models. By posting on the platform, a user "grant[s] a non-exclusive, royalty-free, transferable, sub-licensable, worldwide license to host, use, distribute, modify, run, copy, publicly perform or display, translate, and create derivative works of [their] content".[^45]

I would describe doggg.art as a generative big dada collage consisting of over 30k images from Instagram tagged with #dogart. The images were processed using a machine learning algorithm called U^2-Net, which removed the background and other elements from the pictures. A website then randomly places the cutouts on a beige background, slowly fading them, creating an ever-changing digital dog meadow. It is a collaborative work that combines pieces by 38326 artists, credited on a separate page with all their unique usernames.[^46]

The artwork is intended as a screensaver reflecting on the aesthetics of the platform Instagram and how our relationship with pets extends into this online network.

![doggg.art exhibited at Die Digitale Düsseldorf exhibition “Digital Jokes”](doggg.art_Digitale.jpeg)

![A visitor looking through the names of dog artists](doggg.art_Digitale_2.jpeg)

## A study on the Characteristics of Douyin / Meanwhile in China

Working with and about social networks has been a big part of my artistic work. In 2019 I was invited by UNESCO to participate in a residency in the city of Changsha, the capital of the Hunan region and the “City of Media Arts” in central China. While there, I tried to make sense of the information landscape around me and got hooked on the Chinese clone of TikTok. 

Douyin 抖音 became one of the most successful apps worldwide, the leading platform for creating and sharing short videos. Created by the Beijing-based company Bytedance, it is one of the few Apps that got successful outside of the great firewall. To comply with Chinese law, Douyin is an entirely separate App from TikTok. Even though the interface and logo look the same, the content is completely different and not accessible from the international version.

I asked S()fia Braga to join me as a collaborator, inspired by the work of *I stalk myself more than I should* where she captures Instagram stories, a feature designed to expose a video for a limited duration of 24 hours, and reappropriates them in a video installation. 

Our work aimed to explore and analyze the vast digital ecosystem of Douyin from different perspectives, using their recommendation algorithm to lead us to various aspects of Chinese social media. We are using screen recordings to capture hours of video footage of us scrolling through our feeds. These found images are then decontextualized without alteration to give visitors the space to reflect upon them and gain insight into a walled-off platform and the algorithms designed for user engagement.  

We made two video installations, running 8 hours of captured material, showing people dancing next to Chinese police forces showcasing their equipment. Sometimes we would show the blank interface showing blank search results. Search terms like Donald Trump result in videos that do not show the American president themself, indicating that Douyin uses facial recognition for censorship.

In addition to the unaltered screen captured, we created nonsensical graphs that invoke the feeling that the content is used for statistical analysis. The title *A study on the characteristics of Douyin* was taken from a sociological paper and gave the veneer of scientific legitimacy to the non-consensual stalking and capturing of our practice. In another exhibition at the Ars Electronica Festival in Linz, we changed the title to *Meanwhile in China*. We covered the wall behind the video screen with a collage of graphs and data points found online showcasing the exploding growth and user distribution on the platform. However, the charts are stripped of any labeling, making them unreadable and useless as visualization.  

![A Study on the Characteristics of Douyin at Xie Zielong Photography Museum in Changsha](IMG_1853.jpg)  

![Meanwhile In China at Ars Electronica 2019](meanwhile_landscape.jpg)

## Recommended Hashtags & More of the same

I have had an account on Instagram since 2012, shortly after it was released on Android devices. The social network was based around square images, often highly edited with filters inspired by old analog photos. When I joined Instagram, I already had a critical view of large social networks like Facebook, where I started creating online and offline performances.

On Instagram, I would often share references to technologies in the social sphere and where they break, like screenshots of loading spinners, weird advertisements, or comments by bots. I often used generic hashtags to get attention outside my friend network and reach even more bots and strangers. The hashtag originated from the IRC protocol, where # was used before the name of a chat room (channel) and became a popular way on Twitter for tagging events, movements, or topics from 2007 onwards.[^47] Today, it is a ubiquitous way of organizing and tagging content into categories, but it is most often used to get attention inside the network. For this, the game on social media is to add as many relevant and trending topics into the description as possible. Many companies have sprung up to help users ‘optimize’ their hashtags. From 2015 onward, I started using hashtags for nonsensical and humorous image descriptions and later decided to use hashtag generators to create lists of irrelevant tags for my posts on Instagram as social commentary.

In 2020 just after the first summer of the new COVID pandemic, S()fia Braga organized the *Internet Yami Ichi*, a black market for internet-inspired products invented by the Japanese art collective IDPW.[^48] 

I decided to print and sell the five years of my Instagram performance for this flea market with a book titled *Recommended Hashtags*, each of the 216 pages containing the image, hashtags, and number of likes. It also had a dedication to all my followers on the last page. After downloading and printing my Instagram data, I deleted all my images on the platform and added the label ‘Post-Instagram Artist’ to my account. 

As users of Facebook's platforms, we know our content is being analyzed for profit. With my online performance, I aimed to subvert and add noise to the system, albeit not enough to make a real difference. Selling my book was a way to compensate for the ‘work’ I have been doing for Facebook. I sold the book in a staggering model where each edition doubled in price from the previous one, making my old data more valuable over time while it was completely free at the time of creation. 

In the following year, 2021, I started a new performance titled *more of the same* on my account using the dataset I downloaded as source material for a generative adversarial network. I trained a StyleGAN model, originally invented to create synthetic human faces, on the images I posted from 2015 to 2020. The model created abstract shapes, colors, and textures instead of replicating my images. As ~200 pictures are a very small dataset and the images are not very uniform ranging from screenshots to photographs depicting objects or people, the model could not converge on any meaningful representation. Many of the generated images are nearly symmetrical, reminiscent of Rorschach inkblots, which results from augmenting my image dataset by flipping the images. They also show circular blobs because of the model architecture and are seen as an error of the weighted network.[^49]

Ultimately, I wrote a small program that uploaded and posted a newly generated image with the caption “more of the same” for 100 days. 

![Screenshot of more of the same | 200](more_of_the_same.png)

![Book cover of Recommended Hashtags | 200](Recommended_Hashtags_0.jpg)
![First page of Recommended Hashtags | 200](Recommended_Hashtags_1.jpg)

## Reflection

The idea behind computer programs that simulate the human brain goes back to the 1950s and not much has changed in the basic architecture of such systems, a few other things had to come together to make weighted networks perform so well. One crucial aspect was scale, which allowed researchers to access vast amounts of digital data uploaded and indexed on platforms and search engines. Another factor was the ability to programmatically exploit workers for minimal tasks like labeling images. Lastly, the utilization of parallel processing on graphics cards played a significant role in processing large datasets for an extended amount of time.
I shared my personal experience how I got in contact with operational images through the viewing of 11,000 hands and investigated how creative commons licenses are used to deflect responsibility around privacy and copyright from researchers. As an example I looked through images of Flickr faces that served as a dataset for new synthetic image models. I also examined two art forms that emerged from these technological changes: Dataset Art and Scrapism. Dataset Art involves the re-framing of scientific datasets exposing them to a wider public and Scrapism is the practice of downloading assets from the internet for artistic purposes. I placed some of my works that fit into these categories and gave examples by other artists, such as Adam Harvey, Kate Crawford & Trevor Paglen or Sam Lavigne. These projects all demonstrate how the internet shifted from a place to a corpus.

How the models derived from online data are reflecting us and how we find meaning in their outputs will be the focus of the next chapter. I will specifically take a closer look into text models which compress ever larger amounts of internet writing into weighted networks. 


---


[^1]: @rosenblattPerceptronProbabilisticModel1958.

[^2]: The Mark I was an electromechanical machine that used motor-driven potentiometers to adjust the variable weights.

[^3]: Frank Rosenblatt died in a boating accident in 1971. A couple of years prior, Marvin Minsky heavily criticized the mathematics behind perceptrons and advocated for a symbolic approach. These events might have led to a lack of funding in the ‘connectionist’ AI research field and ultimately to a general disinterest when the symbolic approach could not keep its exaggerated promises.

[^4]: @mitchellArtificialIntelligenceGuide2019, p. 114.

[^5]: @fukushimaCognitronSelforganizingMultilayered1975.

[^6]: @fukushimaNeocognitronHierarchicalNeural1988.

[^7]: @tappertWhoFatherDeep2019.

[^8]: @krizhevskyImageNetClassificationDeep2017.

[^9]: “One epoch takes 35 GPU minutes but more than 35 CPU hours.” @ciresanFlexibleHighPerformance.

[^10]: @afifi11KHandsGender2018; data and source code are available at @afifi11kHands.

[^11]: See @dempsey-jonesNeuroscientistsPutDubious2018. In 2018, Parker et al. jokingly tested the Galls theory using 21st-century scientific methods and MRI data. 

[^12]: I didn’t test the system as I don’t know how to run MatLab code, but I can imagine that the slightly better results on the dorsal hand result from nail polish only being applied on female hands. 

[^13]: @hoelOperativeImagesInroads2018.

[^14]: See @matthiasschafer11kHands2018.

[^15]: @HowReadPalms.

[^16]: See @murphyWhyStanfordResearchers2017. A particularly famous example by Michael Kosinski and Yiluna Wang. Their flawed study tried to predict if a person is gay by scraping dating sites and training a classifier on these images.

[^17]: See @dengImageNetLargeScaleHierarchical2009. ImageNet started with 3,2 million images and aimed to collect 50 million by the end of 2011. 
[^18]: @gershgornDataThatTransformed2017.

[^19]: @haraDataDrivenAnalysisWorkers2017.

[^20]: See @TechnicallyResponsibleKnowledge.

[^21]: See @KATECRAWFORDTREVOR.

[^22]: @ExcavatingAI.

[^23]: See @ImageNetRouletteTrevor.

[^24]: @reaHowImageNetRoulette2019.

[^25]: See @harveyExposingAi.

[^26]: @2ndUnconstrainedFace.

[^27]: See @CreativeCommonsBiometrics for a more extensive analysis on the exploitation of CC media.

[^28]: @CreativeCommonsBiometrics.

[^29]: YFCC100M only contains links and metadata to images and videos under CC license on Flickr.

[^30]: @harveyExposingAiMegaFace.

[^31]: @hillHowPhotosYour2019.

[^32]: The Open Future Foundation is a think tank that actively tries to influence European digital policy debates. See @OpenFutureOpen.

[^33]: @karrasStyleBasedGeneratorArchitecture2019.

[^34]: See @ThisPersonDoes2019. At the time of this writing, the URL redirects to stability.ai, but there is an archived version. 
[^35]: See @schaferThisPersonDoes2021.

[^36]: @FFHQDatasetSearch.

[^37]: See ‘FFHQ Dataset’ at @CreativeCommonsBiometrics.

[^38]: @karrasStyleBasedGeneratorArchitecture2019.

[^39]: @schaferThisPersonDoes2021.

[^40]: @lavigneScrapism.

[^41]: See @XTRAMarkHansen and @ArsElectronicaArchiv.

[^42]: @lavigneNewYorkApartment.

[^43]: @samlavigneJustDiscoveredOpen2020.

[^44]: See @schaferMissingPictures.

[^45]: See @NutzungsbedingungenInstagramHilfebereich.

[^46]: Complete list of artists can be found here [doggg.art/artistlist.html](https://doggg.art/artistlist.html).

[^47]: See @chakelianJourneyManyFaces2021.

[^48]: See @InternetYamiIchi.

[^49]: See @karrasAnalyzingImprovingImage2020.

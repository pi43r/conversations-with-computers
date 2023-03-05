# Piles of Data

The idea behind Artificial Neural Networks has a long standing history. Using our understanding of the brain as a blueprint for mathematical operations dates back to the 1950s when the psychologist Frank Rosenblatt developed the *perceptron*.[^1] Inspired by nerve cells and their connections (synapses), the perceptron takes multiple input values, sums them up and outputs a 0 or 1 depending if a predefined threshold is reached. This system can be ‘trained’ by using positive and negative reinforcement to define the weights for each connection. With an apparatus, the Mark-I Perceptron, that uses photoreceptors to turn light into ‘bits’ (today we would say pixels) the perceptron could ‘sense’ shapes in the form a binary matrix and distinguish between circles, squares and triangles. He proposed that a network of perceptrons could possibly even recognize faces and objects. Even though he developed the perceptron in 1964, Frank Rosenblatt never got to see his invention take off.[^2] 
Another engineer, Kunihiko Fukushima, kept refining his methods in the 70s by adding multiple layers, effectively creating the first ‘deep neural network’ where deep just means the depth of ‘hidden’ or inbetween layers connecting the input signal to the output classifier. He called this self-organizing system Cognitron[^3] which was successful at accurately recognizing numbers and letters on a 12x12 grid. It’s successor the Neocognitron[^4] took further inspiration from the visual cortex and a discoveries by Hubel & Wiesel made in the 1950s that some biological neurons selectively respond to local features like lines, edges or color and others to figures like circles, squares or even human faces. This is also the main idea behind convolutional neural networks (known as ConvNet or CNN) which separate an image into a smaller grid and apply a certain filter to them, e.g. checking for edges. The french computer scientist Yann LeCun came up with ConvNets in the 1980s which are *the* driving force for AI systems today. Additionally Geoff Hinton, a cognitive psychologist and computer scientist, popularized the backpropagation algorithm in 1986 which finally made it possible for filters to tune themselves instead of relying on predefined rules.

Most conceptual ideas behind current deep weighted networks were already present in Frank Rosenblatt papers,[^5] but weighted networks were often outperformed by rule-based systems. So what changed when Alex Krizhevsky, a student of Hinton, made a phenomenal leap in 2012 on the ImageNet classification competition?
The main innovation is outlined by Krizhevsky in the paper itself: “To make training faster, we used non-saturating neurons and a very efficient GPU implementation of the convolution operation.”[^6] Until 2012 



## Scraping the web

## Informed Consent
- 11k Hands
- This Person Does Exist

[^1]: [@rosenblattPerceptronProbabilisticModel1958]
[^2]: Frank Rosenblatt died in a boating accident in 1971. A couple years prior Marvin Minsky heavily criticized the mathematics behind perceptrons and advocated for a symbolic approach. These turn of events might have lead to a lack of funding in the ‘connectionist’ AI research field and ultimately lead to a general disinterest when the symbolic approach could not keep their promises.
[^3]: [@fukushimaCognitronSelforganizingMultilayered1975]
[^4]: [@fukushimaNeocognitronHierarchicalNeural1988]
[^5]: [@tappertWhoFatherDeep2019]
[^6]: [@krizhevskyImageNetClassificationDeep2017]
# Stochastic Meaning

	What I had not realized is that extremely short exposures
	to a relatively simple computer program could induce powerful
	delusional thinking in quite normal people.
[^1]

## Symbolic Language

Understanding language is an essential aspect for computer assistants to be truly useful. However, language is a challenging area since words can have various meanings depending on the context. Furthermore, there are multiple languages and different ways of converting spoken words into written symbols.

The use of computers for natural language processing (NLP) has been a subject of research since the invention of computers itself. One of the early examples of symbolic NLP is ELIZA, a computer program developed by Joseph Weizenbaum in the 1960s that simulated a conversation by rephrasing the input. ELIZA used pattern matching and substitution to generate responses based on the user's input, giving the impression of understanding what was being said. For example, if the user said “I feel sad”, ELIZA might respond with “Why do you feel sad?” or “Tell me more about your feelings.”

While ELIZA was fairly limited in its capabilities, it sparked the interest and imagination of the general public which saw the toy program as a breakthrough in artificial intelligence. Many people were fascinated by the idea that a machine could understand and respond to human language, even if the responses were simple and scripted. Joseph Weizenbaum himself was shocked about the willingness of people to attribute consciousness to even the most simple programs, like the 200 lines of code he wrote for the DOCTOR program that simulated (or in his words *parodied*) a Regorian psychotherapist. In a famous anecdote Weizenbaum explains that his office assistant, who was quite familiar with the program, demanded for him to leave the office because she was sharing intimate thoughts with the computer. Other people were shocked by the prospect that Weizenbaum would record the sessions with the chatbot, enough for him to believe that these people would share intimate and emotional feelings with the computer program.
Some psychologists even considered using such a program to be able to treat more people in a shorter time, which for Weizenbaum was a horrendous thought and finally made him doubt the future of humanity and computers. In his 1976 book “Computer Power and Human Reason”, Weizenbaum argues that the increasing reliance on computers to solve problems and make decisions is a dangerous trend that could lead to dehumanization and loss of autonomy of human beings. Conflating the computer with the human mind ultimately reduces the human to a computational being. He warns that we should not confuse the power of machines with human intelligence, intuition, and feeling, which are essential for ethical and meaningful interactions.[^2]

Two centuries later another computer and cognitive scientist Douglas Hofstaeder coined the term *Eliza effect* to describe the tendency of people to attribute intelligence and consciousness to computer programs. Even when people know of the inert limitations, the behavior and language used towards computer systems is often antropomorphic. We tend to empathize with supposed meaning and intentionality of a somewhat complex program, especially in probabilistic strings of text.[^3] 

ELIZA paved the way for further development in natural language interaction. In the 1970s some programmers created text-based games like *Colossal Cave Adventure* (1976) which allowed users to interact with the game world using natural language commands. The program acts as a narrator describing the scene and consequences of the actions taken by the user. The player explores a deep cave for the search of supposed treasure by interacting with simple two-word text commands like ‘go west’ or ‘take lamp’. Everything is pre-scripted and based upon conditionals, so if a room contains a lamp and the player executes the take command, the lamp will be stored and can be used in a puzzle in another room.  
Like the ELIZA program, *Colossal Cave Adventure* was first distributed to the limited computers in research facilities and played via a terminal to the main frame. However the memetic distribution over the ARPANET, a predecessor to the internet, was much faster than copying disks. Many students immersed themselves into the interactive fiction and spent countless hours exploring the cave, solving puzzles and uncovering hidden treasures.  

At the same time the use of conceptual ontologies, which are structured representations of knowledge in a particular domain became popular. These ontologies can be used to help computers understand natural language by mapping words and phrases to their corresponding concepts in the ontology. For example, if someone says "I want to buy a red car," an ontology could map "red" and "car" to their corresponding concepts and infer that the person is interested in purchasing a vehicle with a specific color. One of the biggest endeavors in mapping words to concepts was the creation of WordNet in the 1980s, which is a lexical database of English words and their semantic relationships.

Until the early 2000s programmers came up with larger and more complex rule-based chatbots. Creating systems like A.L.I.C.E. (1995) which used complex set of rules to simulate conversation with users. However, these systems were limited by their reliance on pre-programmed responses and lacked the ability to learn and adapt to new situations. The web application Cleverbot (2008) and it’s predecessor jabberwacky (started in 1988, online since 1997) shifted from a static databases to one that is constantly growing.[^4] By capturing every conversation and creating links of question-answer pairs, the system could use a fuzzy search algorithm to present the user with a likely response that was typed by another human previously. This application, based on statistical correlation and a large dataset of conversations, was able to trick 59.3% of people at the Techniche festival to believe that it was a human, as determined by the Turing test.[^5]

The Turing test, first proposed by British mathematician and computer scientist Alan Turing in 1950, is a measure of a machine's ability to exhibit ‘intelligent behavior’ equivalent to or indistinguishable from that of a human. The test involves a human evaluator engaging in a short natural language conversations over a text terminal with both a machine and another human, without knowing which is which. If the evaluator cannot reliably distinguish between the machine and the human more than 50% of the time, the machine is said to have passed the Turing test.

While Cleverbot's success in tricking humans may seem impressive, passing the Turing test is not necessarily an indication for intelligence. The test only measures the ability of making people believe that there is another human on the other side. It does not measure any reasoning ability or emotional cognition. In fact many of the programmers developing such chatbots dumb down the machines output to get higher scores by adding delays, grammatical errors or imitating a child.

All of these cases from ELIZA to Cleverbot and even games like the Colossal Cave adventure involve users interacting with a machine through natural language commands. For the computer there is no difference between the interactive fiction of an adventure game and the retrieval of likely text strings from a growing relational database. In both cases it is the user who is willing to immerse themselves in a fictional world created by other people. The difference here is that the computer game, in contrast to the big claims of artificial consciousness in chatter bots, invites people openly to join a world of make-believe, while the other is going one step further by using the Eliza Effect to create the illusion that there is no fictional element to it. It is like a magician leading the attention of the viewer away from the trick, but even when we know about the trickery involved, we so desperately want to believe that magic is real.

## Attention is all you need

While symbolic NLP methods have been successful in some applications (such as simple chatbots and question-answering systems), they have obvious limitations when it comes to handling ambiguity and nuances in language. As a result, more recent approaches to NLP have focused on machine learning techniques that allow computers to learn from large amounts of data without relying on pre-defined rules or ontologies.

The latest invention of this is the transformer architecture, which powers language models such as GPT (Generative Pre-trained Transformer). The transformer architecture was originally developed to solve language translation tasks in 2017.[^6] In short, it takes sequential data like a string of words as an input and, after a conditioning loop, is able to predict the next likely data point in the sequence. 
More specifically the Transformer architecture described in the paper "Attention is all you need" consists of an encoder that only receives input from the source language, and the decoder which is conditioned on the translation language. 

The dataset is first divided into sub-word tokens that are commonly used. These tokens are essentially a collection of numbers that represent various parts of the original text, such as common words like 'hello', smaller fragments like 'lo', and even punctuation marks and individual letters. This helps to break down the text into manageable units for further analysis and processing.

The input to the encoder consists of a sequence of tokens in the source language, which are transformed into a sequence of hidden representations. Each of these hidden representations captures information as vectors in a high-dimensional space about the corresponding input token and its relationship to the other tokens in the sequence.
The decoder, on the other hand, receives input from both the encoder and the previously generated tokens in the target language. The decoder's output is a probability distribution over the target language vocabulary, which is used to generate the next token in the translation.

Together, these two components form an end-to-end translation system that can learn to translate between any two languages given enough data. The conditioning process involves optimizing various parameters and hyperparameters using backpropagation and gradient descent algorithms to minimize the error between predicted translations and the ground truth from the dataset. 

One of the major advantages of transformers is their ability to handle long sequences of text efficiently. Traditional sequence-to-sequence models often struggle with longer sentences and paragraphs. Transformers overcome this limitation by using self-attention to capture dependencies between words, compared to previous techniques like Recurrent Neural Networks (RNNs), Convolutional Neural Networks (CNNs) or Long Short-Term Memory (LSTM). Self-attention allows the Transformer to weigh in all the words in the input sequence simultaneously and weigh the importance of each token in the context of the previous tokens. This allows the model to capture long-range dependencies between words, making it much more effective at handling longer sequences of text. 

Using only the self-attention mechanism also means that the process is highly parallelizable as each step can calculate all tokens and their context simultaneously, rather than sequentially calculating each token. This also means that the context window that these systems can attend to is pre-defined during the conditioning phase and is generally limited by the amount of GPU memory available.
Conditioning the system described in the paper on 36 million English and French sentence pairs took 3.5 days on 8 GPUs. This was considered fast in 2017 compared to alternative RNN and CNN based models. So both, the ability to weigh in long contexts of sequential data and efficiently train on high-end graphics cards made the Transformer architecture interesting for many applications, from translation, to text generation and even image generation. 

## Too dangerous to be released

What Transformers are capable appears to scale with the amount of input data. It seemed that the more data you use the better the system generalizes on a given task and the more robust the output becomes. Testing the limits of this, the company OpenAI 


- Prayers to GPT
## Computing Reality
- The Chiromancer

[^1]: @weizenbaumComputerPowerHuman1976
[^2]: Ibid.
[^3]: @hofstadterFluidConceptsCreative1995, p. 157
[^4]: See @JabberwackyThoughtsArtificial2006 & @Cleverbot
[^5]: @jacobSoftwareTricksPeople
[^6]: [@vaswaniAttentionAllYou2017]
# Annotation guidelines

## Background

Based on the methodology used for the family of \*QuAD datasets (SQuAD, KorQuAd, JaQuAD) and papers:

* SQuAD 1.1: https://arxiv.org/pdf/1606.05250.pdf
* SQuAD 2.0: https://arxiv.org/abs/2202.01764 
* JaQuAD: https://arxiv.org/abs/2202.01764
* GermanQuAD: https://arxiv.org/pdf/2104.12741.pdf

## Data collection

The data will be collected from two main sources: Norwegian Wikipedia articles and news articles.

### Wikipedia

### News

## Annotation environment

Haystack annotation tool: https://haystack.deepset.ai/components/annotation

Handbook: https://drive.google.com/file/d/1Wv3OIC0Z7ibHIzOm9Xw_r0gjTFmpl-33/view

## Question generation

Annotators should read the presented paragraph and formulate 5-10 questions for each paragraph.
The questions should be varied in terms of **answer type**:

* Object (*Hva*)
* Person (*Hvem/*)
* Dato/tid (*Når*)
* Location (*Hvor*)
* Manner (*Hvordan*)
* Cause (*Hvorfor*)
* Other: we also include wh-determiner *hvilke(n)* "which"

The questions should ideally also cover most of the text, however, if this is difficult to balance with the requirement to pose varied questions, a priority should be given to the latter requirement.

In general (from SQuAD instructions):
* Try not to simply repeat words or phrases from the text in your question, if possible, re-phrase. 
* You are encouraged to pose difficult quesstions as long as they are answerable based on the information in the paragraph.

### What is a good question?

(Taken from the GermanQuAD dataset guidelines:)

* A good question is a fact-seeking question that can be answered with an entity (person, organisation, location, etc.) or explanation. 
* A bad question is ambiguous,  incomprehensible, dependent on clear false presuppositions, opinion seeking, or not clearly a request for factual information.
* The question should ask about information present in the text passage given. It should not be answerable only with additional knowledge or your interpretation.
* Do not copy paste answer text into the question. Good questions do not contain the exact same words as the answer or the context around the answer. 
* The question should be a reformulation with synonyms and in different order as the context of the answer.
* Questions should be very precise natural questions you would ask when you want information from another person

## Answer generation

* The answer sshould be the shortest span in the original text that answers the question. 
* The answer should, however, also be a natural-sounding and grammatical response. E.g. for a question "When was Lennon born?" the answer text span should include the preposition "in" if "in 1940" is a span of the original text and not simply be "1940".
* Answers should always mark whole words, no subword answers
* Answers should not include span-final punctuation


### Question types

Care should be taken to vary the question types, below are some sources of variation with examples for inspiration (types are from JaQuAD dataset paper).

#### Syntactic variation  

> ... John Lennon was asassinated by Mark Chapman on ..
> 
> Q: Who assassinated John Lennon?

#### Lexical variation (synonymy)  

> ... John Lennon was asassinated by Mark Chapman on ..
> 
> Q: Who murdered John Lennon?

#### Lexical variation (world knowledge)  

> ... John Lennon was asassinated by Mark Chapman on December 8, 1980..
> 
> Q: When did John Lennon die?

#### Multiple sentence reasoning  

>... John Lennon was the world-famous guitarist of The Beatles. He wrote many songs, among them "All you need is love".

> Q: Who wrote "All you need is love"?


#### Logical reasoning


#### Ambiguous

## Examples

**Context**

The white swamphen (Porphyrio albus), also known as the Lord Howe swamphen, Lord Howe gallinule or white gallinule, is an extinct species of rail which lived on Lord Howe Island, east of Australia. It was first encountered when the crews of British ships visited the island between 1788 and 1790, and all contemporary accounts and illustrations were produced during this time. Today, two skins exist: the holotype in the Natural History Museum of Vienna, and another in Liverpool's World Museum. Although historical confusion has existed about the provenance of the specimens and the classification and anatomy of the bird, it is now thought to have been a distinct species endemic to Lord Howe Island and most similar to the Australasian swamphen. Subfossil bones have also been discovered since.

The white swamphen was 36 to 55 cm (14 to 22 in) long. Both known skins have mainly-white plumage, although the Liverpool specimen also has dispersed blue feathers. This is unlike other swamphens, but contemporary accounts indicate birds with all-white, all-blue, and mixed blue-and-white plumage. The chicks were black, becoming blue and then white as they aged. Although this has been interpreted as due to albinism, it may have been progressive greying in which feathers lose their pigment with age. The bird's bill, frontal shield and legs were red, and it had a claw (or spur) on its wing. Little was recorded about the white swamphen's behaviour. It may not have been flightless, but was probably a poor flier. This and its docility made the bird easy prey for visiting humans, who killed it with sticks. Reportedly once common, the species may have been hunted to extinction before 1834, when Lord Howe Island was settled.

**Questions and answers**

Q1: Where did the white swamphen live?  
A1: Lord Howe Island  
Type: Location  

Q2: When was the white swamphen first encountered?  
A2: between 1788 and 1790  
Type: Dato/tid  

Q3: What is the main plumage's color of two existing skins of the white swamphen?  
A3: white  
Type: Other (?)  

Q4: What was the plumage's color of white swamphen's chicks at the earliest age?  
A4: black  
Type: Other (?)  

Q5: With what did humans kill the white swamphen?  
A5: sticks  
Type: Object


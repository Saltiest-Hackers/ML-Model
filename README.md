# Hacker News Sentiment Analysis

## Data
-------
Data was sourced using a combination of the Hacker News API and two Google Big Query tables.
A script to generate the original data in its entirety is located in the data directory, however
the totality of posts is in the tens of millions and may take upwards of thirty hours to run.

## Model
--------
The model currently used to analyze posts is VADER, a lexicon and rule based sentiment
analysis tool - you can find out more about VADER [here](https://github.com/cjhutto/vaderSentiment)

Different analysis of the model results were performed and used to establish a 
roadmap for a future model currently in production. This model will use an ensemble
of sentiment analysis from different models including VADER, TextBlob and doc2vec
trained on the Google News trainining set. Using these tools, in addition to
opinion survey, we plan to create a training set from the Hacker News comment,
which will be used to fine-tune a state of the art model, specifically for
sentiment analysis on the platform.

You can see some of the differences between "salty" and "sweet" comments by 
looking at the word clouds generated when segregating the comments based on their
sentiment scores.

### Positive Comments

[pos](assets/pos-not-in-neg.png)


### Negative Comments

[neg](assets/bad-not-in-good.png)

## Architecture
---------------
### Current

Currently a simple architecture serves the API with plans to upgrade
[current](assets/CurrentArch.png)



### Planned

[planned](assets/plannedarchitecture.png)


## Database
-----------

We have provided a databse schema for the current database

[dbdiagram](assets/tabediagram.png)


## Roadmap
----------

[x] Analyze differences in comments to determine what exactly is saltiness

[x] Test different configurations of pretrained models to determine settings
needed for collection of training data

[x] Begin collection of training data

[ ] Hand label training set

[ ] Fine tune state of the art model for analysis of Hacker News


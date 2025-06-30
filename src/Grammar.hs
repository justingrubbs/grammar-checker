module Grammar where

data Case
  = Capitalized
  | Lowercase
  | FirstLetter
  | Mix
  deriving (Show)

-- https://www.grammarly.com/blog/parts-of-speech/the-8-parts-of-speech/
data PartOfSpeech
  = Noun NounType -- person, place, thing, or idea
  | Pronoun PronounType -- takes place of noun
  | Adjective AdjectiveType -- describes or modifies noun or pronoun
  | Verb VerbForm -- describes action, occurence, or state of being
  | Adverb -- describes or modifies an adjective, verb, another adverb, or whole sentence
  | Preposition -- shows relationships between noun or pronoun and other words in sentence
  | Conjunction ConjunctionType -- connects different parts of a sentence to express multiple ideas
  | Interjection -- expresses emotion, gives commands, or serves as a greeting, usually standing alone in a sentence
  | Determiner -- specifies a noun (e.g., "a", "the", "this")
  deriving (Show)

data NounType
  = Common
  | Proper
  deriving (Show)

data AdjectiveType -- in this order
  = Opinion
  | Size
  | Age
  | Shape
  | Color
  | Origin
  | Material
  | Purpose
  deriving (Show)

data ConjunctionType
  = Coordinating
  | Subordinating
  | Correlative
  deriving (Show)

data PronounType
  = Subjective
  | Objective
  | Possessive
  | Demonstrative
  deriving (Show)

-- https://web.mit.edu/course/21/21.guide/v-form.htm#:~:text=Verbs%20can%20be%20said%20to,more%20unpredictable%20or%20irregular%20forms.
-- https://www.grammarly.com/blog/frequently-asked-questions/what-are-the-verb-forms/
data VerbForm
  = Base -- "study"
  | PresentTense -- "studies"
  | PastTense -- "studied"
  | PresentParticiple -- "studying"
  | PastParticiple -- "studied"
  deriving (Show)

data SentenceStructure
  = SSubject SubjectTense
  | SVerb VerbTense
  | SObject
  deriving (Show)

data SubjectTense
  = Singular
  | Plural
  deriving (Show)

data VerbTense
  = Past
  | Present
  | Future
  deriving (Show)

data Clause
  = Independent
  | Dependent
  deriving (Show)

data Sentence
  = Simple
  | Compound
  | Complex
  | CompoundComplex
  deriving (Show)

-- https://www.grammarly.com/punctuation
data Punctuation
  = Comma
  | Period
  | Colon
  | Ellipsis
  | Semicolon
  | Apostrophe
  | Hyphen
  | Dash
  | QuotationMark
  | QuestionMark
  | ExclamationPoint
  | Slash
  | Parentheses
  | Brackets
  deriving (Show)
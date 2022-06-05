module HTTPurple.Json.Argonaut where

import Prelude

import Data.Argonaut (class DecodeJson, decodeJson, parseJson, printJsonDecodeError)
import Data.Bifunctor (lmap)
import Data.Either (Either)
import HTTPurple.Json (JsonDecoder(..))

jsonDecoder :: forall json. DecodeJson json => JsonDecoder json
jsonDecoder = JsonDecoder fromJsonString
  where
  fromJsonString :: String -> Either String json
  fromJsonString = (parseJson >=> decodeJson) >>> lmap printJsonDecodeError

module HTTPurple.Json.Argonaut where

import Prelude

import Data.Argonaut (class DecodeJson, class EncodeJson, JsonDecodeError, decodeJson, encodeJson, parseJson, stringify)
import Data.Either (Either)
import HTTPurple.Json (JsonDecoder(..), JsonEncoder(..))

jsonDecoder :: forall json. DecodeJson json => JsonDecoder JsonDecodeError json
jsonDecoder = JsonDecoder fromJsonString
  where
  fromJsonString :: String -> Either JsonDecodeError json
  fromJsonString = parseJson >=> decodeJson

jsonEncoder :: forall json. EncodeJson json => JsonEncoder json
jsonEncoder = JsonEncoder toJsonString
  where
  toJsonString :: json -> String
  toJsonString = encodeJson >>> stringify

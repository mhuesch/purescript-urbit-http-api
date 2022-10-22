module Internal where

import Prelude

import Data.Argonaut.Core (Json)
import Data.Argonaut.Decode.Class (decodeJson)
import Data.Argonaut.Decode.Decoders (decodeString)
import Data.Argonaut.Decode.Error (JsonDecodeError)
import Data.Argonaut.Parser (jsonParser)
import Data.Either (Either)
import Data.Maybe (Maybe)
import Effect (Effect)

foreign import data Urbit :: Type

foreign import urbitAuthenticate :: String -> String -> String -> Boolean -> Effect Urbit

foreign import urbitCookie :: Urbit -> Json

urbitCookie' :: Urbit -> Either JsonDecodeError String
urbitCookie' = decodeString <<< urbitCookie

-- decodeString :: Json -> Either String String
-- decodeString item = do
--   jsonString <- decodeJson item
--   j          <- jsonParser jsonString
--   decodeJson j

module Internal where

import Prelude

import Effect (Effect)

foreign import data Urbit :: Type

foreign import urbitAuthenticate :: String -> String -> String -> Boolean -> Effect Urbit

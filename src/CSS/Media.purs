module CSS.Media where

import Prelude

import Data.Maybe (Maybe(..))

import CSS.Property (value)
import CSS.Size (LengthUnit, Size)
import CSS.String (fromString)
import CSS.Stylesheet (Feature(..), MediaType(..))

screen :: MediaType
screen = MediaType $ fromString "screen"

minWidth :: Size LengthUnit -> Feature
minWidth = Feature "min-width" <<< Just <<< value

maxWidth :: Size LengthUnit -> Feature
maxWidth = Feature "max-width" <<< Just <<< value

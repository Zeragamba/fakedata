{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE OverloadedStrings #-}

module Faker.Game.Zelda where

import Data.Text
import Faker
import Faker.Internal
import Faker.Provider.Zelda
import Faker.TH

$(generateFakeField "zelda" "games")

$(generateFakeField "zelda" "characters")

$(generateFakeField "zelda" "locations")

$(generateFakeField "zelda" "items")

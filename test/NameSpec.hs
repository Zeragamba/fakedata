{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE OverloadedStrings #-}

module NameSpec where

import Control.Monad.Catch
import Control.Monad.IO.Class
import qualified Data.Map as M
import Data.Text hiding (all, map)
import qualified Data.Text as T
import qualified Data.Text.IO as TIO
import Data.Vector (Vector)
import qualified Data.Vector as V
import Faker
import Faker.Name
import Test.Hspec

isText :: Text -> Bool
isText x = T.length x >= 1

spec :: Spec
spec = do
  describe "Faker Generate for Name" $ do
    it "name" $ do
      item <- generate name
      item `shouldSatisfy` isText
    it "first_name" $ do
      item <- generate firstName
      item `shouldSatisfy` isText
    it "last_name" $ do
      item <- generate lastName
      item `shouldSatisfy` isText
    it "name_with_middle" $ do
      item <- generate nameWithMiddle
      item `shouldSatisfy` isText
    it "male_first_name" $ do
      item <- generate maleFirstName
      item `shouldSatisfy` isText
    it "female_first_name" $ do
      item <- generate femaleFirstName
      item `shouldSatisfy` isText

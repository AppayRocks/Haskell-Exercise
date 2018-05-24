{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell   #-}
module Handler.Mirror where

import qualified Data.Text as T
import           Import

getMirrorR :: Handler Html
getMirrorR = defaultLayout $(widgetFile "mirror")

postMirrorR :: Handler Html
postMirrorR = do
    postedText <- runInputPost $ ireq textField "content"
    defaultLayout $(widgetFile "posted")

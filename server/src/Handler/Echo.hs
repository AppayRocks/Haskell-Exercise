{-# LANGUAGE QuasiQuotes #-}
module Handler.Echo where

import Import

getEchoR :: String -> Handler Html
-- getEchoR string = error "Not yet implemented: getEchoR"
getEchoR theText = defaultLayout [whamlet|<h1>#{theText}|]

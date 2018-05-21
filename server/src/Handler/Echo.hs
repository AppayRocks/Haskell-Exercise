-- {-# LANGUAGE QuasiQuotes #-} -- only used for "[whamlet|<h1>#{theText}|]" syntax
{-# LANGUAGE TemplateHaskell #-} -- used for $(widgetFile "echo") syntax
module Handler.Echo where

import Import

getEchoR :: Text -> Handler Html
-- getEchoR string = error "Not yet implemented: getEchoR"
-- getEchoR theText = defaultLayout [whamlet|<h1>#{theText}|]
getEchoR theText = defaultLayout $(widgetFile "echo")

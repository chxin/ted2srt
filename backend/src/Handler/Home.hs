module Handler.Home where

import           Handler.Bundle
import           Lucid
import           RIO
import           Types

getHomeH :: AppM (Html ())
getHomeH = do
  bundle <- includeBundle HomeBundle
  pure $ doctypehtml_ $ do
    head_ $ do
      meta_ [charset_ "utf-8"]
      meta_ [name_ "viewport"
            ,content_ "width=device-width, initial-scale=1"]
    body_ $ do
      bundle

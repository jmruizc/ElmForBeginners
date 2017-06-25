module Main exposing (..)

import Html
import String
import List


(~=) a b =
    String.left 1 a == String.left 1 b


wordCount sentence =
    -- List.length (String.split " " sentence)
    String.words >> List.length


main =
    "Jose Ruiz Cortes"
        |> wordCount
        |> toString
        |> Html.text

module Helper exposing (..)

import Html exposing (Html)



-- Ejercicios


add2 : Int -> Int -> Int
add2 int1 int2 =
    int1 + int2


add3 : Float -> Float -> Float -> Float
add3 int1 int2 int3 =
    int1 + int2 + int3


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc int1 int2 operator =
    operator int1 int2



-- Records


lang : List { name : String, releaseYear : Int, currentVersion : String }
lang =
    [ { name = "elm"
      , releaseYear = 2012
      , currentVersion = "0.19.1"
      }
    , { name = "javascript"
      , releaseYear = 1995
      , currentVersion = "ECMAScript 2025"
      }
    ]


languageNames : List { name : String, releaseYear : Int, currentVersion : String } -> List String
languageNames inData =
    List.map .name inData


user : List { name : String, uType : String }
user =
    [ { name = "Roberto"
      , uType = "Student"
      }
    , { name = "Mitsiu"
      , uType = "Professor"
      }
    ]


onlyStudents : List { name : String, uType : String } -> List String
onlyStudents inData =
    List.map
        (\u ->
            case u.uType of
                "Student" ->
                    u.name

                "Professor" ->
                    ""

                _ ->
                    ""
        )
        inData


type alias Videogame =
    { title : String, releaseYear : Int, available : Bool, downloads : Int, genres : List String }


videogames : List Videogame
videogames =
    [ { title = "Control"
      , releaseYear = 2019
      , available = True
      , downloads = 450000
      , genres = [ "Action", "Shooter" ]
      }
    , { title = "Ocarina of Time"
      , releaseYear = 1998
      , available = True
      , downloads = 1200000
      , genres = [ "Action", "Adventure" ]
      }
    ]


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres games =
    List.map (\g -> g.genres) games


type alias Computer =
    { ram : String, model : String, brand : String, screenSize : String }


myLaptop : Computer
myLaptop =
    { ram = "16GB"
    , model = "Inspiron 15"
    , brand = "Dell"
    , screenSize = "15.6 pulgadas"
    }


main : Html.Html msg
main =
    Html.div []
        [ Html.h1 [] [ Html.text "My laptop" ] 
        , Html.div []
            [ Html.ul []
                [ Html.li [] [ Html.text ("Marca: " ++ myLaptop.brand) ]      
                , Html.li [] [ Html.text ("Modelo: " ++ myLaptop.model) ]     
                , Html.li [] [ Html.text ("Ram: " ++ myLaptop.ram) ]   
                , Html.li [] [ Html.text ("Pulgadas: " ++ myLaptop.screenSize) ]
                ]
            ]
        ]

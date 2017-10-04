module samplefunctions where
    getClass_ex :: Int -> String
    getClass_ex n = case n of
        5 -> "Kindergarten"
        6 -> "School"
        _ -> "Go away"
<?php

function deb($data, $stop = 1) {
    var_dump($data);
if ($stop) {die;}
}



function structure_to_tree($unstructured_arr, $id = 0, $data = null)
{
    if ($unstructured_arr) {
        $arr = [];
        foreach ($unstructured_arr as $row) {
            if ($row['id_parent_comment'] == $id) {
                $arr[$row['id_comment']] = $row;
                $arr[$row['id_comment']]['childs'] = structure_to_tree($unstructured_arr, $row['id_comment'], $data);
            }
        }
        if (count($arr)) {
            return $arr;
        } else {
            return null;
        }

    } else {
        return null;
    }
}

function structure_to_line($unstructured_arr, $id = 0, $nested_level = 0)
{
    if ($unstructured_arr) {
        $arr = [];
        foreach ($unstructured_arr as $row) {
            if ($row['id_parent_comment'] == $id) {
                $row['nested_level'] = $nested_level;
                $arr[] = $row;
                $arr_childs = structure_to_line($unstructured_arr, $row['id_comment'], $nested_level + 1);
                if ($arr_childs) {
                    foreach ($arr_childs as $row_child) {
                        $arr[] = $row_child;
                    }
                }
            }
        }
        if (count($arr)) {
            return $arr;
        } else {
            return null;
        }

    } else {
        return null;
    }
}



//function comments_echo($comm_arr, $data = null)
//{
//    foreach ($comm_arr as $row) {
//        echo $row['text'] . '</br></br>';
//        if ($row['childs']) {
//            comments_echo($row['childs'], $data);
//        }
//    }
//}
<?php

function deb($data, $stop = 1) {
    var_dump($data);
if ($stop) {die;}
}



//function structure_to_tree($unstructured_arr, $id = 0, $data = null)
//{
//    if ($unstructured_arr) {
//        $arr = [];
//        foreach ($unstructured_arr as $row) {
//            if ($row['id_parent_comment'] == $id) {
//                $arr[$row['id_comment']] = $row;
//                $arr[$row['id_comment']]['childs'] = structure_to_tree($unstructured_arr, $row['id_comment'], $data);
//            }
//        }
//        if (count($arr)) {
//            return $arr;
//        } else {
//            return null;
//        }
//
//    } else {
//        return null;
//    }
//}



function structure_to_line($unstructured_arr, $options = ['begin_id' => 0, 'nested_level' => 0, 'field_id' => 'id', 'field_id_parent' => 'id_parent' ] )
{
    if ($unstructured_arr) {
        $arr = [];
        foreach ($unstructured_arr as $row) {
            if ($row[$options['field_id_parent']] == $options['begin_id'] ) {
                $row['nested_level'] = $options['nested_level'];
                $arr[] = $row;
                $new_options = $options ;
                $new_options['begin_id'] = $row[$options['field_id']];
                $new_options['nested_level'] = $options['nested_level'] + 1 ;
                $arr_childs = structure_to_line($unstructured_arr, $new_options );
                if ($arr_childs) {
                    foreach ($arr_childs as $row_child) {
                        $arr[] = $row_child;
                    }
                }
            }
        }
        return $arr;

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
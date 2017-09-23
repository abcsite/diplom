<?php

class Article_view extends Model
{

    public function getById($id)
    {
        $id = (int)$id;
        $sql = "select * from articles where id = '{$id}' limit 1";
        $result = $this->db->query($sql);
        return isset($result[0]) ? $result[0] : null;
    }

    public function getCommentsByArticleId( $id_article = 1)
    {
        $id = (int)$id;
        
        $sql = "select * from comments JOIN users ON id = id_user AND id_article = '{$id_article}'  ";
        $result = $this->db->query($sql);
        return $result ;
    }

    public function getCommentById( $id_comment )
    {
        $id_comment = (int)$id_comment;

        $sql = "select * from comments where id_comment = '{$id_comment}'  ";
        $result = $this->db->query($sql);
        return isset($result[0]) ? $result[0] : null ;
    }


    public function getImgsByArticleId($id)
    {
        $id = (int)$id;
        $sql = "select * from images_of_article where id_article = '{$id}' order by id ";
        $result = $this->db->query($sql);
        return $result;
    }
    
    public function getUserByLogin($login) {
        $login = $this->db->escape($login);
        $sql = "select * from users where login = '{$login}' limit 1";
        $result = $this->db->query($sql);
        if ( isset( $result[0]) ) {
            return $result[0];
        }
        return false;
    }

    public function comment_save($data, $comment_id = null)
    {
        if (!isset($data['text']) || !isset($data['id_parent_comment']) || !isset($data['id_user']) || !isset($data['id_article'])) {
            return false;
        }

        $comment_id = (int)$comment_id;
        $parent_id = (int)$data['id_parent_comment'];
        $user_id = (int)$data['id_user'];
        $article_id = (int)$data['id_article'];
        $text = $this->db->escape($data['text']);
        $date = $this->db->escape($data['date']);
        $like_ok = $this->db->escape($data['like_ok']);

        if (!$comment_id) {  // Add new record
            $date = date("Y-m-d H:i:s");

            $sql = "
                insert into comments
                  set id_parent_comment = '{$parent_id}',
                      id_user = '{$user_id}',
                      id_article = '{$article_id}',
                      text = '{$text}',
                      date = '{$date}',
                      like_ok = ''
            ";

        } else {

            $sql = "
                update comments
                  set id_parent_comment = '{$parent_id}',
                      id_user = '{$user_id}',
                      id_article = '{$article_id}',
                      text = '{$text}',
                      like_ok = '{$like_ok}'
                  where id_comment = '{$comment_id}'
            ";
        }

        return $this->db->query($sql);
    }




}



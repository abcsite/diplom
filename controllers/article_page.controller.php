<?php

class Article_pageController extends Controller
{
    public function __construct($data = array())
    {
        parent::__construct($data);
        $this->model = new Article_view();
    }


    public function view()
    {
        if (isset($this->params[0])) {
            $result = $this->model->getById($this->params[0]);
            if ($result) {
                if (Session::get('role') != 'admin' && $result['is_published'] == '0') {
                    Session::setFlash('This page does not exist.');
                } else {
                    $this->data['article_page'] = $result;
                    $tags = explode(',', $result['tags']);
                    $this->data['article_page']['tags'] = $tags;

                    $this->data['article_images'] = $this->model->getImgsByArticleId($this->params[0]);

                    if (Session::get('login')) {
                        $login = Session::get('login');
                        $user = $this->model->getUserByLogin($login);
                        $this->data['user'] = $user;
                    } else {
                        $this->data['user'] = null;
                    }
                }
            }

        } else {
            Session::setFlash('This page does not exist.');
        }
    }


    public function admin_view()
    {
        $this->view();
        
        return VIEWS_PATH . DS . 'article_page' . DS . 'view.html' ;
    }



    public function comments_get_ajax()
    {
        if (Session::get('role') === 'admin') {
            $comments = $this->model->getCommentsByArticleId($this->params[0], false);
        } else {
            $comments = $this->model->getCommentsByArticleId($this->params[0], true);
        }

        $comments_line = structure_to_line($comments, $options = ['begin_id' => 0, 'nested_level' => 0, 'field_id' => 'id_comment', 'field_id_parent' => 'id_parent_comment' ]);
        if ($comments_line) {
            foreach ($comments_line as $key => $row) {
                if (!$row['date']) {
                    $comments_line[$key]['date'] = '';
                }
            }
        }

        echo(json_encode($comments_line));
        die;
    }

    
    public function comment_add_ajax()
    {
        if (Session::get('role')) {
            if (isset($_POST['text']) && isset($_POST['id_comment']) && isset($_POST['id_user']) && isset($_POST['id_article'])) {
                $result = $this->model->comment_save($_POST);

                $this->comments_get_ajax();
            }
            die;
        }
    }

    public function admin_comment_edit_ajax()
    {
        if (Session::get('role')) {
            if ( isset($_POST['text']) && isset($_POST['id_comment']) ) {
                $result = $this->model->comment_save($_POST, $_POST['id_comment'] );

                $this->comments_get_ajax();
            }
            die;
        }
    }

    public function comment_like_ajax()
    {
        if (Session::get('role')) {
            if (isset($this->params[0]) && isset($this->params[1])) {
                $like = $this->model->getLike($this->params[0], $this->params[1]);

                if (!$like) {
                    $result = $this->model->addLike($this->params[0], $this->params[1]);

                    if ($result) {
                        echo 1;
                        die;
                    }
                }
            }
            die;
        }
    }

    public function admin_comment_publish_ajax()
    {
        if (isset($this->params[1]) ) {

            $comments = $this->model->getCommentsByArticleId($this->params[0], false);
            $comments_line = structure_to_line($comments, $options = ['begin_id' => $this->params[1], 'nested_level' => 0, 'field_id' => 'id_comment', 'field_id_parent' => 'id_parent_comment' ]);
            $comments_id = [];
            $comments_id[] = $this->params[1];
            if (count($comments_line)) {
                foreach ($comments_line as $key => $row) {
                    $comments_id[] = $row['id_comment'];
                }
            }

            $this->model->setPublishComment($comments_id, 1);
            $this->comments_get_ajax();
        }
        die;
    }

    public function admin_comment_hide_ajax()
    {
        if (isset($this->params[1]) ) {
            $comments = $this->model->getCommentsByArticleId($this->params[0], false);
            $comments_line = structure_to_line($comments, $options = ['begin_id' => $this->params[1], 'nested_level' => 0, 'field_id' => 'id_comment', 'field_id_parent' => 'id_parent_comment' ]);
            $comments_id = [];
            $comments_id[] = $this->params[1];
            if (count($comments_line)) {
                foreach ($comments_line as $key => $row) {
                    $comments_id[] = $row['id_comment'];
                }
            }

            $this->model->setPublishComment($comments_id, 0);
            $this->comments_get_ajax();
        }
        die;
    }

    public function admin_comment_delete_ajax()
    {
        if (isset($this->params[1]) ) {

            $comments = $this->model->getCommentsByArticleId($this->params[0], false);
            $comments_line = structure_to_line($comments, $options = ['begin_id' => $this->params[1], 'nested_level' => 0, 'field_id' => 'id_comment', 'field_id_parent' => 'id_parent_comment' ]);
            $comments_id = [];
            $comments_id[] = $this->params[1];
            if (count($comments_line)) {
                foreach ($comments_line as $key => $row) {
                    $comments_id[] = $row['id_comment'];
                }
            }

            $this->model->deleteComments($comments_id);
            $this->comments_get_ajax();
        }
        die;
    }

}




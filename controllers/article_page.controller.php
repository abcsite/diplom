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
        $params = App::getRouter()->getParams();

        if (isset($this->params[0])) {
            $result = $this->model->getById($this->params[0]);
//            var_dump($result['is_published']);die;
            if ($result) {
                if (Session::get('role') != 'admin' && $result['is_published'] == '0') {
                    Session::setFlash('This page does not exist.');
                } else {
                    $this->data['article_page'] = $result;
                    $tags = explode(',', $result['tags']);
                    $this->data['article_page']['tags'] = $tags;

                    $this->data['article_images'] = $this->model->getImgsByArticleId($this->params[0]);

//                    $comments = $this->model->getCommentsByArticleId($this->params[0]);
//                    $comments_line = structure_to_line($comments, 0);
//                    $this->data['comments'] = $comments_line;

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



    public function comments_get_ajax()
    {
        $comments = $this->model->getCommentsByArticleId($this->params[0]);
        $comments_line = structure_to_line($comments, 0);

        foreach ($comments_line as $key => $row) {
            if ($row['like_ok'] != '') {
                $users_like = explode(',', $row['like_ok']);
                $comments_line[$key]['like_ok'] = count($users_like);
            } else {
                $comments_line[$key]['like_ok'] = '0';
            }
        }

        echo(json_encode($comments_line));
        die;
    }

    public function comment_add_ajax()
    {
        if (isset($_POST['text']) && isset($_POST['id_parent_comment']) && isset($_POST['id_user']) && isset($_POST['id_article'])) {
            $result = $this->model->comment_save($_POST);

            $this->comments_get_ajax();

        }
        die;

    }

    public function comment_like_ajax()
    {
        if (isset($this->params[0])) {
            $comment = $this->model->getCommentById($this->params[0]);

            if ($comment['like_ok']) {
                $users_like = explode(',', $comment['like_ok']);

                if ( is_array($users_like) && !in_array($this->params[1], $users_like)) {
                    $users_like[] = $this->params[1];
                    $users_like_str = implode(',', $users_like);
                    $comment['like_ok'] = $users_like_str ? $users_like_str : $comment['like_ok'] ;
                    $result = $this->model->comment_save($comment, $this->params[0]);
                    echo 1;
                } else {
                    echo 0;
                }

            } else {
                $comment['like_ok'] = $this->params[1];
                $result = $this->model->comment_save($comment, $this->params[0]);
                echo 1;
            }
        } else {
            echo 0;
        }
        die;
    }

}

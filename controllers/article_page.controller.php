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
            if (!$row['date']) {
                $users_like = explode(',', $row['like_ok']);
                $comments_line[$key]['date'] = '';
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

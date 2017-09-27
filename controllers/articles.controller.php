<?php

class ArticlesController extends Controller
{

    public function __construct($data = array())
    {
        parent::__construct($data);
        $this->model = new Article();
    }

    public function index()
    {
        $this->data['pages'] = $this->model->getList(true);
    }

    public function view()
    {
        $params = App::getRouter()->getParams();

        if (isset($params[0])) {
            $alias = strtolower($params[0]);
            $result = $this->model->getByAlias($alias, true);
//            var_dump($result);die;
            if ($result) {
                $this->data['page'] = $result;
            } else {
                Session::setFlash('This page does not exist.');
            }
        }
    }


    public function filter_ajax(){

        if (isset($this->params[0])) {

//            echo(json_encode($this->params[0]));
//            die;

            $tags = explode(' ',$this->params[0]);
            if($tags) {
                foreach ($tags as $tag) {
//                $tag = 'сша';
                    $filter['tags'][0] = $tag;
                    $article_to_count = $this->model->getArticlesFilter($filter, true);
                    foreach ($article_to_count as $row) {
                        $tags_str = $row['art_tags'];
                        $tags_arr = explode(',', $tags_str);
                        $res_tags = [];
                        foreach ($tags_arr as $word) {
                            if (strstr($word, $tag)) {
                                $art_id = $article_to_count['art_id'];
                                $arr = ['id' => $art_id, 'word' => $word];
                                $res_tags[] = $arr;
                            }
                        }
                    }

                }
            }
//            echo(json_encode($a));
            echo(json_encode($res_tags));
            die;
        }
    }
    
    public function filter_set() {

        if($_POST){



            if($_POST['categ']) {
                $filter['categ'] = $_POST['categ'];
//                $filter['categ'] = ['111111', '222222', '333333'];
            }
            if($_POST['tags']) {
                $filter['tags'] = $_POST['tags'];
            }

            $yyyy = $_POST['yyyy'];
            $mm = $_POST['mm'];
            $dd = $_POST['dd'];

            $date_min = $yyyy . '-' . $mm . '-' . $dd . ' ' . '00:00:00';
            $filter['date_min'] = $date_min ;

            $yyyy_ = $_POST['yyyy_'];
            $mm_ = $_POST['mm_'];
            $dd_ = $_POST['dd_'];

            $date_max = $yyyy_ . '-' . $mm_ . '-' . $dd_ . ' ' . '00:00:00' ;
            $filter['date_max'] = $date_max ;


            $itemsPerPage = 5;

            $filter['limit_start'] = null;
            $filter['limit_offset'] = null;
            $article_to_count = $this->model->getArticlesFilter($filter, true);
            $articles_count = count($article_to_count);

            $pagination = new Pagination($articles_count, $itemsPerPage, $currentPage);
            $pagin = $pagination->result;
            $filter['limit_start'] = $pagin['itemsStart'];
            $filter['limit_offset'] = $pagin['itemsEnd'] - $pagin['itemsStart'] + 1;

            $this->data['pagination'] = $pagin;



//
            $article_filtered = $this->model->getArticlesFilter($filter, true);

            $categories = $this->model->getCategoryByIds($_POST['categ']);
            $filter['categ'] = $categories;

            $this->data['articles'] = $article_filtered;
            $this->data['filter'] = $filter;


            $filter_arr = [
                'categ' => $_POST['categ'],
                'tags' => $_POST['tags'],
                'date_min' => $date_min,
                'date_max' => $date_max
            ] ;
            $filter_url = http_build_query($filter_arr);
            $this->data['filter_url'] = $filter_url;



            return  VIEWS_PATH . DS . 'articles' . DS . 'filter.html';
//            Router::redirect('/articles/filter/');
        }


        $this->data['filter']['categ_all'] = $this->model->getCategories();

        $tags_list_str = $this->model->getTagsAll();
        $res_tags = [];
        foreach ($tags_list_str as $row) {
            $tags_str = $row['tags'];
            $tags_arr = explode(',', $tags_str);
            foreach ($tags_arr as $word) {
                if ( !in_array( $word , $res_tags)){
                    $res_tags[] =  $word ;
                }
            }
        }
        $this->data['filter']['tags_all'] = $res_tags;

    }

    
    public function filter()
    {
        if ($_GET) {

            if ($_GET['to_page']) {
                $currentPage = $_GET['to_page'];
            } else {
                $currentPage = 1;
            }

            if ($_GET['filter_url']) {
                $filter = $_GET['filter_url'];
            } else {
                $filter = $_GET;
            }


            $filter['order_by'] = 'art_date';


            $itemsPerPage = 5;

            $filter['limit_start'] = null;
            $filter['limit_offset'] = null;
            $article_to_count = $this->model->getArticlesFilter($filter, true);
            $articles_count = count($article_to_count);

            $pagination = new Pagination($articles_count, $itemsPerPage, $currentPage);
            $pagin = $pagination->result;
            $filter['limit_start'] = $pagin['itemsStart'];
            $filter['limit_offset'] = $pagin['itemsEnd'] - $pagin['itemsStart'] + 1;

            $this->data['pagination'] = $pagin;


            $article_list = $this->model->getArticlesFilter($filter, true);

            if ($article_list) {
                $this->data['articles'] = $article_list;

                $categories = $this->model->getCategoryByIds($_GET['categ']);
                $this->data['filter']['categ'] = $categories;
                $this->data['filter']['tags'] = $_GET['tags'];
                $this->data['filter']['date_min'] = $_GET['date_min'];
                $this->data['filter']['date_max'] = $_GET['date_max'];

                $filter_arr = [
                    'categ' => $_GET['categ'],
                    'tags' => $_GET['tags'],
                    'date_min' => $_GET['date_min'],
                    'date_max' => $_GET['date_max']
                ] ;
                $filter_url = http_build_query($filter_arr);
                $this->data['filter_url'] = $filter_url;
            }
        }
    }





    public function admin_index()
    {
        $this->data['articles'] = $this->model->getList();
    }
    

    public function admin_edit()
    {

//        var_dump($_POST);
//        var_dump($_FILES);  die;

        if ($_POST) {
            $id = ($_POST['id']) ? $_POST['id'] : null;

            $result = $this->model->save($_POST, $id);

            if ($_FILES['images']) {
                $result = $result && $this->model->saveImages($_FILES['images'], $id);
            }

            if ($_FILES['image']) {
                $result = $result && $this->model->replaceImages($_FILES['image'], $id);
            }


            if (!$id) {
                $newId = $this->model->getMaxValue('articles', 'id');

                if ($_POST['categories']) {
                    foreach ($_POST['categories'] as $categ) {
                        $result = $result && $this->model->add_cat($categ, $newId);
                    }
                }
                Router::redirect('/admin/articles/edit/' . $newId . '/');
            }

//            if ( $result) {
//                Session::setFlash('Article was saved.');
//            } else {
//                Session::setFlash('Error.');
//            }

//            Router::redirect('/admin/articles/edit/');

        }

        if (isset($this->params[0])) {
            $this->data['article'] = $this->model->getById($this->params[0]);

            $this->data['article_images'] = $this->model->getImgsByArticleId($this->params[0]);

        } else {

//            Session::setFlash('Wrong article id.');
//            Router::redirect('/admin/articles/');
        }
    }

    public function admin_delete()
    {
        if (isset($this->params[0])) {

            $article_images = $this->model->getImgsByArticleId($this->params[0]);

            foreach ($article_images as $image) {
                $result = $result && $this->model->del_image($image['full_name']);
            }

            $result = $this->model->delete($this->params[0]);

            if ($result) {
                Session::setFlash('Article was deleted.');
            } else {
                Session::setFlash('Error.');
            }
        }
        Router::redirect('/admin/articles/');
    }

    public function admin_deleteimage()
    {
        if (isset($this->params[0])) {
            $result = $this->model->del_image($this->params[0]);
            if ($result) {
                Session::setFlash('Image was deleted.');
            } else {
                Session::setFlash('Error.');
            }
        }
        Router::redirect('/admin/articles/edit/' . $this->params[1]);
    }


    public function admin_categories_get_ajax()
    {
        $categories = $this->model->getCategories();
        $categories_line = structure_to_line($categories, $options = ['begin_id' => 0, 'nested_level' => 0, 'field_id' => 'id', 'field_id_parent' => 'parent_id' ]);

        if (isset($this->params[0])) {
            $article_categories = $this->model->getCategByArticleId($this->params[0]);
            $article_categories_id = array_column($article_categories, 'cat_id');
        } else {
            $article_categories_id = [];
        }

        $data['categories'] = $categories_line;
        $data['article_categories'] = $article_categories_id;
        echo(json_encode($data));
        die;
    }

    public function admin_add_categ_ajax()
    {
        if (isset($this->params[0]) && isset($this->params[1])) {
            $result = $this->model->add_cat($this->params[0], $this->params[1]);
            echo($result);
        }
        die;
    }

    public function admin_delete_categ_ajax()
    {
        if (isset($this->params[0]) && isset($this->params[1])) {
            $result = $this->model->delete_cat($this->params[0], $this->params[1]);
            echo($result);
        }
        die;
    }

}

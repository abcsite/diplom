<?php

class HomeController extends Controller
{

    public function __construct($data = array())
    {
        parent::__construct($data);  
        $this->model = new Home_page();
    }

    public function index()
    {
        $this->data['categ_articles'] = [];
        $categ_list = $this->model->getCategList(true);
        if ($categ_list) {
            
            foreach ($categ_list as $cat) {
                $this->data['categ_articles'][$cat['id']]['cat_name'] =  $cat['category_name'];
                $article_list = $this->model->getArticlesByCategId( $cat['id'] );
                
                foreach ($article_list as $art) {
                    $this->data['categ_articles'][$cat['id']]['articles'][$art['art_id']]['art_title'] =  $art['art_title'];
                    $this->data['categ_articles'][$cat['id']]['articles'][$art['art_id']]['art_id'] =  $art['art_id'];

                }
            }
        }
    }

    public function admin_index()
    {
        $this->index();
        return VIEWS_PATH.'/home/index.html';
    }



}

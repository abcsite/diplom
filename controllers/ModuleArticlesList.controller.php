<?php

class ModuleArticlesListController extends Controller
{

    public function __construct($data = array())
    {
        parent::__construct($data);
        $this->model = new ModulArticlesList();
    }

    public function get_articles_filter()
    {
        $filter = [];

        if ($this->data['filter']['to_page']) {
            $currentPage = $this->data['filter']['to_page'];
        } else {
            $currentPage = 1;
        }

        if ($this->data['filter']['filter_url']) {
            $filter = $this->data['filter']['filter_url'];
        } else {
            $filter = $this->data['filter'];

            $filter_url_arr = [
                'categ' => $this->data['filter']['categ'],
                'tags' => $this->data['filter']['tags'],
                'date_min' => $this->data['filter']['date_min'],
                'date_max' => $this->data['filter']['date_max']
            ];
            $filter_url = http_build_query($filter_url_arr);
            $this->data['filter']['filter_url'] = $filter_url;
        }

        if ($this->data['filter']['itemsPerPage']) {
            $itemsPerPage = $this->data['filter']['itemsPerPage'];
        } else {
            $itemsPerPage = Config::get('pagination_count_per_page');
        }

        if ($this->data['filter']['limit_count'] && $this->data['filter']['limit_offset'])  {
            $filter['limit_count'] = $this->data['filter']['limit_count'];
            $filter['limit_offset'] = $this->data['filter']['limit_offset'];
        } else {
            $itemsPerPage = Config::get('pagination_count_per_page');

            $article_to_count = $this->model->getArticlesFilter($filter, true);
            $articles_count = count($article_to_count);

            $pagination = new Pagination($articles_count, $itemsPerPage, $currentPage);
            $pagin = $pagination->result;

            $filter['limit_count'] = $pagin['itemsEnd'] - $pagin['itemsStart'] + 1;
            $filter['limit_offset'] = $pagin['itemsStart'] - 1;

            $this->data['pagination'] = $pagin;
        }

        $article_list = $this->model->getArticlesFilter($filter, true);

        if ($article_list) {
            $this->data['articles'] = $article_list;

            $categories = $this->model->getCategoryByIds($this->data['filter']['categ']);
            $this->data['filter']['categ'] = $categories;
        }
       
        return $this->data;
    }


    public function get_view($data = null) {

        if (isset($data) ) {
            $view_data = $data;
        } else {
            $view_data = $this->get_articles_filter();
        }
        
        $view_path = VIEWS_PATH . DS . 'modules' . DS . 'articlesList.html';
        $view_object = new View( $view_data, $view_path);
        $content = $view_object->render();

        return $content;

    }


}

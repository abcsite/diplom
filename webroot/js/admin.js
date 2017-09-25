$(document).ready(function () {

    $online = $('#online');
    $visited = $('#visited');

    time_id = setInterval(function () {
        rand = Math.ceil(Math.random() * 5);
        $online.html(rand);
        visited = rand + parseInt($visited.html());
        $visited.html(visited);
    }, 3000);

    // time_subscrib = setTimeout(function () {
    //     popupSubscrib();
    // }, 15000);

    slider();

    categoriesGet();

    //
    // $(window).unload(function(){
    //     alert("Пока, пользователь!");
    // });

})


function categoriesGet() {

    $categories_wrapp = $('#categories');
    $category_base_element = $('#category_base');

    // var user_id = $('#user_id').attr('data_user_id');
    // var article_id = $('#article_id').attr('data_article_id');

    var data = {};
    var uri = '/admin/categories/categories_get_ajax/';
    myAjax(uri, data, categoriesReturn, categoriesReturnErr);


    function categoriesReturn(data) {
        if (data) {
            $('tr[data_base_element="no_base_element"]').remove();
        }

        var categories = JSON.parse(data);
        var categoriesLength = categories.length;

        for (i = 0; i < categoriesLength; i++) {

            $row = categories[i];

            $categ_clone = $category_base_element.clone();

            $categ_clone.attr('data_base_element', 'no_base_element');
            $categ_clone.css('display', 'block');
            $categ_clone.find('.categ_text').css('padding-left', 30 * $row['nested_level'] + 'px');
            $categ_clone.attr('id', $row['id']);
            $categ_clone.attr('data_parent_id', $row['parent_id']);
            $categ_clone.find('.categ_id').text($row['id']);
            $categ_clone.find('.categ_text').text($row['category_name']);

            $categories_wrapp.append($categ_clone);
            // console.log(comments[i]['id_comment']);
        }

        $('.category .categ_add_subcat').on('click', function () {
            $this_row = $(this).parent().parent();
            $this_row.find('.categ_window').css('display', 'block');
        });

        $('.category .categ_close_window').on('click', function () {
            $this_row = $(this).parent().parent().parent();
            $this_row.find('.categ_window').css('display', 'none');
        });

        $('.category .categ_send_subcat').on('click', function () {
            $this_row = $(this).parent().parent().parent();
            var parent_id = $this_row.attr('id');
            var id = $this_row.find('.categ_input').attr('id');
            if (!id) {id = null}
            var text = $this_row.find('.categ_input').val();
            $this_row.find('.categ_input').val('');
            text = text.trim();
            
            
            
            if (text != '') {
                var data = {
                    'category_name': text,
                    'parent_id': parent_id,
                    'id': id
                };

                var uri = '/admin/categories/category_add_ajax/';
                myAjax(uri, data, categoriesReturn, categoriesReturnErr);
            }

        });


        $('.category .categ_edit').on('click', function () {
            $this_row = $(this).parent().parent();
            $this_row.find('.categ_window').css('display', 'block');
            var text = $this_row.find('.categ_text').text();
            $this_row.find('.categ_input').val(text);
            var id = $this_row.attr('id');
            $this_row.find('.categ_input').attr('id', id);
        });

        $('.category .categ_delete').on('click', function () {
            if (confirmDelete()) {
                $this_row = $(this).parent().parent();
                var id = $this_row.attr('id');
                var uri = '/admin/categories/category_delete_ajax/' + id + '/';

                myAjax(uri, data, categoriesReturn, categoriesReturnErr);
            }
        });

    }

    function categoriesReturnErr() {
        alert('Error');
    }

}


function confirmDelete() {

    if (confirm('Удалить этот пункт?')) {
        return true;
    } else {
        return false;
    }
}

function myAjax(uri, data, success, error) {
    // $(this).text("77777777777777777");
    // alert(event.target.innerHTML);
    $.ajax({
        url: uri,
        type: "POST",
        data: data,
        // dataType: "text",
        error: error,
        success: success
    })
}

function error() {
    alert('Error ajax');
}

// function categoryDel(uri) {
//     myAjax(uri, '', success, error);
//     function success(result) {
//         var res = JSON.parse(result);
//         if (res) {
//             $(this).parent().parent().hide();
//         }
//         return false;
//     }
// }

function updateCategoryByArticle(res) {
    res = JSON.parse(res);

    if (res[2] == 'add') {
        $('#cat_id_add' + res[0]).hide();
        $('#cat_id_del' + res[0]).show();
    } else {
        $('#cat_id_add' + res[0]).show();
        $('#cat_id_del' + res[0]).hide();
    }

}

function slider() {

    $img = $('.slider__item');

    i = 0;
    n = 7;
    id = setInterval(function () {
        $img.eq(i).fadeOut(3000);
        // rand = Math.ceil();
        i = (i + 1) % n;
        $img.eq(i).fadeIn(3000);

    }, 5000);


    $img.on('click', function () {
        $img.eq(1).hide(1000);
    });

}

function menuShow() {

    $popup = $('#subscribe');
    $btn = $('#subscr_btn');

    $popup.show(2000);

    $btn.on('click', function () {
        $popup.hide(1000);
    });

}


// function closeIt() {
//     alert('oooooo');
//     return "Пожалуйста, не закрывайте меня!";
// }
// window.onbeforeunload = closeIt;





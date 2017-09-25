$(document).ready(function () {
    $online = $('#online');
    $visited = $('#visited');

    time_id = setInterval(function () {
        rand = Math.ceil(Math.random() * 5);
        $online.html(rand);
        visited = rand + parseInt($visited.html());
        $visited.html(visited);
    }, 3000);

    slider();

    commentsGet();

      // time_subscrib = setTimeout(function () {
    //     popupSubscrib();
    // }, 15000);

})


function paginationTable() {
    // alert('11111111');

    $tab = $('#show_table_pagin');
    if ($tab.attr('data_show') == 'show') {
        $tab.hide(500);
        $tab.attr('data_show', '');
    } else {
        $tab.show(500);
        $tab.attr('data_show', 'show');
    }
}


function commentsGet() {

    $comments_wrapp = $('#comments');
    $comment_base_element = $('#comment_base');

    var user_id = $('#user_id').attr('data_user_id');
    var article_id = $('#article_id').attr('data_article_id');
    if (article_id) {
        var data = {};
        var uri = '/article_page/comments_get_ajax/' + article_id + '/';
        myAjax(uri, data, commentsReturn, commentsReturnErr);
    }

    function commentsReturn(data) {

        if (data) {
            $('div[data_base_element="no_base_element"]').remove();
        }

        var comments = JSON.parse(data);
        var commLength = comments.length;

        for (i = 0; i < commLength; i++) {

            $row = comments[i];

            $comm_clone = $comment_base_element.clone();

            $comm_clone.attr('data_base_element', 'no_base_element');
            $comm_clone.css('display', 'block');
            $comm_clone.css('padding-left', 30 * $row['nested_level'] + 'px');
            $comm_clone.attr('id', $row['id_comment']);
            $comm_clone.attr('data_parent_id', $row['id_parent_comment']);
            $comm_clone.find('.comm_login').text($row['login']);
            $comm_clone.find('.comm_date').text($row['date']);
            $comm_clone.find('.comm_like_count').text($row['like_count']);
            $comm_clone.find('.comm_text').text($row['text']);
            // $comm_clone.find('.comm_input').text($row['nested_level']);

            $comm_clone.find('.id_parent').text($row['id_parent_comment']);
            $comm_clone.find('.id').text($row['id_comment']);

            $comments_wrapp.append($comm_clone);
            // console.log(comments[i]['id_comment']);
        }

        $('.comment .comm_send_btn').on('click', function () {
            $this_div = $(this).parent();
            var id = $this_div.attr('id');
            var text = $this_div.find('.comm_input').val();
            $this_div.find('.comm_input').val('');
            text = text.trim();

            if (text != '') {
                var data = {
                    'text': text,
                    'id_parent_comment': id,
                    'id_user': user_id,
                    'id_article': article_id
                };

                var uri = '/article_page/comment_add_ajax/' + article_id + '/';
                myAjax(uri, data, commentsReturn, commentsReturnErr);
            }

        });

        $('.comment .comm_reply_btn').on('click', function () {
            $this_div = $(this).parent();
            var id = $this_div.attr('id');
            $this_div.find('.comm_input').css('display', 'block');
            $this_div.find('.comm_send_btn').css('display', 'inline-block');
            $this_div.find('.comm_reply_btn').css('display', 'none');
        });

        $('.comment .comm_like_btn').on('click', function () {
            $this_div = $(this).parent();
            var id = $this_div.attr('id');

            var data = {};
            var uri = '/article_page/comment_like_ajax/' + id + '/' + user_id + '/';
            myAjax(uri, data, commentLike, commentsReturnErr);

            function commentLike(data){
                var like_count = $this_div.find('.comm_like_count').text();
                like_count = parseInt(like_count);
                if (data == 1) {
                    $this_div.find('.comm_like_count').text( like_count + 1 );
                }
            }
        });

    }

    function commentsReturnErr() {
        alert('Error');
    }

}


function searchInput() {
    // alert(['11','22']);

    $inp = $('#inp_text');
    var text = $inp.val();
    text = text.trim();
    if (text == '') {
        searchReturn(null);
        return;
    }
    var uri = '/articles/filter_ajax/' + text + '/';

    myAjax(uri, text, searchReturn, searchReturnErr);

}
function searchReturn(data) {

    data = JSON.parse(data);
    // console.log(data);

    $tab = $('#search_list');

    if (data != null) {

        len = data.length;
        str = '';
        for (i = 0; i < len; i++) {
            str = str + '<a href="/articles/filter/?tags[]=' + data[i]['word'] + '" id="search_item' + (i + 1) + '" class="search_item">' + data[i]['word'] + '</a>';
        }
        // str = $(this).val();
        $tab.html(str);

    } else {
        $tab.html('');
    }
}

function searchReturnErr() {

    alert('Error Ajax');

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


function popupSubscrib() {

    $popup = $('#subscribe');
    $btn = $('#subscr_btn');

    $popup.show(2000);

    $btn.on('click', function () {
        $popup.hide(1000);
    });

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


// function closeIt()
// {
//     alert('oooooo');
//     return "Пожалуйста, не закрывайте меня!";
// }
// window.onbeforeunload = closeIt;





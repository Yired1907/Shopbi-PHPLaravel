$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});

// const APP_URL = `${window.location.protocol}//${window.location.hostname}/Shopbi`;// tạo đường dẫn

const APP_URL = `${window.appUrl}`;

function removeRow(id, url) {
    if (confirm('Bạn có chắc xóa luôn chứ ?')) {
        $.ajax({
            type: 'DELETE',
            datatype: 'JSON',
            data: { id },
            url: APP_URL + url,
            success: function (result) {
                if (result.error === false) {
                    alert(result.message);
                    location.reload();
                } else {
                    alert('Xóa lỗi vui lòng thử lại');
                }
            }
        })
    }
}


/*Upload File */
// $('#upload').change(function () {
//     const form = new FormData();
//     form.append('file', $(this)[0].files[0]);
//     console.log("asd",form.get("file"))
//     $.ajax({
//         processData: false,
//         contentType: false,
//         type: 'POST',
//         dataType: 'JSON',
//         data: form,
//         url: '/admin/upload/services',
//         success: function (results) {
//             if (results.error === false) {
//                 $('#image_show').html('<a href="' + results.url + '" target="_blank">' +
//                     '<img src="' + results.url + '" width="100px"></a>');

//                 $('#thumb').val(results.url);




//             } else {
//                 alert('Upload File Lỗi');
//             }
//         }
//     });
// });


//Upload  Image

const input = document.querySelectorAll('#upload')
const form = new FormData();
$(document).ready(function () {
    input.forEach(item => {
        item.addEventListener("change", (e) => {

            form.append('file', e.target.files[0]);

            $.ajax({
                processData: false,
                contentType: false,
                type: 'POST',
                dataType: 'JSON',
                data: form,
                url: APP_URL + `/admin/upload/services`,
                success: function (results) {

                    if (results.error === false) {
                        item.nextElementSibling.innerHTML = '<a href="' + results.url + '" target="_blank">' +
                            '<img src="' + results.url + '" width="100px"></a>';

                        // $("#thumb").val(results.url);
                        item.nextElementSibling.nextElementSibling.value = results.url
                    } else {
                        alert('Upload File Lỗi');
                    }
                }
            });
        })
    })
});



function loadMore() {
    const page = $('#page').val();
    $.ajax({
        type: 'POST',
        dataType: 'JSON',
        data: { page },
        url: APP_URL + '/services/load-product',
        success: function (result) {
            if (result.html !== '') {
                $('#loadProduct').append(result.html);
                $('#page').val(page + 1);
            } else {
                alert('Đã load xong Sản Phẩm');
                $('#button-loadMore').css('display', 'none');
            }
        }
    })
}

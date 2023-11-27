const redirectButton = document.getElementById('gioithieu');
var targetURL = 'home.jsp?_ijt=700t5b5udgjk4pvqr32o1e5fb5&_ij_reload=RELOAD_ON_SAVE#about';

// Chuyển hướng đến trang `home.jsp` bao gồm query parameters
// Thêm hàm xử lý sự kiện cho nút
redirectButton.addEventListener('click', function() {
    // Chuyển hướng tới đường dẫn của trang khác
    window.location.href = targetURL;
});

// window.onscroll = function() {
//     fixDivOnScroll();
// };
//
// function fixDivOnScroll() {
//     const fixedDiv = document.querySelector('.pull-left');
//     const scrollPosition = window.scrollY;
//
//     if (scrollPosition > 1000) { // Thay đổi giá trị này tùy thuộc vào chiều cao mà bạn muốn thẻ div cố định xuất hiện
//         fixedDiv.style.position = 'fixed';
//     } else {
//         fixedDiv.style.position = 'static';
//     }
// }
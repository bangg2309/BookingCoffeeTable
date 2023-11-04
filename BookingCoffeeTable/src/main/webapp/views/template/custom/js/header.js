const redirectButton = document.getElementById('gioithieu');
var targetURL = 'home.html?_ijt=700t5b5udgjk4pvqr32o1e5fb5&_ij_reload=RELOAD_ON_SAVE#about';

// Chuyển hướng đến trang `home.html` bao gồm query parameters
// Thêm hàm xử lý sự kiện cho nút
redirectButton.addEventListener('click', function() {
    // Chuyển hướng tới đường dẫn của trang khác
    window.location.href = targetURL;
});
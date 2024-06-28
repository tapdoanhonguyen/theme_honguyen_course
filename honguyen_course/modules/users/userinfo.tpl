<!-- BEGIN: main -->
<div class="user-info">
    <div class="user-info-list">
        <ul class="nv-list-item">
            <li class="active"><a href="/users/" title=""><i class="fa fa-user" aria-hidden="true"></i> Trang tài khoản</a></li>
            <li><a href="/order-list/" title=""><i class="fa fa-cart-plus" aria-hidden="true"></i> Đơn hàng</a></li>
            <li><a href="/users/editinfo/basic/" title=""><i class="fa fa-cog" aria-hidden="true"></i> Thiết lập tài khoản</a></li>
            <li><a href="/users/logout/" title=""><i class="fa fa-sign-out" aria-hidden="true"></i> Đăng xuất</a></li>
        </ul>
    </div>
    <div class="user-info-content padding-40">
        <p>Xin chào <strong>{USER.full_name}</strong> (Nếu không phải tài khoản của bạn? Hãy thoát ra và đăng nhập vào tài khoản của bạn).</p>
        <h2>{LANG.user_info}</h2>
        <ul class="nv-list-item xsm">
            <li><em class="fa fa-angle-right">&nbsp;</em> {LANG.account2}: <strong>{USER.username}</strong> ({USER.email})</li>
            <li><em class="fa fa-angle-right">&nbsp;</em> {LANG.current_login}: {USER.current_login}</li>
            <li><em class="fa fa-angle-right">&nbsp;</em> {LANG.ip}: {USER.current_ip}</li>
        </ul>
    </div>
</div>
<!-- END: main -->
<!-- BEGIN: main -->
<script>
window.fbAsyncInit = function() {
    FB.init({
        appId: '{CONFIG.facebookappid}',
        autoLogAppEvents: true,
        xfbml: true,
        version: 'v3.2'
    });
};
(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s);
    js.id = id;
    js.src = 'https://connect.facebook.net/{SDK_LANG}/sdk/xfbml.customerchat.js';
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
</script>
<div class="fb-customerchat"
  attribution=setup_tool
  page_id="{CONFIG.page_id}"
  logged_in_greeting="{CONFIG.logged_in_greeting}"
  logged_out_greeting="{CONFIG.logged_out_greeting}">
</div>
<!-- END: main -->

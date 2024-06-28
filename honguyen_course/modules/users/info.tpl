<!-- BEGIN: main -->
<link type="text/css" href="{NV_STATIC_URL}{NV_ASSETS_DIR}/js/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
<script type="text/javascript" src="{NV_STATIC_URL}{NV_ASSETS_DIR}/js/jquery-ui/jquery-ui.min.js"></script>
<script type="text/javascript" src="{NV_STATIC_URL}{NV_ASSETS_DIR}/js/language/jquery.ui.datepicker-{NV_LANG_INTERFACE}.js"></script>
<div class="user-info">
    <div class="user-info-list">
        <ul class="nv-list-item">
            <li><a href="/users/" title=""><i class="fa fa-user" aria-hidden="true"></i> Trang tài khoản</a></li>
            <li><a href="/order-list/" title=""><i class="fa fa-cart-plus" aria-hidden="true"></i> Đơn hàng</a></li>
            <li class="active"><a href="/users/editinfo/basic/" title=""><i class="fa fa-cog" aria-hidden="true"></i> Thiết lập tài khoản</a></li>
            <li><a href="/users/logout/" title=""><i class="fa fa-sign-out" aria-hidden="true"></i> Đăng xuất</a></li>
        </ul>
    </div>
    <div class="user-info-content padding-40">
        <div class="page">
            <ul class="users-menu nav nav-tabs margin-bottom">
                <li class="dropdown active" role="presentation">
                    <a id="myTabEl" href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown" aria-controls="funcList" aria-expanded="false"><span class="caret"></span></a>
                    <ul id="funcList" class="dropdown-menu" aria-labelledby="myTabEl">
                        <li class="{BASIC_ACTIVE}"><a data-toggle="tab" data-location="{EDITINFO_FORM}/basic" href="#edit_basic">{LANG.edit_basic}</a></li>
                        <!-- BEGIN: edit_username -->
                        <li class="{USERNAME_ACTIVE}"><a data-toggle="tab" data-location="{EDITINFO_FORM}/username" href="#edit_username">{LANG.edit_login}</a></li>
                        <!-- END: edit_username -->
                        <!-- BEGIN: edit_email -->
                        <li class="{EMAIL_ACTIVE}"><a data-toggle="tab" data-location="{EDITINFO_FORM}/email" href="#edit_email">{LANG.edit_email}</a></li>
                        <!-- END: edit_email -->
                        <!-- BEGIN: edit_password -->
                        <li class="{PASSWORD_ACTIVE}"><a data-toggle="tab" data-location="{EDITINFO_FORM}/password" href="#edit_password">{LANG.edit_password}</a></li>
                        <!-- END: edit_password -->
                        <!-- BEGIN: edit_question -->
                        <li class="{QUESTION_ACTIVE}"><a data-toggle="tab" data-location="{EDITINFO_FORM}/question" href="#edit_question">{LANG.edit_question}</a></li>
                        <!-- END: edit_question -->
                    </ul></li>
            </ul>
            <div class="tab-content margin-bottom-lg">
                <div id="edit_basic" class="well-lg tab-pane fade {TAB_BASIC_ACTIVE}">
                    <form action="{EDITINFO_FORM}/basic" method="post" role="form" class="form-horizontal" onsubmit="return reg_validForm(this);" autocomplete="off" novalidate>
                        <div class="nv-info margin-bottom" data-default="" style="display: none"></div>
                        <div class="form-detail">
                            <!-- BEGIN: name_show_0 -->
                            <!-- BEGIN: show_last_name-->
                            <div class="form-group">
                                <label for="last_name" class="control-label col-sm-7 col-md-6 text-normal">{FIELD.title}</label>
                                <div class="col-sm-13 col-md-12">
                                    <input type="text" class="form-control {FIELD.required} {FIELD.class}" placeholder="{FIELD.title}" value="{FIELD.value}" name="last_name" maxlength="{FIELD.max_length}" onkeypress="validErrorHidden(this);" data-mess=""<!-- BEGIN: data_callback--> data-callback="{CALLFUNC}" data-error="{ERRMESS}"<!-- END: data_callback-->>
                                </div>
                            </div>
                            <!-- END: show_last_name -->
                            <!-- BEGIN: show_first_name -->
                            <div class="form-group">
                                <label for="first_name" class="control-label col-sm-7 col-md-6 text-normal">{FIELD.title}</label>
                                <div class="col-sm-13 col-md-12">
                                    <input type="text" class="form-control {FIELD.required} {FIELD.class}" placeholder="{FIELD.title}" value="{FIELD.value}" name="first_name" maxlength="{FIELD.max_length}" onkeypress="validErrorHidden(this);" data-mess=""<!-- BEGIN: data_callback--> data-callback="{CALLFUNC}" data-error="{ERRMESS}"<!-- END: data_callback-->>
                                </div>
                            </div>
                            <!-- END: show_first_name -->
                            <!-- END: name_show_0 -->
                            <!-- BEGIN: name_show_1 -->
                            <!-- BEGIN: show_first_name -->
                            <div class="form-group">
                                <label for="first_name" class="control-label col-sm-7 col-md-6 text-normal">{FIELD.title}</label>
                                <div class="col-sm-13 col-md-12">
                                    <input type="text" class="form-control {FIELD.required} {FIELD.class}" placeholder="{FIELD.title}" value="{FIELD.value}" name="first_name" maxlength="{FIELD.max_length}" onkeypress="validErrorHidden(this);" data-mess=""<!-- BEGIN: data_callback--> data-callback="{CALLFUNC}" data-error="{ERRMESS}"<!-- END: data_callback-->>
                                </div>
                            </div>
                            <!-- END: show_first_name -->
                            <!-- BEGIN: show_last_name-->
                            <div class="form-group">
                                <label for="last_name" class="control-label col-sm-7 col-md-6 text-normal">{FIELD.title}</label>
                                <div class="col-sm-13 col-md-12">
                                    <input type="text" class="form-control {FIELD.required} {FIELD.class}" placeholder="{FIELD.title}" value="{FIELD.value}" name="last_name" maxlength="{FIELD.max_length}" onkeypress="validErrorHidden(this);" data-mess=""<!-- BEGIN: data_callback--> data-callback="{CALLFUNC}" data-error="{ERRMESS}"<!-- END: data_callback-->>
                                </div>
                            </div>
                            <!-- END: show_last_name -->
                            <!-- END: name_show_1 -->
                            <!-- BEGIN: show_gender -->
                            <div class="form-group">
                                <label for="gender" class="control-label col-sm-7 col-md-6 text-normal">{FIELD.title}</label>
                                <div class="col-sm-5 col-md-4">
                                    <select class="form-control {FIELD.required} {FIELD.class}" name="gender" onchange="validErrorHidden(this,5);" data-mess="">
                                        <!-- BEGIN: gender -->
                                        <option value="{GENDER.key}"{GENDER.sel}>{GENDER.title}</option>
                                        <!-- END: gender -->
                                    </select>
                                </div>
                            </div>
                            <!-- END: show_gender -->
                            <!-- BEGIN: show_birthday -->
                            <div class="form-group">
                                <label for="birthday" class="control-label col-sm-7 col-md-6 text-normal">{FIELD.title}</label>
                                <div class="col-sm-5 col-md-4">
                                    <input type="text" class="form-control calendar-icon datepicker {FIELD.required} {FIELD.class}" name="birthday" value="{FIELD.value}" readonly="readonly" style="background-color: #fff" onfocus="datepickerShow(this);" data-mess="">
                                </div>
                            </div>
                            <!-- END: show_birthday -->
                            <!-- BEGIN: show_sig -->
                            <div class="form-group">
                                <label for="birthday" class="control-label col-sm-7 col-md-6 text-normal">{FIELD.title}</label>
                                <div class="col-sm-13 col-md-12">
                                    <textarea class="form-control {FIELD.required} {FIELD.class}" placeholder="{FIELD.title}" name="sig" onkeypress="validErrorHidden(this);" data-mess="">{FIELD.value}</textarea>
                                </div>
                            </div>
                            <!-- END: show_sig -->
                            <div class="form-group">
                                <div class="col-sm-13 col-sm-push-7 col-md-12 col-md-push-6">
                                    <label class="check-box"><input type="checkbox" name="view_mail" style="margin-top: 0" value="1" {DATA.view_mail}/> {LANG.showmail}</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-7 col-md-6">
                                    <input type="hidden" name="checkss" value="{DATA.checkss}" />
                                </div>
                                <div class="col-sm-13 col-md-12">
                                    <input type="submit" class="btn btn-primary" value="{LANG.editinfo_confirm}" />
                                    <input type="button" value="{GLANG.reset}" class="btn btn-default" onclick="validReset(this.form);return!1;" />
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- BEGIN: tab_edit_username -->
                <div id="edit_username" class="well-lg tab-pane fade {TAB_USERNAME_ACTIVE}">
                    <!-- BEGIN: username_empty_pass -->
                    <div class="alert alert-danger">
                        <em class="fa fa-exclamation-triangle ">&nbsp;</em> {LANG.changelogin_notvalid}
                        <button type="button" class="btn btn-primary btn-xs" onclick="addpass()">{LANG.add_pass}</button>
                    </div>
                    <!-- END: username_empty_pass -->
                    <form action="{EDITINFO_FORM}/username" method="post" role="form" class="form-horizontal{FORM_HIDDEN}" onsubmit="return reg_validForm(this);" autocomplete="off" novalidate>
                        <div class="nv-info margin-bottom" data-default="{LANG.edit_login_warning}">{LANG.edit_login_warning}</div>
                        <div class="form-detail">
                            <div class="form-group">
                                <div class="col-md-6 text-right">{LANG.currentlogin}:</div>
                                <div class="col-md-12">
                                    <strong>{DATA.username}</strong>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="username" class="control-label col-md-6 text-normal">{LANG.newlogin}</label>
                                <div class="col-md-12">
                                    <input type="text" class="required form-control" placeholder="{LANG.newlogin}" value="" name="username" maxlength="{NICK_MAXLENGTH}" onkeypress="validErrorHidden(this);" data-mess="{USERNAME_RULE}" data-callback="login_check" data-minlength="{NICK_MINLENGTH}" data-type="{LOGINTYPE}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="password" class="control-label col-md-6 text-normal">{LANG.password}</label>
                                <div class="col-md-12">
                                    <input type="password" autocomplete="off" class="required form-control" placeholder="{GLANG.password}" value="" name="password" maxlength="{PASS_MAXLENGTH}" data-pattern="/^(.){{PASS_MINLENGTH},{PASS_MAXLENGTH}}$/" onkeypress="validErrorHidden(this);" data-mess="{GLANG.password_empty}">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-6">
                                    <input type="hidden" name="checkss" value="{DATA.checkss}" />
                                </div>
                                <div class="col-md-10">
                                    <input type="button" value="{GLANG.reset}" class="btn btn-default" onclick="validReset(this.form);return!1;" /> <input type="submit" class="btn btn-primary" value="{LANG.editinfo_confirm}" />
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- END: tab_edit_username -->
                <!-- BEGIN: tab_edit_email -->
                <div id="edit_email" class="well-lg tab-pane fade {TAB_EMAIL_ACTIVE}">
                    <!-- BEGIN: email_empty_pass -->
                    <div class="alert alert-danger">
                        <em class="fa fa-exclamation-triangle ">&nbsp;</em> {LANG.changeemail_notvalid}
                        <button type="button" class="btn btn-primary btn-xs" onclick="addpass()">{LANG.add_pass}</button>
                    </div>
                    <!-- END: email_empty_pass -->
                    <form action="{EDITINFO_FORM}/email" method="post" role="form" class="form-horizontal{FORM_HIDDEN}" onsubmit="return changemail_validForm(this);" autocomplete="off" novalidate>
                        <div class="nv-info" style="margin-bottom:30px">{LANG.edit_email_warning}</div>
                        <div class="nv-info-default hidden">{LANG.edit_email_warning}</div>
                        <div class="form-detail">
                            <div class="form-group">
                                <div class="col-md-18 col-md-push-6">
                                    {LANG.currentemail}: <strong>{DATA.email}</strong>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="password" class="control-label col-md-6 text-normal">{LANG.password}</label>
                                <div class="col-md-12">
                                    <input type="password" autocomplete="off" class="required form-control" placeholder="{GLANG.password}" value="" name="password" maxlength="{PASS_MAXLENGTH}" data-pattern="/^(.){{PASS_MINLENGTH},{PASS_MAXLENGTH}}$/" onkeypress="validErrorHidden(this);" data-mess="{GLANG.password_empty}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="email" class="control-label col-md-6 text-normal">{LANG.newemail}</label>
                                <div class="col-md-12">
                                    <input type="email" class="required form-control" placeholder="{LANG.newemail}" value="" name="email" maxlength="100" onkeypress="validErrorHidden(this);" data-mess="{GLANG.email_empty}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="verifykey" class="control-label col-md-6 text-normal">{LANG.verifykey}</label>
                                <div class="col-md-12">
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="{LANG.verifykey}" value="" name="verifykey" maxlength="32" data-pattern="/^[a-zA-Z0-9]{32,32}$/" onkeypress="validErrorHidden(this);" data-mess="{LANG.verifykey_empty}"> <span class="input-group-btn">
                                            <button type="button" class="send-bt btn btn-info pointer" onclick="verkeySend(this.form);">{LANG.verifykey_send}</button>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-6">
                                    <input type="hidden" name="checkss" value="{DATA.checkss}" /> <input type="hidden" name="vsend" value="0" />
                                </div>
                                <div class="col-md-10">
                                    <input type="submit" class="btn btn-primary" value="{LANG.editinfo_confirm}" />
                                    <input type="button" value="{GLANG.reset}" class="btn btn-default" onclick="validReset(this.form);return!1;" />
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- END: tab_edit_email -->
                <!-- BEGIN: tab_edit_password -->
                <div id="edit_password" class="well-lg tab-pane fade {TAB_PASSWORD_ACTIVE}">
                    <form action="{EDITINFO_FORM}/password" method="post" role="form" class="form-horizontal" onsubmit="return reg_validForm(this);" autocomplete="off" novalidate>
                        <div class="nv-info margin-bottom" data-default="" style="display: none"></div>
                        <div class="form-detail">
                            <!-- BEGIN: is_old_pass -->
                            <div class="form-group">
                                <label for="nv_password" class="control-label col-md-6 text-normal">{LANG.pass_old}</label>
                                <div class="col-md-12">
                                    <input type="password" autocomplete="off" class="required form-control" placeholder="{LANG.pass_old}" value="" name="nv_password" maxlength="{PASS_MAXLENGTH}" data-pattern="/^(.){{PASS_MINLENGTH},{PASS_MAXLENGTH}}$/" onkeypress="validErrorHidden(this);" data-mess="{LANG.required}">
                                </div>
                            </div>
                            <!-- END: is_old_pass -->
                            <div class="form-group">
                                <label for="new_password" class="control-label col-md-6 text-normal">{LANG.pass_new}</label>
                                <div class="col-md-12">
                                    <input type="password" autocomplete="off" class="required form-control" placeholder="{LANG.pass_new}" value="" name="new_password" maxlength="{PASS_MAXLENGTH}" data-pattern="/^(.){{PASS_MINLENGTH},{PASS_MAXLENGTH}}$/" onkeypress="validErrorHidden(this);" data-mess="{PASSWORD_RULE}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="re_password" class="control-label col-md-6 text-normal">{LANG.pass_new_re}</label>
                                <div class="col-md-12">
                                    <input type="password" autocomplete="off" class="required form-control" placeholder="{LANG.pass_new_re}" value="" name="re_password" maxlength="{PASS_MAXLENGTH}" data-pattern="/^(.){{PASS_MINLENGTH},{PASS_MAXLENGTH}}$/" onkeypress="validErrorHidden(this);" data-mess="{GLANG.re_password_empty}">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-6">
                                    <input type="hidden" name="checkss" value="{DATA.checkss}" />
                                </div>
                                <div class="col-md-10">
                                    <input type="submit" class="btn btn-primary" value="{LANG.editinfo_confirm}" />
                                    <input type="button" value="{GLANG.reset}" class="btn btn-default" onclick="validReset(this.form);return!1;" />
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- END: tab_edit_password -->
                <!-- BEGIN: tab_edit_question -->
                <div id="edit_question" class="well-lg tab-pane fade {TAB_QUESTION_ACTIVE}">
                    <!-- BEGIN: question_empty_pass -->
                    <div class="alert alert-danger">
                        <em class="fa fa-exclamation-triangle ">&nbsp;</em> {LANG.changequestion_notvalid}
                        <button type="button" class="btn btn-primary btn-xs" onclick="addpass()">{LANG.add_pass}</button>
                    </div>
                    <!-- END: question_empty_pass -->
                    <form action="{EDITINFO_FORM}/question" method="post" role="form" class="form-horizontal{FORM_HIDDEN}" onsubmit="return reg_validForm(this);" autocomplete="off" novalidate>
                        <div class="nv-info" style="margin-bottom:30px" data-default="{LANG.edit_question_warning}">{LANG.edit_question_warning}</div>
                        <div class="form-detail">
                            <div class="form-group">
                                <label for="nv_password" class="control-label col-md-6 text-normal">{LANG.password}</label>
                                <div class="col-md-12">
                                    <input type="password" autocomplete="off" class="required form-control" placeholder="{LANG.password}" value="" name="nv_password" maxlength="{PASS_MAXLENGTH}" data-pattern="/^(.){{PASS_MINLENGTH},{PASS_MAXLENGTH}}$/" onkeypress="validErrorHidden(this);" data-mess="{GLANG.password_empty}">
                                </div>
                            </div>
                            <!-- BEGIN: show_question -->
                            <div class="form-group rel">
                                <label for="question" class="control-label col-md-6 text-normal">{FIELD.title}</label>
                                <div class="col-md-12">
                                    <div class="input-group">
                                        <input type="text" class="form-control {FIELD.required} {FIELD.class}" placeholder="{FIELD.title}" value="" name="question" maxlength="{FIELD.max_length}" data-pattern="/^(.){{FIELD.min_length},}$/" onkeypress="validErrorHidden(this);" data-mess="{LANG.your_question_empty}">
                                        <div class="input-group-btn" role="group">
                                            <button type="button" class="btn btn-default pointer dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <span class="caret"></span>
                                            </button>
                                            <ul class="dropdown-menu dropdown-menu-right">
                                                <!-- BEGIN: frquestion -->
                                                <li><a href="javascript:void(0)" onclick="addQuestion(this);">{QUESTION}</a></li>
                                                <!-- END: frquestion -->
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- END: show_question -->
                            <!-- BEGIN: show_answer -->
                            <div class="form-group">
                                <label for="answer" class="control-label col-md-6 text-normal">{FIELD.title}</label>
                                <div class="col-md-12">
                                    <input type="text" class="form-control {FIELD.required} {FIELD.class}" placeholder="{FIELD.title}" value="" name="answer" maxlength="{FIELD.max_length}" data-pattern="/^(.){{FIELD.min_length},}$/" onkeypress="validErrorHidden(this);" data-mess="{LANG.answer_empty}">
                                </div>
                            </div>
                            <!-- END: show_answer -->
                            <div class="form-group">
                                <div class="col-md-6">
                                    <input type="hidden" name="checkss" value="{DATA.checkss}" />
                                </div>
                                <div class="col-md-10">
                                    <input type="submit" class="btn btn-primary" value="{LANG.editinfo_confirm}" />
                                    <input type="button" value="{GLANG.reset}" class="btn btn-default" onclick="validReset(this.form);return!1;" />
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- END: tab_edit_question -->
            </div>
        </div>
    </div>
</div>
<script>
    function changeTabTitle() {
        var n = $("#funcList li.active a").text();
        n += ' <span class="caret"></span>';
        $("#myTabEl").html(n)
    }
    function edit_group_submit(event, obj, old) {
        event.preventDefault();
        var nw = [];
        if ($('[name^=in_groups]:checked').length) {
            $('[name^=in_groups]:checked').each(function(){
                nw.push($(this).val());
            })
        }

        nw = nw.join();
        if (nw == old) {
            return !1
        }

        reg_validForm(obj);
    }
    $(function() {
        $('[data-toggle="popover"]').popover();
        $('.users-menu a[data-toggle="tab"]').on('shown.bs.tab', function(e) {
            changeTabTitle()
        });
        changeTabTitle()
    })
</script>
<!-- END: main -->
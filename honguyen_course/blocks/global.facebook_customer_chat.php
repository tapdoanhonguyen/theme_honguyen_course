<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Sat, 08 Feb 2014 06:33:39 GMT
 */

if (!defined('NV_MAINFILE')) {
    die('Stop!!!');
}

if (!nv_function_exists('nv_facebook_customer_chat_blocks')) {
    /**
     * nv_block_config_facebook_customer_chat_blocks()
     *
     * @param mixed $module
     * @param mixed $data_block
     * @param mixed $lang_block
     * @return
     */
    function nv_block_config_facebook_customer_chat_blocks($module, $data_block, $lang_block)
    {
        $html = '';

        $html .= '<div class="form-group">';
        $html .= '	<label class="control-label col-sm-6">' . $lang_block['facebookappid'] . ':</label>';
        $html .= '	<div class="col-sm-9"><input class="form-control" type="text" name="config_facebookappid" value="' . $data_block['facebookappid'] . '"/></div>';
        $html .= '</div>';
        $html .= '<div class="form-group">';
        $html .= '	<label class="control-label col-sm-6">' . $lang_block['page_id'] . ':</label>';
        $html .= '	<div class="col-sm-9"><input class="form-control" type="text" name="config_page_id" value="' . $data_block['page_id'] . '"/></div>';
        $html .= '</div>';
        $html .= '<div class="form-group">';
        $html .= '	<label class="control-label col-sm-6">' . $lang_block['logged_in_greeting'] . ':</label>';
        $html .= '	<div class="col-sm-18"><input class="form-control" type="text" name="config_logged_in_greeting" value="' . $data_block['logged_in_greeting'] . '"/></div>';
        $html .= '</div>';
        $html .= '<div class="form-group">';
        $html .= '	<label class="control-label col-sm-6">' . $lang_block['logged_out_greeting'] . ':</label>';
        $html .= '	<div class="col-sm-18"><input class="form-control" type="text" name="config_logged_out_greeting" value="' . $data_block['logged_out_greeting'] . '"/></div>';
        $html .= '</div>';

        return $html;
    }

    /**
     * nv_block_config_facebook_customer_chat_blocks_submit()
     *
     * @param mixed $module
     * @param mixed $lang_block
     * @return
     */
    function nv_block_config_facebook_customer_chat_blocks_submit($module, $lang_block)
    {
        global $nv_Request;
        $return = array();
        $return['error'] = array();
        $return['config'] = array();
        $return['config']['facebookappid'] = $nv_Request->get_title('config_facebookappid', 'post', '');
        $return['config']['page_id'] = $nv_Request->get_title('config_page_id', 'post', '');
        $return['config']['logged_in_greeting'] = $nv_Request->get_title('config_logged_in_greeting', 'post', '');
        $return['config']['logged_out_greeting'] = $nv_Request->get_title('config_logged_out_greeting', 'post', '');

        return $return;
    }

    /**
     * nv_facebook_customer_chat_blocks()
     *
     * @param mixed $block_config
     * @return
     */
    function nv_facebook_customer_chat_blocks($block_config)
    {
        global $global_config, $lang_global;

        if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/blocks/global.copyright.tpl')) {
            $block_theme = $global_config['module_theme'];
        } elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/blocks/global.copyright.tpl')) {
            $block_theme = $global_config['site_theme'];
        } else {
            $block_theme = 'default';
        }

        $xtpl = new XTemplate('global.facebook_customer_chat.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/blocks');
        $xtpl->assign('LANG', $lang_global);
        $xtpl->assign('SDK_LANG', (NV_LANG_INTERFACE == 'vi') ? 'vi_VN' : 'en_US');
        $xtpl->assign('CONFIG', $block_config);

        $xtpl->parse('main');
        return $xtpl->text('main');
    }
}

if (defined('NV_SYSTEM')) {
    $content = nv_facebook_customer_chat_blocks($block_config);
}

<?php

/**
 * NukeViet Content Management System
 * @version 4.x
 * @author VINADES.,JSC <contact@vinades.vn>
 * @copyright (C) 2009-2021 VINADES.,JSC. All rights reserved
 * @license GNU/GPL version 2 or any later version
 * @see https://github.com/nukeviet The NukeViet CMS GitHub project
 */

if (!defined('NV_MAINFILE')) {
    exit('Stop!!!');
}

if (!nv_function_exists('nv_theme_statistical')) {
    /**
     * nv_theme_statistical_config()
     *
     * @param string $module
     * @param array  $data_block
     * @param array  $lang_block
     * @return string
     */
    function nv_theme_statistical_config($module, $data_block, $lang_block)
    {
        global $nv_Cache, $nv_Request, $db_config, $site_mods, $global_config, $client_info, $site_mods;


        $html = '<div class="form-group">';
        $html .= '  <label class="control-label col-sm-6">' . $lang_block['experience'] . ':</label>';
        $html .= '  <div class="col-sm-18"><input type="text" name="config_experience" class="form-control" value="' . $data_block['experience'] . '"/></div>';
        $html .= '</div>';

        $html .= '<div class="form-group">';
        $html .= '  <label class="control-label col-sm-6">' . $lang_block['yellow_button'] . ':</label>';
        $html .= '  <div class="col-sm-18"><input type="text" name="config_yellow_button" class="form-control" value="' . $data_block['yellow_button'] . '"/></div>';
        $html .= '</div>';

        $html .= '<div class="form-group">';
        $html .= '  <label class="control-label col-sm-6">' . $lang_block['silver_button'] . ':</label>';
        $html .= '  <div class="col-sm-18"><input type="text" name="config_silver_button" class="form-control" value="' . $data_block['silver_button'] . '"/></div>';
        $html .= '</div>';

        $html .= '<div class="form-group">';
        $html .= '  <label class="control-label col-sm-6">' . $lang_block['revenue'] . ':</label>';
        $html .= '  <div class="col-sm-18"><input type="text" name="config_revenue" class="form-control" value="' . $data_block['revenue'] . '"/></div>';
        $html .= '</div>';

        return $html;
    }

    /**
     * nv_theme_statistical_submit()
     *
     * @param string $module
     * @param array  $lang_block
     * @return array
     */
    function nv_theme_statistical_submit($module, $lang_block)
    {
        global $nv_Request;
        $return = [];
        $return['error'] = [];

        $return['config']['experience'] = $nv_Request->get_title('config_experience', 'post');
        $return['config']['yellow_button'] = $nv_Request->get_title('config_yellow_button', 'post');
        $return['config']['silver_button'] = $nv_Request->get_title('config_silver_button', 'post');
        $return['config']['revenue'] = $nv_Request->get_title('config_revenue', 'post');

        return $return;
    }

    /**
     * nv_theme_statistical()
     *
     * @param array $block_config
     * @return string
     */
    function nv_theme_statistical($block_config)
    {
        global $global_config, $site_mods, $lang_global;

        if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/blocks/global.statistical.tpl')) {
            $block_theme = $global_config['module_theme'];
        } elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/blocks/global.statistical.tpl')) {
            $block_theme = $global_config['site_theme'];
        } else {
            $block_theme = 'default';
        }

        $xtpl = new XTemplate('global.statistical.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/blocks');
        $xtpl->assign('NV_BASE_SITEURL', NV_BASE_SITEURL);
        $xtpl->assign('LANG', $lang_global);
        $xtpl->assign('TEMPLATE', $block_theme);

        $xtpl->assign('DATA', $block_config);

        $xtpl->parse('main');

        return $xtpl->text('main');
    }
}

if (defined('NV_SYSTEM')) {
    $content = nv_theme_statistical($block_config);
}

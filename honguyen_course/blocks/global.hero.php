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

if (!nv_function_exists('nv_theme_hero')) {
    /**
     * nv_theme_hero_config()
     *
     * @param string $module
     * @param array  $data_block
     * @param array  $lang_block
     * @return string
     */
    function nv_theme_hero_config($module, $data_block, $lang_block)
    {
        global $nv_Cache, $nv_Request, $db_config, $site_mods, $global_config, $client_info, $site_mods;

        if (defined('NV_EDITOR')) {
            require NV_ROOTDIR . '/' . NV_EDITORSDIR . '/' . NV_EDITOR . '/nv.php';
        }

        $currentpath = NV_BASE_SITEURL . NV_UPLOADS_DIR . '/blocks';

        $data_block['description'] = htmlspecialchars(nv_editor_br2nl($data_block['description']));
        if (defined('NV_EDITOR') and nv_function_exists('nv_aleditor')) {
            $data_block['description'] = nv_aleditor('description', '100%', '150px', $data_block['description'], 'Basic');
        } else {
            $data_block['description'] = '<textarea style="width: 100%" name="description" id="description" cols="20" rows="8">' . $data_block['description'] . '</textarea>';
        }

        $html = '<div class="form-group">';
        $html .= '  <label class="control-label col-sm-6">' . $lang_block['name'] . ':</label>';
        $html .= '  <div class="col-sm-18"><input type="text" name="config_name" class="form-control" value="' . $data_block['name'] . '"/></div>';
        $html .= '</div>';

        $html .= '<div class="form-group">';
        $html .= '  <label class="control-label col-sm-6">' . $lang_block['image'] . ':</label>';
        $html .= '  <div class="input-group">';
        $html .= '      <input class="form-control" type="text" name="config_image" id="image" value="' . $data_block['image'] . '"/> <span class="input-group-btn"><button class="btn btn-default" onclick="nv_selectfile($(this)); return !1;"  data-currentpath="' . $currentpath . '" type="button"><em class="fa fa-folder-open-o fa-fix">&nbsp;</em></button></span>';
        $html .= '  </div>';
        $html .= '  </div>';

        $html .= '<div class="form-group">';
        $html .= '  <label class="control-label col-sm-6">' . $lang_block['link'] . ':</label>';
        $html .= '  <div class="col-sm-18"><input type="text" name="config_link" class="form-control" value="' . $data_block['link'] . '"/></div>';
        $html .= '</div>';

        $html .= '<div class="form-group">';
        $html .= '	<label class="control-label col-sm-6">' . $lang_block['description'] . ':</label>';
        $html .= '	<div class="col-sm-18">' . $data_block['description'] . '</div>';
        $html .= '</div>';

        $html .= '
        <script>
            function nv_selectfile($this){
                var area = "image";
                var path = "/uploads/blocks";
                var currentpath = "/uploads/blocks";
                var type = "image";
                nv_open_browse(script_name + "?" + nv_name_variable
                        + "=upload&popup=1&area=" + area + "&path="
                        + path + "&type=" + type + "&currentpath="
                        + currentpath, "NVImg", 850, 420,
                        "resizable=no,scrollbars=no,toolbar=no,location=no,status=no");
            }
        </script>
        ';

        return $html;
    }

    /**
     * nv_theme_hero_submit()
     *
     * @param string $module
     * @param array  $lang_block
     * @return array
     */
    function nv_theme_hero_submit($module, $lang_block)
    {
        global $nv_Request;
        $return = [];
        $return['error'] = [];

        $return['config']['description'] = strtr($return['config']['description'], [
            "\r\n" => '',
            "\r" => '',
            "\n" => ''
        ]);

        $return['config']['description'] = $nv_Request->get_editor('description', '', NV_ALLOWED_HTML_TAGS);
        $return['config']['image'] = $nv_Request->get_title('config_image', 'post');
        $return['config']['name'] = $nv_Request->get_title('config_name', 'post');
        $return['config']['link'] = $nv_Request->get_title('config_link', 'post');

        return $return;
    }

    /**
     * nv_theme_hero()
     *
     * @param array $block_config
     * @return string
     */
    function nv_theme_hero($block_config)
    {
        global $global_config, $site_mods, $lang_global;

        if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/blocks/global.hero.tpl')) {
            $block_theme = $global_config['module_theme'];
        } elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/blocks/global.hero.tpl')) {
            $block_theme = $global_config['site_theme'];
        } else {
            $block_theme = 'default';
        }

        $xtpl = new XTemplate('global.hero.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/blocks');
        $xtpl->assign('NV_BASE_SITEURL', NV_BASE_SITEURL);
        $xtpl->assign('LANG', $lang_global);
        $xtpl->assign('TEMPLATE', $block_theme);

        $xtpl->assign('DATA', $block_config);

        if(!empty($block_config['link'])){
            $xtpl->parse('main.link');
        }

        $xtpl->parse('main');

        return $xtpl->text('main');
    }
}

if (defined('NV_SYSTEM')) {
    $content = nv_theme_hero($block_config);
}

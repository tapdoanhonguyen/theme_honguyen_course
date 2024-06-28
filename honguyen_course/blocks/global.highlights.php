<?php

/**
 * @Project NUKEVIET 4.x
 * @Author BCB SOLUTIONS (bachdinhcao@gmail.com)
 * @Copyright (C) 2022 BCB SOLUTIONS. All rights reserved
 * @License: Not free read more http://nukeviet.vn/vi/store/modules/nvtools/
 * @Createdate Fri, 8 Jul 2022 01:59:00 GMT
 */

if (!defined('NV_MAINFILE')) {
	die('Stop!!!');
}

if (!nv_function_exists('nv_block_highlights')) {

	/**
	 * nv_block_highlights_config()
	 *
	 * @param mixed $module
	 * @param mixed $data_block
	 * @param mixed $lang_block
	 * @return
	 *
	 */
	function nv_block_highlights_config($module, $data_block, $lang_block) {
		global $global_config, $site_mods;

		if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/blocks/global.highlights.tpl')) {
			$block_theme = $global_config['module_theme'];
		} elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/blocks/global.highlights.tpl')) {
			$block_theme = $global_config['site_theme'];
		} else {
			$block_theme = 'default';
		}

		$xtpl = new XTemplate('global.highlights.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/blocks');
		$xtpl->assign('LANG', $lang_block);

		if (empty($data_block['highlights'])) {
			$data_block['highlights'][] = array(
				'index' => 0,
				'icon' => '',
				'name' => '',
				'description' => ''
			);
		}

		foreach ($data_block['highlights'] as $index => $highlights) {
			$highlights['index'] = $index;

			$xtpl->assign('HIGHLIGHTS', $highlights);
			$xtpl->parse('config.loop');
		}
		$xtpl->assign('INDEX', count($data_block['highlights']));

		$xtpl->parse('config');
		return $xtpl->text('config');
	}

	/**
	 * nv_block_highlights_config_submit()
	 *
	 * @param mixed $module
	 * @param mixed $lang_block
	 * @return
	 *
	 */
	function nv_block_highlights_config_submit($module, $lang_block) {
		global $nv_Request;
		$return = [];
		$return['error'] = [];

		$return['config']['highlights'] = $nv_Request->get_array('config_highlights', 'post');
		return $return;
	}

	/**
	 * nv_block_highlights()
	 *
	 * @param mixed $block_config
	 * @return
	 *
	 */
	function nv_block_highlights($block_config) {
		global $page_title, $global_config, $client_info, $lang_global;

		if (empty($block_config['highlights'])) {
			return '';
		}

		if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/blocks/global.highlights.tpl')) {
			$block_theme = $global_config['module_theme'];
		} elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/blocks/global.highlights.tpl')) {
			$block_theme = $global_config['site_theme'];
		} else {
			$block_theme = 'default';
		}

		$xtpl = new XTemplate('global.highlights.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/blocks');
		$xtpl->assign('LANG', $lang_global);
		$xtpl->assign('TEMPLATE', $block_theme);

		foreach ($block_config['highlights'] as $index => $highlights) {
			$highlights['index'] = $index;

			$xtpl->assign('DATA', $highlights);
			$xtpl->parse('main.loop');
		}

		$xtpl->parse('main');
		return $xtpl->text('main');
	}
}

if (defined('NV_SYSTEM')) {
	$content = nv_block_highlights($block_config);
}

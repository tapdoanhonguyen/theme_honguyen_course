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

if (!nv_function_exists('nv_block_channel')) {

	/**
	 * nv_block_channel_config()
	 *
	 * @param mixed $module
	 * @param mixed $data_block
	 * @param mixed $lang_block
	 * @return
	 *
	 */
	function nv_block_channel_config($module, $data_block, $lang_block) {
		global $global_config, $site_mods;

		if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/blocks/global.channel.tpl')) {
			$block_theme = $global_config['module_theme'];
		} elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/blocks/global.channel.tpl')) {
			$block_theme = $global_config['site_theme'];
		} else {
			$block_theme = 'default';
		}

		$xtpl = new XTemplate('global.channel.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/blocks');
		$xtpl->assign('LANG', $lang_block);

		if (empty($data_block['channel'])) {
			$data_block['channel'] = [
				'index' => 0,
				'path' => '',
				'departure' => '',
				'destination' => '',
				'distance' => '',
				'time' => '',
				'currentpath' => ''
			];
		}

		foreach ($data_block['channel'] as $index => $channel) {
			$channel['index'] = $index;

			if (file_exists(NV_ROOTDIR . '/' . NV_UPLOADS_DIR . '/' . $channel['path'])) {
				$channel['path'] = NV_BASE_SITEURL . NV_UPLOADS_DIR . '/' . $channel['path'];
			} else {
				continue;
			}

			$channel['currentpath'] = str_replace(basename($channel['path']), '', $channel['path']);

			$xtpl->assign('SCHEDULE', $channel);
			$xtpl->parse('config.loop');
		}
		$xtpl->assign('INDEX', count($data_block['channel']));

		$xtpl->parse('config');
		return $xtpl->text('config');
	}

	/**
	 * nv_block_channel_config_submit()
	 *
	 * @param mixed $module
	 * @param mixed $lang_block
	 * @return
	 *
	 */
	function nv_block_schedule_config_submit($module, $lang_block) {
		global $nv_Request;
		$return = array();
		$return['error'] = array();
		$schedule = $nv_Request->get_array('config_schedule', 'post');
		foreach ($schedule as $index => $value) {
			if (empty($value['path'])) {
				unset($schedule[$index]);
			} else {
				$lu = strlen(NV_BASE_SITEURL . NV_UPLOADS_DIR . '/');
				$schedule[$index]['path'] = substr($schedule[$index]['path'], $lu);
			}
		}
		$return['config']['schedule'] = $schedule;
		return $return;
	}

	/**
	 * nv_block_schedule()
	 *
	 * @param mixed $block_config
	 * @return
	 *
	 */
	function nv_block_schedule($block_config) {
		global $page_title, $global_config, $client_info, $lang_global;

		if (empty($block_config['schedule'])) {
			return '';
		}

		if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/blocks/global.schedule.tpl')) {
			$block_theme = $global_config['module_theme'];
		} elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/blocks/global.schedule.tpl')) {
			$block_theme = $global_config['site_theme'];
		} else {
			$block_theme = 'default';
		}

		$xtpl = new XTemplate('global.schedule.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/blocks');
		$xtpl->assign('LANG', $lang_global);
		$xtpl->assign('TEMPLATE', $block_theme);
		$xtpl->assign('CONFIG', $block_config);

		foreach ($block_config['schedule'] as $index => $schedule) {
			$schedule['index'] = $index;

			$schedule['thumb'] = '';
			if (file_exists(NV_ROOTDIR . '/' . NV_ASSETS_DIR . '/' . $schedule['path'])) {
				$schedule['thumb'] = NV_BASE_SITEURL . NV_ASSETS_DIR . '/' . $schedule['path'];
			}

			$xtpl->assign('DATA', $schedule);
			$xtpl->parse('main.loop');
		}

		$xtpl->parse('main');
		return $xtpl->text('main');
	}
}

if (defined('NV_SYSTEM')) {
	$content = nv_block_schedule($block_config);
}

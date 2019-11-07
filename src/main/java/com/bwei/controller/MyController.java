package com.bwei.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bwei.beans.Goods;
import com.bwei.service.GoodsService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class MyController {
	
	@Resource
	private GoodsService ser;
	
	@RequestMapping("/getGoodsAll")
	public ModelAndView getGoodsAll(@RequestParam(defaultValue="1")Integer pageNum){
		ModelAndView mv = new ModelAndView();
		PageHelper.startPage(pageNum, 2);
		List<Goods> list = ser.getGoods();
		PageInfo<Goods> page = new PageInfo<Goods>(list);
		mv.getModelMap().addAttribute("page", page);
		mv.setViewName("jsp/list");
		return mv;
		
	}

}

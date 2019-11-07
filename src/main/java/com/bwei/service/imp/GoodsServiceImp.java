package com.bwei.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bwei.beans.Goods;
import com.bwei.dao.GoodsDao;
import com.bwei.service.GoodsService;
@Service
public class GoodsServiceImp implements GoodsService {
	
	@Resource
	private GoodsDao dao;
	
	public List<Goods> getGoods() {
		// TODO Auto-generated method stub
		return dao.getGoods();
	}

}

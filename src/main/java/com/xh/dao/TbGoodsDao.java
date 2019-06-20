package com.xh.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface TbGoodsDao {
  public List<Map<String,Object>> queryTbGoods(Map<String, Object> map);
  public List<Map<String,Object>> queryTbGoodsType();
  public int saveTbGoods(Map<String, Object> map);
  public Map findById(@Param("id") Integer id);
  public int updateTbGoods(Map<String, Object> map);
  public int deleteTbGoods(Integer id);
}

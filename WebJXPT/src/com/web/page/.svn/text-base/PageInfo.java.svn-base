package com.web.page;

import java.sql.SQLException;
import java.util.List;

import com.web.dbDAO.ExampleDAO;
import com.web.dbDAO.NoticeDAO;
import com.web.dbDAO.WorkDAO;
import com.web.dbTable.Example;
import com.web.dbTable.Notice;
import com.web.dbTable.Work;

public class PageInfo {
  private int total;//总页数
  private int curpage;//当前页
  private int count;//每页显示记录数
  private List<Work> list;//接受数据库操作的方法返回的数组
  private List<Notice> nlist;
  private List<Example> elist;
  private NoticeDAO noticedao; 
  private WorkDAO workdao;
  private ExampleDAO exampledao;//实例化数据库操作的类
  
  public List<Work> getList(){
    list = workdao.pageQuery(curpage,count);//开始进行分页
    return list;
  }
  
  public List<Example> geteList(){
	    elist = exampledao.pageQuery(curpage,count);//开始进行分页
	    return elist;
	  }
  
  
  public List<Notice> getNlist(){
	  nlist = noticedao.pageQuery(curpage,count);
	  return nlist;
  }
  public PageInfo(int curpage){
    this.curpage = curpage;
    try {
		workdao = new WorkDAO();
		noticedao = new NoticeDAO();
		exampledao=new ExampleDAO();
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
   }
  
  
  public void setTotal(){
    this.total = workdao.getPageSize(count);//得到总的页数
   }
  
  public int getTotal(){
   return this.total;
  }
  public void setCurpage(int curpage){
   this.curpage = curpage;

}
  
  public int getCurpage(){
   return this.curpage;
  }
  public void setCount(int count){
   this.count = count;

}
  public int getCount(){
   return this.count;
  }
}
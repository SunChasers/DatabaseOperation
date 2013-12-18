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
  private int total;//��ҳ��
  private int curpage;//��ǰҳ
  private int count;//ÿҳ��ʾ��¼��
  private List<Work> list;//�������ݿ�����ķ������ص�����
  private List<Notice> nlist;
  private List<Example> elist;
  private NoticeDAO noticedao; 
  private WorkDAO workdao;
  private ExampleDAO exampledao;//ʵ�������ݿ��������
  
  public List<Work> getList(){
    list = workdao.pageQuery(curpage,count);//��ʼ���з�ҳ
    return list;
  }
  
  public List<Example> geteList(){
	    elist = exampledao.pageQuery(curpage,count);//��ʼ���з�ҳ
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
    this.total = workdao.getPageSize(count);//�õ��ܵ�ҳ��
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
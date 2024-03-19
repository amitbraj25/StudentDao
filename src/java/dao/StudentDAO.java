
package dao;
import java.sql.*;
import java.util.*;
import model.Student;
import myconnection.OnlineConnection;
public class StudentDAO 
{
    
public boolean updateStudent(Student S)    
  {
       int n=0;
      try
      {      
        Connection con=null;
        PreparedStatement ps=null;
        con=OnlineConnection.getConnection();
        String sql;
        sql="update student set name=?,phy=?,chem=?,math=? where rno=?";
        ps=con.prepareStatement(sql);
        ps.setString(1,S.getName());
        ps.setInt(2, S.getPhy());
        ps.setInt(3, S.getChem());
        ps.setInt(4, S.getMath());
        ps.setInt(5, S.getRno());
        n=ps.executeUpdate();
          if(n>0)
             return true;
      }
      catch(Exception e)
      {
          System.out.println(e);
      }
      return false;
  }
    

public boolean checkLogin(String userid,String userpass)
{
        
      try
      {      
        Connection con=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        con=OnlineConnection.getConnection();
        String sql;
       sql="select * from login where username=? and password=?";
       ps=con.prepareStatement(sql);
       ps.setString(1, userid);
       ps.setString(2, userpass);
       rs=ps.executeQuery();
       if(rs.next())
           return true;
       
      }
      catch(Exception e)
      {
          System.out.println(e);
      }
     return false; 
}








public int autoIncr()
{
        int n=501;
      try
      {      
        Connection con=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        con=OnlineConnection.getConnection();
        String sql;
        sql="select max(rno) from student";
        ps=con.prepareStatement(sql);
        rs=ps.executeQuery();
        if(rs.next())
            n=rs.getInt(1);
            n=n+1;
      }
      catch(Exception e)
      {
          System.out.println(e);
      }
    return(n);
    
}

public List<Student> searchAllRecord()
 {
      int n=0;
      List<Student> mylist=new ArrayList<Student>();
      try
      {      
        Connection con=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        con=OnlineConnection.getConnection();
        String sql;
        sql="select * from student";
        ps=con.prepareStatement(sql);
        rs=ps.executeQuery();
        while(rs.next())
        {
           Student S=new Student();
           S.setRno(rs.getInt(1));
           S.setName(rs.getString(2));
           S.setPhy(rs.getInt(3));
           S.setChem(rs.getInt(4));
           S.setMath(rs.getInt(5));
           mylist.add(S);
           S=null;
        }
      }
      catch(Exception e)
      {
          System.out.println(e);  
      }
      return mylist;
 }



 public Student searchByRno(int rno)
 {
      int n=0;
      Student S=new Student();
      try
      {      
        Connection con=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        con=OnlineConnection.getConnection();
        String sql;
        sql="select * from student where rno=?";
        ps=con.prepareStatement(sql);
        ps.setInt(1, rno);
        rs=ps.executeQuery();
        
        if(rs.next())
        {
              S.setRno(rs.getInt(1));
              S.setName(rs.getString(2));
              S.setPhy(rs.getInt(3));
              S.setChem(rs.getInt(4));
              S.setMath(rs.getInt(5));
        }
       else
            S=null;
      }
      catch(Exception e)
      {
          System.out.println(e);
      }
     return (S);  
 }
    
  public boolean deleteStudent(int rno)
  {
       int n=0;
      try
      {      
        Connection con=null;
        PreparedStatement ps=null;
        con=OnlineConnection.getConnection();
        String sql;
        sql="delete from student where rno=?";
        ps=con.prepareStatement(sql);
        ps.setInt(1, rno);
        n=ps.executeUpdate();
        if(n>0)  
            return true;
          
      }
      catch(Exception e)
      {
          System.out.println(e);
      }
      
      
    return false;  
  }
  public boolean insertStudent(Student S)    
  {
       int n=0;
      try
      {      
        Connection con=null;
        PreparedStatement ps=null;
        con=OnlineConnection.getConnection();
        String sql;
        sql="insert into student values(?,?,?,?,?)";
        ps=con.prepareStatement(sql);
        ps.setInt(1, S.getRno());
        ps.setString(2,S.getName());
        ps.setInt(3, S.getPhy());
        ps.setInt(4, S.getChem());
        ps.setInt(5, S.getMath());
        n=ps.executeUpdate();
          if(n>0)
             return true;
      }
      catch(Exception e)
      {
          System.out.println(e);
      }
      return false;
  }
}

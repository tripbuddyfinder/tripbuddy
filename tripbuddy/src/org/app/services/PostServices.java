package org.app.services;

import java.util.List;

import org.app.daos.PostDaoImpl;
import org.app.models.PostModel;

public class PostServices 
{
  private PostDaoImpl dao = new PostDaoImpl();
  
  public int addPost(PostModel post)
  {
	  
	return dao.insert(post);
	  
  }
  
  public List<PostModel> getAllTripPosts()
  {
	return dao.getAllPosts();
  }
  
  public List<PostModel> getTripPost(PostModel post)
  {
	return dao.getPost(post);
  }

public void join(String postid, String userid) {
	dao.saveGroup(postid,userid);
	
}  
}

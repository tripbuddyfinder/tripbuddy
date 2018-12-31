package org.app.services;

import org.app.daos.PostDaoImpl;
import org.app.models.PostModel;

public class PostServices 
{
  private PostDaoImpl dao = new PostDaoImpl();
  
  public int addPost(PostModel post)
  {
	  
	return dao.insert(post);
	  
  }
}

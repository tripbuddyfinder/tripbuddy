package org.app.daos;

import java.util.List;
import org.app.models.PostModel;

public interface PostDao 
{
	public int insert(PostModel post);
	public List<PostModel> getAllPosts();
	public List<PostModel> getPost(PostModel post);
	
	
}

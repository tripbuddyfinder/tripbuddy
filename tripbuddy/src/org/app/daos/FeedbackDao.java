package org.app.daos;

import java.util.List;

import org.app.models.Feedback;

public interface FeedbackDao
{
	public int insertFeedback(Feedback fb);
	public List<Feedback> getFeedbacks();
}

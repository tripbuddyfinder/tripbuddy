package org.app.daos;

import java.util.List;

import org.app.models.Feedback;

public interface FeedbackDao
{
	public String insertFeedback(Feedback fb);
	public List<Feedback> getFeedbacks();
}

package org.product.service.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.product.model.Comment;
import org.product.service.ProductDAOService;
import org.product.util.DatabaseUtil;
import org.springframework.stereotype.Component;

@Component
public class ProductDAOImpl implements ProductDAOService {

	public void addComments(Comment comment) {
		try {

			Connection connection = DatabaseUtil.getConnection();
			java.sql.PreparedStatement pstmt = connection
					.prepareStatement("insert into product(name,email,comment)values(?,?,?)");
			pstmt.setString(1, comment.getName());
			pstmt.setString(2, comment.getEmail());
			pstmt.setString(3, comment.getCommentText());
			pstmt.execute();

		} catch (Exception ex) {

			ex.printStackTrace();
		}

	}

	public List<Comment> getAllComments() {
		ArrayList<Comment> commentList=new ArrayList<Comment>();
		try {

			Connection connection = DatabaseUtil.getConnection();
			java.sql.PreparedStatement pstmt = connection
					.prepareStatement("select * from product");
			
			ResultSet resultSet=pstmt.executeQuery();
			while(resultSet.next()){
				Comment comment=new Comment();
				comment.setId(resultSet.getInt("id"));
				comment.setEmail(resultSet.getString("email"));
				comment.setCommentText(resultSet.getString("comment"));
				comment.setName(resultSet.getString("name"));
				commentList.add(comment);
			}

		} catch (Exception ex) {
			ex.printStackTrace();

			
		}
		
		return commentList;
		
	}

}

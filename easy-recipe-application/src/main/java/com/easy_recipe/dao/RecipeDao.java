package com.easy_recipe.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.easy_recipe.connection.ConnectionFactory;
import com.easy_recipe.models.Recipe;

public class RecipeDao {

	public List<Recipe> getAllRecipes() {

		List<Recipe> list = new ArrayList<Recipe>();

		Connection con = ConnectionFactory.getConnection();

		String sql = "SELECT * FROM Recipes";

		try {
			PreparedStatement ps = con.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Integer id = rs.getInt(1);
				String name = rs.getString(2);
				String image = rs.getString(3);
				String description = rs.getString(4);
				String time = rs.getString(5);
				String category = rs.getString(6);

				Recipe recipe = new Recipe(id, name, image, description, time, category);
				list.add(recipe);
			}

			ps.close();
			rs.close();
			con.close();

			System.out.println("Database Disconnected !");
		} catch (SQLException exception) {
			exception.printStackTrace();
			System.out.println("Error - Recipe Fetching Operation Failed !");
		}

		return list;
	}

}

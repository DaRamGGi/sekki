package com.care.sekki.Recipe;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.care.sekki.board.BoardDTO;

@Mapper
public interface RecipeMapper {
	ArrayList<RecipeBoardDTO> recipeBoard(@Param("begin")int begin, @Param("end")int end, 
			@Param("search")String search, @Param("category")String category);

	int count(@Param("search")String search);
	void insertRecipe(RecipeBoardDTO ricipeDto);
	void insertMaterial(MaterialDTO materialDTO);
	void insertStep(StepDTO step);

	RecipeBoardDTO recipeContent(long re_no);

	void reHit(Long re_no);

	List<MaterialDTO> recipeMa(long re_no);

	List<StepDTO> recipeSt(long re_no);

	void insertComment(CommentDTO commentDto);

	List<CommentDTO> reciment(long re_no);
	
	void reciUpdata(RecipeBoardDTO reciDto);

	void mateUpdata(MaterialDTO materialDTO);

	void stepUpdata(StepDTO step);

	void reciBoardDel(long re_no);

	void reciMateDel(long re_no);

	void reciStepDel(long re_no);

	void reciCommentDel(long re_no);

	void commentUpdata(CommentDTO comDto);

	void CommentDel(CommentDTO comDto);

	ArrayList<RecipeBoardDTO> recipeBoardByCategory(int begin, int end, String search, String category);

	int countByCategory(String search, String category);

	ArrayList<RecipeBoardDTO> MainSearch(int begin, int end, String mate_one, String mate_two, String mate_three);

	int countMainSearch(String mate_one, String mate_two, String mate_three);

}

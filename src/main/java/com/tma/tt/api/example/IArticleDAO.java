package com.tma.tt.api.example;
import com.tma.tt.api.article.Article;

import java.util.List;
public interface IArticleDAO {
    List<Article> getAllArticles();
    Article getArticleById(int articleId);
    void addArticle(Article article);
    void updateArticle(Article article);
    void deleteArticle(int articleId);
    boolean articleExists(String title, String category);
}
 
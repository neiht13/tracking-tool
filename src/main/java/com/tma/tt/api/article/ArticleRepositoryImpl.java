package com.tma.tt.api.article;

import io.katharsis.queryspec.QuerySpec;
import io.katharsis.repository.ResourceRepositoryBase;
import io.katharsis.resource.links.DefaultPagedLinksInformation;
import io.katharsis.resource.list.DefaultResourceList;
import io.katharsis.resource.list.ResourceList;
import io.katharsis.resource.meta.DefaultPagedMetaInformation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class ArticleRepositoryImpl extends ResourceRepositoryBase<Article, Integer> implements ArticleRepository {

    @Autowired
    private ArticleJpaRepository jpaRepository;

    public ArticleRepositoryImpl() {
        super(Article.class);
    }

    @Override
    public synchronized ResourceList<Article> findAll(QuerySpec querySpec) {
        ResourceList<Article> list = new DefaultResourceList<Article>(new DefaultPagedMetaInformation(), new DefaultPagedLinksInformation());
        List<Article> articles = jpaRepository.findAll();
        querySpec.apply(articles, list);
        return list;
    }

}

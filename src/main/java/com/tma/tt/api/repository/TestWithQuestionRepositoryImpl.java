package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.QuestionChoiceJpaRepository;
import com.tma.tt.api.jpa.TestJpaRepository;
import com.tma.tt.api.jpa.UserTestJpaRepository;
import com.tma.tt.api.jpa.UserTestResultJpaRepository;
import com.tma.tt.api.model.*;
import io.katharsis.errorhandling.exception.ResourceNotFoundException;
import io.katharsis.queryspec.QuerySpec;
import io.katharsis.repository.ResourceRepositoryBase;
import io.katharsis.resource.list.ResourceList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Date;

@Component
public class TestWithQuestionRepositoryImpl extends ResourceRepositoryBase<TestWithQuestion, Long> implements TestWithQuestionRepository {

    @Autowired
    private UserTestJpaRepository userTestJpaRepository;

    @Autowired
    private UserTestResultJpaRepository userTestResultJpaRepository;

    @Autowired
    private QuestionChoiceJpaRepository questionChoiceJpaRepository;

    public TestWithQuestionRepositoryImpl() {
        super(TestWithQuestion.class);
    }

    @Override
    public TestWithQuestion findOne(Long id, QuerySpec querySpec) {
        UserTest userTest = userTestJpaRepository.getOne(id);
        if (userTest == null) {
            throw new ResourceNotFoundException("Resource not found");
        }
        return new TestWithQuestion(userTest);
    }

    @Override
    public ResourceList<TestWithQuestion> findAll(QuerySpec querySpec) {
        return null;
    }

    @Override
    public TestWithQuestion save(TestWithQuestion testWithQuestion){
        UserTest userTest = testWithQuestion.getUserTest();
        userTest.setUserTestId(testWithQuestion.getId().longValue());
        if(testWithQuestion.getQuestionWithChoices() != null){
            int score = 0;
            for (TestWithQuestion.QuestionWithChoice tq : testWithQuestion.getQuestionWithChoices()){

                Question question = new Question();
                question.setQuestionId(tq.getId());

                YesNoFlag corrected = YesNoFlag.Y;

                for (TestWithQuestion.Choice c : tq.getChoices()) {
                    switch (tq.getType()) {
                        case MULTI_CHOICE:
                        case SINGLE_CHOICE:
                            if (c.getSelected().equals("Y")) {
                                UserTestResult userTestResult = new UserTestResult();
                                userTestResult.setUserTest(userTest);
                                userTestResult.setQuestion(question);

                                QuestionChoice questionChoice = questionChoiceJpaRepository.getOne(c.getId());

                                userTestResult.setQuestionChoice(questionChoice);
                                userTestResult.setCorrected(questionChoice.getCorrected());

                                if(questionChoice.getCorrected() == YesNoFlag.N) {
                                    corrected = YesNoFlag.N;
                                }

                                userTestResultJpaRepository.save(userTestResult);
                            }
                            break;

                        default:
                            UserTestResult userTestResult = new UserTestResult();
                            userTestResult.setUserTest(userTest);
                            userTestResult.setQuestion(question);

                            QuestionChoice questionChoice = questionChoiceJpaRepository.getOne(c.getId());

                            QuestionChoice userChoice = new QuestionChoice();
                            userChoice.setChoiceId(c.getId());

                            userTestResult.setFill_in(c.getSelected());
                            userTestResult.setQuestionChoice(userChoice);

                            if(! questionChoice.getFill_in().equalsIgnoreCase(c.getSelected())) {
                                corrected = YesNoFlag.N;
                            }
                            userTestResult.setCorrected(corrected);

                            userTestResultJpaRepository.save(userTestResult);
                            break;
                    }
                }

                if(corrected == YesNoFlag.Y){
                    score++;
                }

            }

            userTest.setTestDate(new Date());
            userTest.setScore(score);
            userTestJpaRepository.save(userTest);
        }

        return testWithQuestion;
    }
}

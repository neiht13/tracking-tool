package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.TestJpaRepository;
import com.tma.tt.api.jpa.UserJpaRepository;
import com.tma.tt.api.jpa.UserTestJpaRepository;
import com.tma.tt.api.model.Test;
import com.tma.tt.api.model.TestAssignment;
import com.tma.tt.api.model.User;
import com.tma.tt.api.model.UserTest;
import io.katharsis.queryspec.QuerySpec;
import io.katharsis.repository.ResourceRepositoryBase;
import io.katharsis.resource.list.ResourceList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class TestAssignmentRepositoryImpl extends ResourceRepositoryBase<TestAssignment, Long> implements TestAssignmentRepository {

    @Autowired
    private TestJpaRepository testJpaRepository;

    @Autowired
    private UserJpaRepository userJpaRepository;

    @Autowired
    private UserTestJpaRepository userTestJpaRepository;

    public TestAssignmentRepositoryImpl() {
        super(TestAssignment.class);
    }

    @Override
    public TestAssignment findOne(Long id, QuerySpec querySpec) {
        TestAssignment testAssignment = new TestAssignment();
        List<Long> testIds = new ArrayList<>();
        List<Long> userTestIds = new ArrayList<>();

        List<UserTest> userTests = userTestJpaRepository.findAll();
        for(UserTest ut: userTests){
            if( (ut.getUser().getUserId() == id) && (ut.getTestDate() == null) ) {
                testIds.add(ut.getTest().getTestId());
                userTestIds.add(ut.getUserTestId());
            }
        }

        testAssignment.setTestIds(testIds);
        testAssignment.setUserTestIds(userTestIds);
        testAssignment.setId(id);
        return testAssignment;
    }

    @Override
    public ResourceList<TestAssignment> findAll(QuerySpec querySpec) {
        return null;
    }

    @Override
    public TestAssignment save(TestAssignment testAssignment){
        if(testAssignment != null){

            QuerySpec querySpec = new QuerySpec(TestAssignment.class);
            TestAssignment dbTestAssignment = findOne(testAssignment.getId(), querySpec);
            List<Long> dbTestIds = dbTestAssignment.getTestIds();
            List<Long> testIds = testAssignment.getTestIds();

            int index = 0;
            for(Long lDb : dbTestIds) {
                boolean deleted = true;
                for(Long lNew : testIds) {
                    if (lNew == lDb) {
                        deleted = false;
                        break;
                    }
                }
                if (deleted) {
                    UserTest userTest = userTestJpaRepository.getOne(dbTestAssignment.getUserTestIds().get(index));
                        userTestJpaRepository.delete(userTest);
                }
                index++;
            }

            for(Long l: testIds){
                if(dbTestIds.indexOf(l) == -1) {
                    User user = userJpaRepository.getOne(testAssignment.getId());
                    Test test = testJpaRepository.getOne(l);

                    UserTest userTest = new UserTest();
                    userTest.setUser(user);
                    userTest.setTest(test);

                    userTestJpaRepository.save(userTest);
                }
            }
        }

        return testAssignment;
    }
}

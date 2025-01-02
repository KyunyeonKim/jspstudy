package com.tmtb.test.service;

import com.tmtb.test.model.Member;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

public interface MemberService {
    void insertMember(Map<String, String> params) throws Exception;



    List<Member> findMembersByGender(String gender);
}

package com.tmtb.test.mapper;

import com.tmtb.test.model.Member;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

@Mapper
public interface MemberMapper {
    List<Member> findAll();

    void insertMember(Map<String, String> params);

    List<Member> findByGender(@Param("gender") String gender); // 성별로 회원 조회
}

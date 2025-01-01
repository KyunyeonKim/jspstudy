package com.tmtb.test.mapper;

import com.tmtb.test.model.Member;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface MemberMapper {
    List<Member> findAll();

    void insertMember(Map<String, String> params);
}

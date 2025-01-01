package com.tmtb.test.service;

import com.tmtb.test.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberMapper memberMapper; // MemberMapper 주입

    @Override
    public void insertMember(Map<String, String> params) throws Exception {
        // 회원 정보 등록
        memberMapper.insertMember(params); // MemberMapper의 insertMember 호출

        // 회원 등록 확인 메시지 출력
        System.out.println("회원 정보 등록: " + params);
    }
}

package com.tmtb.test.service;

import org.springframework.stereotype.Service;

import java.util.Map;

public interface MemberService {
    void insertMember(Map<String, String> params) throws Exception;
}

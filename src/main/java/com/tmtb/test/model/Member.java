package com.tmtb.test.model;

import lombok.Data;

@Data
public class Member {
    private String id;       // 회원 아이디
    private String pass;     // 비밀번호
    private String name;     // 이름
    private String phone;    // 전화번호
    private String age;      // 나이
    private String gender;   // 성별
    private String email;    // 이메일
    private String address;  // 주소
    private String profile;  // 프로필 파일명
}

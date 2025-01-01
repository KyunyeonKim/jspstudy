package com.tmtb.test.controller;

import com.tmtb.test.mapper.MemberMapper;
import com.tmtb.test.model.Member;
import com.tmtb.test.service.MemberService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

@Slf4j
@Controller
public class MemberController {
    @Autowired
    private MemberService memberService;


    @PostMapping("/member/insert")
    public String insertMember(@RequestParam Map<String, String> params, Model model) {
        try {
            memberService.insertMember(params);
            model.addAttribute("message", "회원이 성공적으로 등록되었습니다.");
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("message", "회원 등록 중 오류가 발생했습니다.");
        }
        return "redirect:/member/success";
    }

    @GetMapping("/member/success")
    public String successPage() {
        return "successPage"; // 성공 메시지를 보여주는 페이지
    }

    @GetMapping("/insertpage")
    public String insertPage(){
        return "memberForm";
    }
}

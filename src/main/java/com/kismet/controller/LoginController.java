package com.kismet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {
    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @PostMapping("/login.do")
    public String loginDoController(@RequestParam("username") String name,
                                    @RequestParam("password") String pwd,
                                    Model model) {
        model.addAttribute("msg", "用户登入");
        model.addAttribute("username", name);
        model.addAttribute("password", pwd);
        if ("admin".equals(name)) {
            if ("123456".equals(pwd)) {
                return "success";
            }
        }
        return "error";
    }

    @PostMapping("/loginAjax")
    @ResponseBody
    public String loginByAjax(@RequestParam("username") String name,
                              @RequestParam("password") String pwd) {
        System.out.println("进入ajax的登入方法");
        System.out.println("接受的用户名：" + name + "   密码：" + pwd);

        String msg = "error";

        if ("admin".equals(name)) {
            if ("123456".equals(pwd)) {
                msg = "success";
            }
        }

        return msg;
    }
}

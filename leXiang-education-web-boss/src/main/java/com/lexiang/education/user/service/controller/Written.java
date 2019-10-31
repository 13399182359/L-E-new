package com.lexiang.education.user.service.controller;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/30 19:04
 * @Param
 * @return
 **/
public class Written implements Runnable {
    private String name;

    public Written(String name) {
        this.name=name;
    }
    @Override
    public void run() {
        for (int i = 0; i < 5; i++) {
            System.out.println(name + "运行  :  " + i);
        }
    }

    public static void main(String[] args) {
       // new Thread(new Written("C")).start();
      //  new Thread(new Written("D")).start();
      //  String s = "hello";
     //   money(s);
      //  System.out.println(s);
        String [] s1 = {"a","b","c"};
        String [] s2 = {"x","y","z"};

    }
    static void money(String s){
        s+=" word";
    }
}

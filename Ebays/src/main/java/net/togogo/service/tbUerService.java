package net.togogo.service;

import net.togogo.dao.TbUserDao;

//服务层，调用dao层
public class tbUerService {
    private TbUserDao Userdao=new TbUserDao();

    public void regist(String name,String password){
        Userdao.regist(name,password);
    }
}

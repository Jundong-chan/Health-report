package net.togogo.bean;

//与数据库对应的实体类
public class tb_user {
    private Integer id;
    private String name;
    private String password;
    private Integer is_super;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getIs_super() {
        return is_super;
    }

    public void setIs_super(Integer is_super) {
        this.is_super = is_super;
    }

    public tb_user(){

    }

    @Override
    public String toString() {
        return "tb_user{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", is_super=" + is_super +
                '}';
    }
}

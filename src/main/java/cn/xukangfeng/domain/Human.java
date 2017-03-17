package cn.xukangfeng.domain;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.Set;

/**
 * Created by F on 2016/6/29.
 */
@Entity(name = "f_entity_human")
public class Human implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
//    @GenericGenerator(name="idGenerator", strategy="uuid") //这个是hibernate的注解/生成32位UUID
//    @GeneratedValue(generator="idGenerator")
    private Integer pid;
    private String name; //姓名
    private String nameEng;
    private Date birthDate; //生日
    private String birthPlace; //出生地
    private String jobs; //身份
    private String biography;//个人简介
    private String gender;
    private Double height;

//    @ManyToMany
//    @OrderBy("year")
//    private Set<Film> filmsAsDirector; //导演作品列表
//
//    @ManyToMany
//    @OrderBy("year")
//    private Set<Film> filmsAsActor; //表演作品列表


    public Human(String name, String nameEng, Date birthDate, String birthPlace, String jobs, String biography, String gender, Double height, Set<Film> filmsAsDirector, Set<Film> filmsAsActor) {
        this.name = name;
        this.nameEng = nameEng;
        this.birthDate = birthDate;
        this.birthPlace = birthPlace;
        this.jobs = jobs;
        this.biography = biography;
        this.gender = gender;
        this.height = height;
//        this.filmsAsDirector = filmsAsDirector;
//        this.filmsAsActor = filmsAsActor;
    }

    public Human() {
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNameEng() {
        return nameEng;
    }

    public void setNameEng(String nameEng) {
        this.nameEng = nameEng;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public String getBirthPlace() {
        return birthPlace;
    }

    public void setBirthPlace(String birthPlace) {
        this.birthPlace = birthPlace;
    }

    public String getJobs() {
        return jobs;
    }

    public void setJobs(String jobs) {
        this.jobs = jobs;
    }

    public String getBiography() {
        return biography;
    }

    public void setBiography(String biography) {
        this.biography = biography;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Double getHeight() {
        return height;
    }

    public void setHeight(Double height) {
        this.height = height;
    }
//
//    public Set<Film> getFilmsAsDirector() {
//        return filmsAsDirector;
//    }
//
//    public void setFilmsAsDirector(Set<Film> filmsAsDirector) {
//        this.filmsAsDirector = filmsAsDirector;
//    }
//
//    public Set<Film> getFilmsAsActor() {
//        return filmsAsActor;
//    }
//
//    public void setFilmsAsActor(Set<Film> filmsAsActor) {
//        this.filmsAsActor = filmsAsActor;
//    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Human)) return false;

        Human human = (Human) o;

        return getName().equals(human.getName());

    }

    @Override
    public int hashCode() {
        return getName().hashCode();
    }
}

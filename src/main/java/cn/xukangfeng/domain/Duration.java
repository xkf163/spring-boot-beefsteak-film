package cn.xukangfeng.domain;

import javax.persistence.*;

/**
 * Created by F on 2016/6/28.
 * 影片时长
 */
@Entity(name = "f_property_duration")
public class Duration {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer did;

    private String version;
    private String runningTime;
    private String area;

    @Column(length = 500)
    private String description;

    @ManyToOne(cascade = {CascadeType.ALL})
    @JoinColumn(name = "fid")
    private Film film;

    public Duration() {
    }


    public Duration(String version, String runningTime, String area, String description, Film film) {
        this.version = version;
        this.runningTime = runningTime;
        this.area = area;
        this.description = description;
        this.film = film;
    }


    public Integer getDid() {
        return did;
    }

    public void setDid(Integer did) {
        this.did = did;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getRunningTime() {
        return runningTime;
    }

    public void setRunningTime(String runningTime) {
        this.runningTime = runningTime;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Film getFilm() {
        return film;
    }

    public void setFilm(Film film) {
        this.film = film;
    }
}

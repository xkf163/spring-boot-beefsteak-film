package cn.xukangfeng.domain;

import javax.persistence.*;

/**
 * Created by F on 2016/6/27.
 */
@Entity(name = "f_property_releasedate")
public class ReleaseDate {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long rid;
    private String releaseDate;
    private String area;

    @Column(length = 500)
    private String description;

    @ManyToOne(cascade = {CascadeType.ALL})
    @JoinColumn(name = "fid")
    private Film film;

    public ReleaseDate() {
    }

    public ReleaseDate(String releaseDate, String area, String description, Film film) {
        this.releaseDate = releaseDate;
        this.area = area;
        this.description = description;
        this.film = film;
    }

    public long getRid() {
        return rid;
    }

    public void setRid(long rid) {
        this.rid = rid;
    }

    public String getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(String releaseDate) {
        this.releaseDate = releaseDate;
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

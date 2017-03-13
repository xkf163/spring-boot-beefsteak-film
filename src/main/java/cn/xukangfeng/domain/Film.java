package cn.xukangfeng.domain;


import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;

/*
 * 电影类
 */
@Entity
@Table(name="f_entity_film_storage")
public class Film implements Serializable{

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer fid;
	private String name; //片名
	private String nameEng; //片名
	@Column(length = 500)
	private String nameAll; //所有片名

	private String gatherUrl;

	private String directors ; //导演集合

	private String stars; //演员们，String保存片中角色姓名

	private Date releaseDate; //上映日期

	@Column(length = 3 ,precision = 3,scale = 1)
	private Float rating; //IMDB评分

	private String genre; //影片类型

	private Integer duration; //片长 单位min分钟

	private String certificate; //分级
	private String country; //国家地区
	private String language;//语言
	private String imdb;//imdbno
	private String douban;//豆瓣
	private Short year;

	@Column(length = 500)
	private String memo; //幕后

	@Column(length = 500)
	private String titbit; //花絮

	@Column(length = 1000)
	private String storyline; //剧情简介

	@Column(length = 500)
	private String awards; //获奖记录

	@Column(length = 500)
	private String goof;

	@Column(length = 500)
	private String imgPath;


	public Film(){
		
	}

	public Integer getFid() {
		return fid;
	}

	public void setFid(Integer fid) {
		this.fid = fid;
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

	public String getNameAll() {
		return nameAll;
	}

	public void setNameAll(String nameAll) {
		this.nameAll = nameAll;
	}

	public String getGatherUrl() {
		return gatherUrl;
	}

	public void setGatherUrl(String gatherUrl) {
		this.gatherUrl = gatherUrl;
	}

	public String getDirectors() {
		return directors;
	}

	public void setDirectors(String directors) {
		this.directors = directors;
	}

	public String getStars() {
		return stars;
	}

	public void setStars(String stars) {
		this.stars = stars;
	}

	public Date getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
	}

	public Float getRating() {
		return rating;
	}

	public void setRating(Float rating) {
		this.rating = rating;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public Integer getDuration() {
		return duration;
	}

	public void setDuration(Integer duration) {
		this.duration = duration;
	}

	public String getCertificate() {
		return certificate;
	}

	public void setCertificate(String certificate) {
		this.certificate = certificate;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getImdb() {
		return imdb;
	}

	public void setImdb(String imdb) {
		this.imdb = imdb;
	}

	public String getDouban() {
		return douban;
	}

	public void setDouban(String douban) {
		this.douban = douban;
	}

	public Short getYear() {
		return year;
	}

	public void setYear(Short year) {
		this.year = year;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public String getTitbit() {
		return titbit;
	}

	public void setTitbit(String titbit) {
		this.titbit = titbit;
	}

	public String getStoryline() {
		return storyline;
	}

	public void setStoryline(String storyline) {
		this.storyline = storyline;
	}

	public String getAwards() {
		return awards;
	}

	public void setAwards(String awards) {
		this.awards = awards;
	}

	public String getGoof() {
		return goof;
	}

	public void setGoof(String goof) {
		this.goof = goof;
	}

	public String getImgPath() {
		return imgPath;
	}

	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
}

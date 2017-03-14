package cn.xukangfeng.web;

import cn.xukangfeng.domain.Film;
import cn.xukangfeng.domain.FilmRepository;
import cn.xukangfeng.system.EasyUIPage;
import cn.xukangfeng.system.EasyUITree;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by F on 2017/3/12.
 */
@RestController
public class FilmController {

    @Autowired
    private FilmRepository filmRepository;

    @GetMapping(value = "/films")
    public List<Film> getfilmList(){
        return filmRepository.findAll();
    }

    @PostMapping(value = "/films")
    public List<Film> postfilmList(){
        return filmRepository.findAll();
    }

//    @PageableDefault(value = 1 ,sort = {"fid"},direction = Sort.Direction.DESC) Pageable pageable
    @PostMapping(value = "/fs")
    public Page<Film> getFilmByPageable(EasyUIPage easyUIPage, @RequestParam(value = "page" ,defaultValue = "0",required = false) Integer page
                                            , @RequestParam(value = "size" ,defaultValue = "20",required = false) Integer size) {
        Sort sort = new Sort(Sort.Direction.DESC,"fid");
        Pageable pageable = new PageRequest(page,size,sort);
        return filmRepository.findAll(pageable);
    }

    @GetMapping(value = "/film/{id}")
    public Film getFilm(@PathVariable("id") Integer fid){
        return filmRepository.findOne(fid);
    }

    @PostMapping(value = "/year1/{year}")
    public List<Film> getFilmsByYear1(@PathVariable("year") Short year,EasyUIPage easyUIPage, @RequestParam(value = "page" ,defaultValue = "0",required = false) Integer page
            , @RequestParam(value = "size" ,defaultValue = "20",required = false) Integer size){

        return filmRepository.findByYear(year);
    }

    @PostMapping(value = "/year/{year}")
    public Page<Film> getFilmsByYear(@PathVariable("year") Short year){
        return filmRepository.findByYear(year);
    }


    @GetMapping(value = "/fy")
    public List<Film> findFilmDistinctByYear(){
        return filmRepository.findFilmDistinctByYearIsNotNull();
    }

    @GetMapping(value = "/year")
    public List<EasyUITree> findYearDistinct(){

        List<Short> list = filmRepository.findYearDistinct();

        EasyUITree pTree = new EasyUITree();

        List<EasyUITree> children =new ArrayList<EasyUITree>();
        List<EasyUITree> parent =new ArrayList<EasyUITree>();



        pTree.setId(1);
        pTree.setText("年代");
        pTree.setState("close");
        int i=10;
        for(Short year : list){
            EasyUITree cTree = new EasyUITree();
            cTree.setId(i);
            cTree.setText(Short.toString(year));
            Map<String,Object> map = new HashMap<String,Object>();
            map.put("url","/year/"+year);
            map.put("target","new");
            cTree.setAttributes(map);
            children.add(cTree);

            i++;
        }
        pTree.setChildren(children);
        parent.add(pTree);
        return parent;
    }


}


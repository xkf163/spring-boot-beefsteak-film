package cn.xukangfeng.web;

import cn.xukangfeng.domain.Film;
import cn.xukangfeng.domain.FilmRepository;
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


    //**POST方法

    /**
     * 根据关键字Year获取符合条件的查询结果，datagrid展示数据
     * @param year
     * @param page
     * @param rows
     * @param sort
     * @param order
     * @return
     */
    @PostMapping(value = "/json/year/{year}")
    public Page<Film> findByYearGet(@PathVariable("year") Short year,
                                    @RequestParam(value = "page" ,defaultValue = "1" ,required = false) Integer page,
                                    @RequestParam(value = "rows" ,defaultValue = "20" ,required = false) Integer rows,
                                    @RequestParam(value = "sort",defaultValue = "fid",required = false) String sort,
                                    @RequestParam(value = "order",defaultValue = "DESC",required = false) String order){
        Sort querySort = new Sort(Sort.Direction.DESC,sort);
        Pageable pageable = new PageRequest(page-1,rows,querySort);
        return filmRepository.findByYear(year,pageable);
    }


    /**
     * 获取字段Year的所有值,去除重复值，导航树展示数据
     * @return
     */
    @PostMapping(value = "/json/years")
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
            map.put("url","/json/year/"+year);
            map.put("target","new");
            cTree.setAttributes(map);
            children.add(cTree);
            i++;
        }
        pTree.setChildren(children);
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("url","/json/films");
        map.put("target","new");
        pTree.setAttributes(map);
        parent.add(pTree);
        return parent;
    }


    //  @PageableDefault(value = 1 ,sort = {"fid"},direction = Sort.Direction.DESC) Pageable pageable
    @PostMapping(value = "/json/films")
    public Page<Film> getFilmByPageable(@RequestParam(value = "page" ,defaultValue = "1",required = false) Integer page
            , @RequestParam(value = "rows" ,defaultValue = "20",required = false) Integer rows) {
        Sort sort = new Sort(Sort.Direction.ASC,"fid");
        Pageable pageable = new PageRequest(page-1,rows,sort);
        return filmRepository.findAll(pageable);
    }




//    @GetMapping(value = "/films")
//    public List<Film> getfilmList(){
//        return filmRepository.findAll();
//    }

//    @PostMapping(value = "/films")
//    public List<Film> postfilmList(){
//        return filmRepository.findAll();
//    }



    @GetMapping(value = "/film/{id}")
    public Film getFilm(@PathVariable("id") Integer fid){
        return filmRepository.findOne(fid);
    }

    @GetMapping(value = "/y/{year}")
    public List<Film> findByYear(@PathVariable("year") Short year){
        return filmRepository.findByYear(year);
    }




//    @GetMapping(value = "/years")
//    public List<Film> findFilmDistinctByYear(){
//        return filmRepository.findFilmDistinctByYearIsNotNull();
//    }



}


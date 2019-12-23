package com.softeem.easyblog.web;


import com.softeem.easyblog.service.BlogService;
import com.softeem.easyblog.util.ResponseConstant;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/blog")

public class BlogController {
    private final Logger logger = LoggerFactory.getLogger(BlogController.class);

    @Autowired
    private BlogService expert;

    @RequestMapping(value = "query", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
    //@ResponseBody
    public ResponseEntity<ModelMap> answer(
            @RequestParam String blogName) {
        ModelMap modelMap = new ModelMap();
        try {
            modelMap = expert.parse(blogName);
            modelMap.put(ResponseConstant.STATUS, 0);
        } catch (Exception ex) {
            modelMap.put(ResponseConstant.STATUS, -1);
            modelMap.put(ResponseConstant.MESSAGE, ex.getMessage());
        }
        modelMap.put("version", 1);
        return ResponseEntity.status(HttpStatus.OK).body(modelMap);
    }
}

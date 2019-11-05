package com.apakhomov.leakdemo;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {
    static Logger logger = LoggerFactory.getLogger(Controller.class);

    private Buffer buffer = new Buffer();

    @RequestMapping(method = RequestMethod.POST, path = "/add")
    public void write(@RequestParam(name = "count") int count) {
        logger.info("Add {} times", count);
        for (int i = 0; i < count; i++) {
            buffer.add(1);
        }
    }

    @RequestMapping(method = RequestMethod.GET, path = "/sum")
    public long read(@RequestParam(name = "count") int count) {
        return buffer.sum();
    }
}

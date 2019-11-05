package com.apakhomov.leakdemo;

import java.util.ArrayList;
import java.util.List;

public class Buffer {
    private List<Integer> buffer = new ArrayList<>();

    public void add(int val) {
        buffer.add(val);
    }

    public long sum() {
        return buffer.stream()
                     .mapToInt(Integer::valueOf)
                     .sum();
    }
}

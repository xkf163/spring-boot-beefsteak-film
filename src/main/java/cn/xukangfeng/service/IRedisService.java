package cn.xukangfeng.service;

import redis.clients.jedis.Jedis;

/**
 * Created by F on 2017/3/23.
 */
public interface IRedisService {
    public Jedis getResource();

    public void returnResource(Jedis jedis);

    public void set(String key, String value);

    public String get(String key);
}

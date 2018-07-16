package ca.uSherbrooke.gegi.server.guice;

import org.mybatis.guice.XMLMyBatisModule;

/**
 * Created by goud2703 on 08/02/18.
 * Java webapp Guice module for MyBatis using default mybatis-config.xml in META-INF folder
 */
public class MyBatisModule extends XMLMyBatisModule {

    @Override
    protected void initialize() {

        setClassPathResource("META-INF/mybatis-config.xml");
    }
}
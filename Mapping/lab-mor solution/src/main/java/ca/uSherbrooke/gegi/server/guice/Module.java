package ca.uSherbrooke.gegi.server.guice;

import com.google.inject.AbstractModule;

public class Module extends AbstractModule {
    @Override
    protected void configure() {
        install(new MyBatisModule());
    }
}

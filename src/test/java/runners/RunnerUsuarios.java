package runners;

import com.intuit.karate.junit5.Karate;

public class RunnerUsuarios {

    @Karate.Test
    Karate testUsuarios() {
        return Karate.run("classpath:features/usuarios").relativeTo(getClass());
    }
}

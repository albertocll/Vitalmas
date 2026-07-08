package api.config;

import org.springframework.stereotype.Component;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@Component
public class TokenBlacklist {

    private final Set<String> blacklist = Collections.synchronizedSet(new HashSet<>());

    public void invalidar(String token) {
        blacklist.add(token);
    }

    public boolean estaInvalidado(String token) {
        return blacklist.contains(token);
    }
}
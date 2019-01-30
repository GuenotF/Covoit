package forms;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

public class LoginForm {
    private static final String EMAIL  = "email";
    private static final String PASSWORD   = "password";

    private String results;
    private Map<String, String> errors = new HashMap<String, String>();

    public String getResults() {
        return results;
    }

    public Map<String, String> getErrors() {
        return errors;
    }

//    public User login(HttpServletRequest request ) {
//        String email = getValeurChamp( request, EMAIL );
//        String motDePasse = getValeurChamp( request, PASSWORD );
//
//        User user = new User();
//
//        try {
//            validationEmail( email );
//        } catch ( Exception e ) {
//            setErreur( EMAIL, e.getMessage() );
//        }
//        user.setEmail( email );
//
//        /* Validation du champ mot de passe. */
//        try {
//            validationMotDePasse( motDePasse );
//        } catch ( Exception e ) {
//            setErreur( PASSWORD, e.getMessage() );
//        }
//        user.setPassword( motDePasse );
//
//        /* Initialisation du résultat global de la validation. */
//        if ( errors.isEmpty() ) {
//            results = "Succès de la connexion.";
//        } else {
//            results = "Échec de la connexion.";
//        }
//
//        return user;
//    }

    private void validationEmail( String email ) throws Exception {
        if ( email != null && !email.matches( "([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)" ) ) {
            throw new Exception( "Merci de saisir une adresse mail valide." );
        }
    }

    private void validationMotDePasse( String motDePasse ) throws Exception {
        if ( motDePasse != null ) {
            if ( motDePasse.length() < 3 ) {
                throw new Exception( "Le mot de passe doit contenir au moins 3 caractères." );
            }
        } else {
            throw new Exception( "Merci de saisir votre mot de passe." );
        }
    }

    private void setErreur( String champ, String message ) {
        errors.put( champ, message );
    }

    private static String getValeurChamp(HttpServletRequest request, String nomChamp ) {
        String valeur = request.getParameter( nomChamp );
        if ( valeur == null || valeur.trim().length() == 0 ) {
            return null;
        } else {
            return valeur;
        }
    }
}

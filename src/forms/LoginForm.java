package forms;

import dao.UsersDAO;
import models.UsersEntity;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

public class LoginForm {
    private static final String EMAIL  = "email";
    private static final String PASSWORD   = "password";
    private Boolean userExist = false;

    private String results;
    private Map<String, String> errors = new HashMap<String, String>();

    public String getResults() {
        return results;
    }

    public Map<String, String> getErrors() {
        return errors;
    }

    public UsersDAO login(HttpServletRequest request ) {
        String email = getValeurChamp( request, EMAIL );
        String password = getValeurChamp( request, PASSWORD );
        HttpSession session;
        UsersDAO usersDAO = new UsersDAO();

        UsersEntity user  = usersDAO.findUserByEmail(email);

        if (usersDAO.findUserByEmailAndPassword(user.getEmail(), user.getPassword())) {
            this.userExist = true;
        }

        try {
            validationEmail( email );
        } catch ( Exception e ) {
            setErreur( EMAIL, e.getMessage() );
        }

        try {
            validationMotDePasse( password );
        } catch ( Exception e ) {
            setErreur( PASSWORD, e.getMessage() );
        }
        user.setPassword( password );




        if ( errors.isEmpty() && userExist) {
            results = "Succès de la connexion.";
        } else {
            results = "Échec de la connexion.";
        }

        return usersDAO;
    }

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

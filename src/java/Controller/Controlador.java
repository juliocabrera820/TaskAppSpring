package Controller;

import Entidad.Tarea;
import config.Conexion;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author julio-cabrera
 */
@Controller
public class Controlador {

    Conexion con = new Conexion();
    JdbcTemplate jdbctemplate = new JdbcTemplate(con.conectar());
    ModelAndView mv = new ModelAndView();
    int id;
    List consulta;
    ModelAndView index = new ModelAndView("redirect:/index.htm");

    @RequestMapping("index.htm")
    public ModelAndView mostrarTareas() {

        String sql = "select * from tareas";
        consulta = jdbctemplate.queryForList(sql);
        mv.addObject("datos", consulta);
        mv.setViewName("index");
        return mv;
    }

    @RequestMapping(value = "agregarTarea.htm", method = RequestMethod.GET)
    public ModelAndView agregarTarea() {
        mv.addObject(new Tarea());
        mv.setViewName("agregarTarea");
        return mv;
    }

    @RequestMapping(value = "agregarTarea.htm", method = RequestMethod.POST)
    public ModelAndView agregarTareaDatos(Tarea task) {
        String sql = "insert into tareas(titulo,descripcion,responsable,prioridad) values(?,?,?,?)";
        jdbctemplate.update(sql, task.getTitulo(), task.getDescripcion(), task.getResponsable(), task.getPrioridad());
        return index;
    }

    @RequestMapping(value = "eliminarTarea.htm")
    public ModelAndView eliminarTarea(HttpServletRequest request) {
        id = Integer.parseInt(request.getParameter("id"));
        String sql = "delete from tareas where id=" + id;
        jdbctemplate.update(sql);
        return index;
    }

    @RequestMapping(value = "editarTarea", method = RequestMethod.GET)
    public ModelAndView editarTarea(HttpServletRequest request) {
        id = Integer.parseInt(request.getParameter("id"));
        String sql = "select * from tareas where id=" + id;
        consulta = jdbctemplate.queryForList(sql);
        mv.addObject("datos",consulta);
        mv.setViewName("editarTarea");
        return mv;
    }
    
    @RequestMapping(value="editarTarea",method = RequestMethod.POST)
    public ModelAndView editarTareaDatos(Tarea task){
        String sql = "update tareas set titulo=?,descripcion=?,responsable=?,prioridad=? where id=?";
        jdbctemplate.update(sql,task.getTitulo(),task.getDescripcion(),task.getResponsable(),task.getPrioridad(),id);
        return index;
    }

}

package ${BasePackageName}${ControllerPackageName};

import ${BasePackageName}${EntityPackageName}.${ClassName};
import ${BasePackageName}${ServicePackageName}.${ClassName}Handler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.cnzhcf.paas.commons.util.Response;

/**
 * Author ${Author}
 * Date  ${Date}
 */
@RestController
@RequestMapping(value = "/${EntityName}")
public class ${ClassName}Controller {

    @Autowired
    private ${ClassName}Handler ${EntityName}Handler;

    @GetMapping(value = "/getPageList")
    public Response getPageList(Integer pageIndex, Integer pageSize,${ClassName} ${EntityName}) {
        return ${EntityName}Handler.getPageList(pageIndex,pageSize,${EntityName});
    }

    @GetMapping(value = "/getInfo")
    public Response getInfo(Long id) {
        return ${EntityName}Handler.get(id);
    }

    @PostMapping(value = "/insert")
    public Response insert(@RequestBody ${ClassName} ${EntityName}) {
        return ${EntityName}Handler.insert(${EntityName});
    }

    @PostMapping(value = "/update")
    public Response update(@RequestBody ${ClassName} ${EntityName}) {
        return ${EntityName}Handler.update(${EntityName});
    }

    @GetMapping(value = "/updateEnable")
    public Response updateEnable(Long id) {
        return ${EntityName}Handler.updateEnable(id);
    }
}

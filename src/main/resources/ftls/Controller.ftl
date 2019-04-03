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
 * ${description}
 * @author ${Author}
 * @date ${Date}
 * @version 1.0
 */
@RestController
@RequestMapping(value = "/${EntityName}")
public class ${ClassName}Controller {

    @Autowired
    private ${ClassName}Handler ${EntityName}Handler;

    /**
     * 获取${description}分页列表
     * @author ${Author}
     * @date ${Date}
     * @param pageIndex,pageSize,${EntityName}
     */
    @GetMapping(value = "/getPageList")
    public Response getPageList(Integer pageIndex, Integer pageSize,${ClassName} ${EntityName}) {
        return ${EntityName}Handler.getPageList(pageIndex,pageSize,${EntityName});
    }

    /**
     * 获取${description}详情
     * @author ${Author}
     * @date ${Date}
     * @param id
     */
    @GetMapping(value = "/getInfo")
    public Response getInfo(Long id) {
        return ${EntityName}Handler.getInfo(id);
    }

    /**
     * 新增${description}
     * @author ${Author}
     * @date ${Date}
     * @param ${EntityName}
     */
    @PostMapping(value = "/insert")
    public Response insert(@RequestBody ${ClassName} ${EntityName}) {
        return ${EntityName}Handler.insert(${EntityName});
    }

    /**
     * 修改${description}
     * @author ${Author}
     * @date ${Date}
     * @param ${EntityName}
     */
    @PostMapping(value = "/update")
    public Response update(@RequestBody ${ClassName} ${EntityName}) {
        return ${EntityName}Handler.update(${EntityName});
    }

    /**
     * 启用禁用${description}
     * @author ${Author}
     * @date ${Date}
     * @param id
     */
    @GetMapping(value = "/updateEnable")
    public Response updateEnable(Long id) {
        return ${EntityName}Handler.updateEnable(id);
    }
}

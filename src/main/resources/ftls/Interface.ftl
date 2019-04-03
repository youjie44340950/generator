package ${BasePackageName}${InterfacePackageName};

import ${BasePackageName}${EntityPackageName}.${ClassName};
import com.cnzhcf.paas.commons.util.Response;

/**
 * ${description}Handler
 * @author ${Author}
 * @date ${Date}
 * @version 1.0
 */
public interface ${ClassName}Handler {
    /**
     * 获取${description}详情
     * @author ${Author}
     * @date ${Date}
     * @param id
     */
    Response getInfo(Long id);
    /**
     * 获取${description}分页列表
     * @author ${Author}
     * @date ${Date}
     * @param pageIndex,pageSize,${EntityName}
     */
    Response getPageList(Integer pageIndex, Integer pageSize,${ClassName} ${EntityName});
    /**
     * 新增${description}
     * @author ${Author}
     * @date ${Date}
     * @param ${EntityName}
     */
    Response insert(${ClassName} ${EntityName});
    /**
     * 修改${description}
     * @author ${Author}
     * @date ${Date}
     * @param ${EntityName}
     */
    Response update(${ClassName} ${EntityName});
    /**
     * 启用禁用${description}
     * @author ${Author}
     * @date ${Date}
     * @param id
     */
    Response updateEnable(Long id);
}

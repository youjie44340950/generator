package ${BasePackageName}${InterfacePackageName};

import ${BasePackageName}${EntityPackageName}.${ClassName};
import com.cnzhcf.paas.commons.util.Response;

/**
 * Author ${Author}
 * Date  ${Date}
 */
public interface ${ClassName}Handler {

    Response get(Long id);

    Response getPageList(Integer pageIndex, Integer pageSize,${ClassName} ${EntityName});

    Response insert(${ClassName} ${EntityName});

    Response update(${ClassName} ${EntityName});

    Response updateEnable(Long id);

}

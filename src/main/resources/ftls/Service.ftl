package ${BasePackageName}${ServicePackageName};

import ${BasePackageName}${DaoPackageName}.${ClassName}Mapper;
import ${BasePackageName}${EntityPackageName}.${ClassName};
${InterfaceImport}
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cnzhcf.paas.commons.util.Response;
import com.cnzhcf.paas.commons.mybatis.page.Page;
import com.cnzhcf.paas.commons.mybatis.page.PageUtil;

import java.util.List;

/**
 * Author ${Author}
 * Date  ${Date}
 */
@Service
public class ${ClassName}Handler${Impl} {

    @Autowired
    private ${ClassName}Mapper ${EntityName}Mapper;

    ${Override}
        public Response get(Long id){
        try {
            ${ClassName} result = ${EntityName}Mapper.find(id);
            return Response.of(result);
        }catch (Exception e){
            e.printStackTrace();
            return Response.fail(e.getMessage());
        }
    }

    ${Override}
    public Response getPageList(Integer pageIndex, Integer pageSize,${ClassName} ${EntityName}) {
        try {
            Page page = PageUtil.setPage(pageIndex, pageSize);
            List<${ClassName}> result = ${EntityName}Mapper.findList(page, ${EntityName});
            page.setResult(result);
            return Response.of(page);
        }catch (Exception e){
            e.printStackTrace();
            return Response.fail(e.getMessage());
        }
    }

    ${Override}
    public Response insert(${ClassName} ${EntityName}) {
        try {
            ${EntityName}Mapper.insert(${EntityName});
            return Response.of();
        }catch (Exception e){
            e.printStackTrace();
            return Response.fail(e.getMessage());
        }
    }

    ${Override}
    public Response update(${ClassName} ${EntityName}) {
        try {
            ${EntityName}Mapper.update(${EntityName});
            return Response.of();
        }catch (Exception e){
            e.printStackTrace();
            return Response.fail(e.getMessage());
        }
    }

    ${Override}
    public Response updateEnable(Long id) {
        try {
            ${EntityName}Mapper.update(${EntityName});
            return Response.of();
        }catch (Exception e){
            e.printStackTrace();
            return Response.fail(e.getMessage());
        }
    }

}

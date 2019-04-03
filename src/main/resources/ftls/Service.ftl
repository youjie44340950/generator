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
* ${ClassName}Handler实现
* @author ${Author}
* @date ${Date}
* @version 1.0
*/
@Service
public class ${ClassName}Handler${Impl} {

    @Autowired
    private ${ClassName}Mapper ${EntityName}Mapper;
    ${Override}
    public Response getInfo(Long id){
        if (StringUtil.isEmpty(id)){
            return Response.fail(CommonMess.ID_NULL.getMessage());
        }
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
            ${EntityName}.setIsEnable((short)0);
            ${EntityName}.setCreatedStamp(DateUtil.getDate());
            ${EntityName}Mapper.insert(${EntityName});
            return Response.of();
        }catch (Exception e){
            e.printStackTrace();
            return Response.fail(e.getMessage());
        }
    }
    ${Override}
    public Response update(${ClassName} ${EntityName}) {
        if (StringUtil.isEmpty(${EntityName}.getId())){
            return Response.fail(CommonMess.ID_NULL.getMessage());
        }
        try {
            ${EntityName}.setLastUpdatedStamp(DateUtil.getDate());
            ${EntityName}Mapper.update(${EntityName});
            return Response.of();
        }catch (Exception e){
            e.printStackTrace();
            return Response.fail(e.getMessage());
        }
    }
    ${Override}
    public Response updateEnable(Long id) {
        if (StringUtil.isEmpty(id)){
            return Response.fail(CommonMess.ID_NULL.getMessage());
        }
        try {
            ${ClassName} ${EntityName} = ${EntityName}Mapper.find(id);
            if (${EntityName} == null){
                return Response.of(CommonMess.DATA_NULL.getMessage());
            }
            ${EntityName}.setLastUpdatedStamp(DateUtil.getDate());
            ${EntityName}.setIsEnable(${EntityName}.getIsEnable() == 0 ? (short)1 : 0);
            ${EntityName}Mapper.update(${EntityName});
            return Response.of();
        }catch (Exception e){
            e.printStackTrace();
            return Response.fail(e.getMessage());
        }
    }
}

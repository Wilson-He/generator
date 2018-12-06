package per.wilson.generator.extend.converter;

import per.baomidou.mybatisplus.generator.config.ITypeConvert;
import per.baomidou.mybatisplus.generator.config.rules.DbColumnType;

/**
 * PostgresSqlConverter
 *
 * @author Wilson
 * @since 18-5-28
 */
public class PostgresSqlConverter implements ITypeConvert {
    @Override
    public DbColumnType processTypeConvert(String fieldType) {
        String t = fieldType.toLowerCase();
        if (t.contains("var") && t.contains("char")) {
            return DbColumnType.VARCHAR;
        } else if (t.contains("char")) {
            return DbColumnType.CHAR;
        } else if (t.contains("bigint")) {
            return DbColumnType.BIGINT;
        } else if (t.contains("int")) {
            return DbColumnType.INTEGER;
        } else if (t.contains("date") || t.contains("year")) {
            return DbColumnType.DATE;
        } else if (t.contains("timestamp")) {
            return DbColumnType.TIMESTAMP;
        } else if (t.contains("text")) {
            return DbColumnType.STRING;
        } else if (t.contains("bit")) {
            return DbColumnType.BOOLEAN;
        } else if (t.contains("decimal")) {
            return DbColumnType.DECIMAL;
        } else if (t.contains("clob")) {
            return DbColumnType.CLOB;
        } else if (t.contains("blob")) {
            return DbColumnType.BYTE_ARRAY;
        } else if (t.contains("float")) {
            return DbColumnType.FLOAT;
        } else if (t.contains("double")) {
            return DbColumnType.DOUBLE;
        } else if (t.contains("json") || t.contains("enum")) {
            return DbColumnType.STRING;
        } else if (t.contains("boolean")) {
            return DbColumnType.BOOLEAN;
        }
        return DbColumnType.VARCHAR;
    }
}

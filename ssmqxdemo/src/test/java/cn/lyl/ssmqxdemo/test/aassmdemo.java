package cn.lyl.ssmqxdemo.test;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.mybatis.generator.api.MyBatisGenerator;
import org.mybatis.generator.config.Configuration;
import org.mybatis.generator.config.xml.ConfigurationParser;
import org.mybatis.generator.exception.InvalidConfigurationException;
import org.mybatis.generator.exception.XMLParserException;
import org.mybatis.generator.internal.DefaultShellCallback;

public class aassmdemo{
	
	
	public void datas() {
		
	}
	
	@Test
	public void RunMbg() throws IOException, XMLParserException, InvalidConfigurationException, SQLException, InterruptedException {
		   List<String> warnings = new ArrayList<String>();
		   boolean overwrite = true;
		   String path = this.getClass().getClassLoader().getResource("mbgConfig.xml").getPath();
		   System.out.println(path);
		   File configFile = new File(path);
		   ConfigurationParser cp = new ConfigurationParser(warnings);
		   Configuration config = cp.parseConfiguration(configFile);
		   DefaultShellCallback callback = new DefaultShellCallback(overwrite);
		   MyBatisGenerator myBatisGenerator = new MyBatisGenerator(config, callback, warnings);
		   myBatisGenerator.generate(null);
	}
}

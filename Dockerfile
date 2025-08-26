# Dùng Tomcat 9 + JDK 21
FROM tomcat:9.0-jdk21-temurin

# Xóa ứng dụng mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR đã export từ Eclipse vào Tomcat
COPY chapter4_ex1.war /usr/local/tomcat/webapps/ROOT.war

# Expose port
EXPOSE 8080

# Run Tomcat
CMD ["catalina.sh", "run"]
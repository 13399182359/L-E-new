package com.lexiang.education.user.service.controller;

import java.io.FileWriter;
import java.io.IOException;

public class AlipayConfig {
    //↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

    // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
    public static String app_id = "2016101300672748";

    // 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDFJcxb8MDZT7oesrIjkM5agRWFMiBBW9RuwK/yFuXTmZ5C1HnWJHwtOvfjnhzo7ORRn1t0ntesEN5Jm9sCbS01weY8aBfezTyuxrtYeapkveG1D2NiNovFvjoo1oXXPhTW3P+90haYNggt+/297R4b76kPCqL7AyFM8GpwQ8wg6wrEM1oA2MiJ21F+GDZqDzLHkLOcgJlCi+kaPU2iRguoLJnGV/CXBKIMh6tAck7Ruo/lcrjNvH7LNNgNp9dIjENx0NussJtuVy5zpZ5wGkjYe/BrV3aSDr4nf7gMpo+3jTMDMR7dtmyi3aedcaHdM9HbeGN/dBjfeQnzHVIAJR4xAgMBAAECggEAQWm+Oc9THYefmKnwA277mPn1mwE7xJPkk27psii4zxHMeh4n4s6uSQ+kymhe7UYUp6R5YuOFafka2E+XRmHVO13/t5FOQkXU2aTk6oFL8SszpbDaZ+7zR4RLpdswA2/82CHx1RjNGGntItzWn1r6v4gwjuYXl7O9K9slZeSI6W6d0mZRxIj+G4LlAJenBaDhuu5BBkEfXwcP1Ctk/mHt8zNHMJIIXHPnL0wokyNB8t38EPEAOCHtyk5U01zwVZnO0L30Z5uQtMpXulUAOlYfpDIltBSr2tNlDT5fJtKzGSZwv7uR6X4OvNVPmK+ZD5zvbJe634N15w61ITfzFYjQAQKBgQDzJnZ4Wv/pOnQSjvbyaJmIYurvWoLPhQsCLcPMLY8n6Qjbp5au8uXQYoBawnuqbXN/LkhV9iULcqZVM1MubFA5FR+YfbhzUU+MWO/Xd5zI1lVJS1SeAkjL7IDpYOXfVstSXMRn9U3WJGSnaAkpC7bYau9DJ+4e1yb7crIt6TEfAQKBgQDPkPlzXJx7YGQ21COQ3f0/u81J3I4UhPoj53r2rja6DrukjSVik2NaVR5zE70/pnQS1eFMbNV7g3SV+btJb2qq79f4QS6pQc66pImlZwJkU6UbG7KmdmBWIIlteOJTKZtqu0JBDKVJK+LAQjn14+mmGvgOX6qMyVEl3x4/xg0vMQKBgGuBJgAwu9Uysv9Blo23EarrkVQigJOgDy33bgpoWlMbBX+YqVbQritkYbu/IU5I9jfVDsZy/g4BsukYuD5eRVn3rPCPJW5XFQTIjcKGcBucKDkvxUnXWLhQ6O5GmVwV0++mdHBCVRfJH3ek1+f99enZ3c+jZ/Tay7GBFKaX49ABAoGBAMTpdwzvFfChsFCnjhoXzvIQmx9wIkXrJVa8elXdTkPSSEdCM+5Bfuaqi5mGZ2oj4kggKX2UXi6vtgG1ieyPy3Tg1lVImRivOoysHX0RrR46kA6YhzIOaTQr59Q38xYMCcoGXkNR2NgCzzmvWkcgcX9IZH1WWnj3X4l7ErpTjBxxAoGBAMezKLlFNJji2CGdK/C2RUkDHP9otlxnfe5xoorAjPpZTUgw/puhkBBbsDguu91pYXpcIRz+Lyi6a/I0CL6UPofaEjVG63LK0gRWul5Lll73iF3X717gBX1Sk824VoR2dWy1+RbYRVrmkHn1aRaGVFtPCegqKN+uwuLw6Jl+8M80";
    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAyINX/R0GlAWf1kHp6AM67k5ar8AbDt6k8sxwPWQ+X3O7jcBzG6VsvDSlzmQqS3OdSxYoRWseBPQYf5kr13+RLDY4pcAs0heJ748a+YGmCuSwR6NrBFduC5zSIDKe6rwzucRSZqjJiLoLrdm2MQW7gWVubr2B8pfb9W+OtNxJj1J2/x8YA2slbVlGLxovWiHvDOw/g8jHOXmBrQ/INdOQ55B8BtzzPycfDepl+L3NoKpgz+Fa7aPfZ2BI55E+phtxKuRHY7junJt20p6WrEkXvzM1l0vdJ9AIHTq/sJz36muLELKo+zGLFiIIN0gqN7kT+zyZB4ITZzc06clF13g86wIDAQAB";
    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String notify_url = "http://localhost:8081/medicine-springboot-maven/doctor/notify_url.html";

    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String return_url = "http://localhost:5880/pageZhang/toAdminAdmin";

    // 签名方式
    public static String sign_type = "RSA2";

    // 字符编码格式
    public static String charset = "utf-8";

    // 支付宝网关
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

    // 支付宝网关
    public static String log_path = "https://openapi.alipaydev.com/gateway.do";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /**
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

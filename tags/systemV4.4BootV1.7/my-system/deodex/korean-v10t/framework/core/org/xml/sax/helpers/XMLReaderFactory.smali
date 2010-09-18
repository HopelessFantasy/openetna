.class public final Lorg/xml/sax/helpers/XMLReaderFactory;
.super Ljava/lang/Object;
.source "XMLReaderFactory.java"


# static fields
.field private static final property:Ljava/lang/String; = "org.xml.sax.driver"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static createXMLReader()Lorg/xml/sax/XMLReader;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, className:Ljava/lang/String;
    invoke-static {}, Lorg/xml/sax/helpers/NewInstance;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 111
    .local v3, loader:Ljava/lang/ClassLoader;
    :try_start_5
    const-string v6, "org.xml.sax.driver"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_a} :catch_50

    move-result-object v0

    .line 115
    :goto_b
    if-nez v0, :cond_2c

    .line 117
    :try_start_d
    const-string v5, "META-INF/services/org.xml.sax.driver"

    .line 121
    .local v5, service:Ljava/lang/String;
    if-nez v3, :cond_35

    .line 122
    invoke-static {v5}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 126
    .local v2, in:Ljava/io/InputStream;
    :goto_15
    if-eqz v2, :cond_2c

    .line 128
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF8"

    invoke-direct {v6, v2, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v7, 0x2000

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 131
    .local v4, reader:Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2c} :catch_4e

    .line 139
    .end local v2           #in:Ljava/io/InputStream;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .end local v5           #service:Ljava/lang/String;
    :cond_2c
    :goto_2c
    if-nez v0, :cond_2e

    .line 150
    :cond_2e
    if-eqz v0, :cond_3a

    .line 151
    invoke-static {v3, v0}, Lorg/xml/sax/helpers/XMLReaderFactory;->loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v6

    .line 155
    :goto_34
    return-object v6

    .line 124
    .restart local v5       #service:Ljava/lang/String;
    :cond_35
    :try_start_35
    invoke-virtual {v3, v5}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_4e

    move-result-object v2

    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_15

    .line 155
    .end local v2           #in:Ljava/io/InputStream;
    .end local v5           #service:Ljava/lang/String;
    :cond_3a
    :try_start_3a
    new-instance v6, Lorg/xml/sax/helpers/ParserAdapter;

    invoke-static {}, Lorg/xml/sax/helpers/ParserFactory;->makeParser()Lorg/xml/sax/Parser;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/helpers/ParserAdapter;-><init>(Lorg/xml/sax/Parser;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_43} :catch_44

    goto :goto_34

    .line 156
    :catch_44
    move-exception v6

    move-object v1, v6

    .line 157
    .local v1, e:Ljava/lang/Exception;
    new-instance v6, Lorg/xml/sax/SAXException;

    const-string v7, "Can\'t create default XMLReader; is system property org.xml.sax.driver set?"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 134
    .end local v1           #e:Ljava/lang/Exception;
    :catch_4e
    move-exception v6

    goto :goto_2c

    .line 112
    :catch_50
    move-exception v6

    goto :goto_b
.end method

.method public static createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;
    .registers 2
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {}, Lorg/xml/sax/helpers/NewInstance;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/xml/sax/helpers/XMLReaderFactory;->loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v0

    return-object v0
.end method

.method private static loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/xml/sax/XMLReader;
    .registers 10
    .parameter "loader"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string v7, "SAX2 driver class "

    .line 190
    :try_start_2
    invoke-static {p0, p1}, Lorg/xml/sax/helpers/NewInstance;->newInstance(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/xml/sax/XMLReader;
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_8} :catch_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_8} :catch_2a
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_8} :catch_4b
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_8} :catch_6c

    return-object p0

    .line 191
    :catch_9
    move-exception v4

    move-object v0, v4

    .line 192
    .local v0, e1:Ljava/lang/ClassNotFoundException;
    new-instance v4, Lorg/xml/sax/SAXException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SAX2 driver class "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 194
    .end local v0           #e1:Ljava/lang/ClassNotFoundException;
    :catch_2a
    move-exception v4

    move-object v1, v4

    .line 195
    .local v1, e2:Ljava/lang/IllegalAccessException;
    new-instance v4, Lorg/xml/sax/SAXException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SAX2 driver class "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " found but cannot be loaded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 197
    .end local v1           #e2:Ljava/lang/IllegalAccessException;
    :catch_4b
    move-exception v4

    move-object v2, v4

    .line 198
    .local v2, e3:Ljava/lang/InstantiationException;
    new-instance v4, Lorg/xml/sax/SAXException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SAX2 driver class "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " loaded but cannot be instantiated (no empty public constructor?)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 201
    .end local v2           #e3:Ljava/lang/InstantiationException;
    :catch_6c
    move-exception v4

    move-object v3, v4

    .line 202
    .local v3, e4:Ljava/lang/ClassCastException;
    new-instance v4, Lorg/xml/sax/SAXException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SAX2 driver class "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not implement XMLReader"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method

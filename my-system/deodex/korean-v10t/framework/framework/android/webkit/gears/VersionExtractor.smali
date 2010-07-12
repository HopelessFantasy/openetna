.class public final Landroid/webkit/gears/VersionExtractor;
.super Ljava/lang/Object;
.source "VersionExtractor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Gears-J-VersionExtractor"

.field private static final URL:Ljava/lang/String; = "em:updateLink"

.field private static final VERSION:Ljava/lang/String; = "em:version"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extract(Ljava/lang/String;J)Z
    .registers 13
    .parameter "xml"
    .parameter "nativeObject"

    .prologue
    const/4 v9, 0x0

    const-string v8, "Gears-J-VersionExtractor"

    .line 67
    :try_start_3
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 68
    .local v3, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 69
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 72
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v6, Lorg/xml/sax/InputSource;

    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 76
    .local v1, doc:Lorg/w3c/dom/Document;
    const-string v6, "em:version"

    invoke-static {v1, v6}, Landroid/webkit/gears/VersionExtractor;->extractText(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, version:Ljava/lang/String;
    const-string v6, "em:updateLink"

    invoke-static {v1, v6}, Landroid/webkit/gears/VersionExtractor;->extractText(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, url:Ljava/lang/String;
    if-eqz v5, :cond_32

    if-eqz v4, :cond_32

    .line 81
    invoke-static {v5, v4, p1, p2}, Landroid/webkit/gears/VersionExtractor;->setVersionAndUrl(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_30
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_3 .. :try_end_30} :catch_34
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_30} :catch_50
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_30} :catch_6b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_30} :catch_86

    .line 82
    const/4 v6, 0x1

    .line 97
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #doc:Lorg/w3c/dom/Document;
    .end local v3           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4           #url:Ljava/lang/String;
    .end local v5           #version:Ljava/lang/String;
    :goto_31
    return v6

    .restart local v0       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1       #doc:Lorg/w3c/dom/Document;
    .restart local v3       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4       #url:Ljava/lang/String;
    .restart local v5       #version:Ljava/lang/String;
    :cond_32
    move v6, v9

    .line 85
    goto :goto_31

    .line 87
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #doc:Lorg/w3c/dom/Document;
    .end local v3           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4           #url:Ljava/lang/String;
    .end local v5           #version:Ljava/lang/String;
    :catch_34
    move-exception v6

    move-object v2, v6

    .line 88
    .local v2, ex:Ljavax/xml/parsers/FactoryConfigurationError;
    const-string v6, "Gears-J-VersionExtractor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not create the DocumentBuilderFactory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #ex:Ljavax/xml/parsers/FactoryConfigurationError;
    :goto_4e
    move v6, v9

    .line 97
    goto :goto_31

    .line 89
    :catch_50
    move-exception v6

    move-object v2, v6

    .line 90
    .local v2, ex:Ljavax/xml/parsers/ParserConfigurationException;
    const-string v6, "Gears-J-VersionExtractor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not create the DocumentBuilder "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 91
    .end local v2           #ex:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_6b
    move-exception v6

    move-object v2, v6

    .line 92
    .local v2, ex:Lorg/xml/sax/SAXException;
    const-string v6, "Gears-J-VersionExtractor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not parse the xml "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 93
    .end local v2           #ex:Lorg/xml/sax/SAXException;
    :catch_86
    move-exception v6

    move-object v2, v6

    .line 94
    .local v2, ex:Ljava/io/IOException;
    const-string v6, "Gears-J-VersionExtractor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not read the xml "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e
.end method

.method private static extractText(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "doc"
    .parameter "elementName"

    .prologue
    .line 108
    const/4 v6, 0x0

    .line 109
    .local v6, text:Ljava/lang/String;
    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 111
    .local v5, node_list:Lorg/w3c/dom/NodeList;
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-lez v8, :cond_48

    .line 114
    const/4 v8, 0x0

    invoke-interface {v5, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 117
    .local v4, node:Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 120
    .local v1, child_list:Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, i:I
    move-object v7, v6

    .end local v6           #text:Ljava/lang/String;
    .local v7, text:Ljava/lang/String;
    :goto_16
    :try_start_16
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v3, v8, :cond_47

    .line 121
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 122
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_70

    .line 123
    if-nez v7, :cond_6e

    .line 124
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V
    :try_end_2e
    .catch Lorg/w3c/dom/DOMException; {:try_start_16 .. :try_end_2e} :catch_4f

    .line 126
    .end local v7           #text:Ljava/lang/String;
    .restart local v6       #text:Ljava/lang/String;
    :goto_2e
    :try_start_2e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_42
    .catch Lorg/w3c/dom/DOMException; {:try_start_2e .. :try_end_42} :catch_6b

    move-result-object v6

    .line 120
    :goto_43
    add-int/lit8 v3, v3, 0x1

    move-object v7, v6

    .end local v6           #text:Ljava/lang/String;
    .restart local v7       #text:Ljava/lang/String;
    goto :goto_16

    .end local v0           #child:Lorg/w3c/dom/Node;
    :cond_47
    move-object v6, v7

    .line 134
    .end local v1           #child_list:Lorg/w3c/dom/NodeList;
    .end local v3           #i:I
    .end local v4           #node:Lorg/w3c/dom/Node;
    .end local v7           #text:Ljava/lang/String;
    .restart local v6       #text:Ljava/lang/String;
    :cond_48
    :goto_48
    if-eqz v6, :cond_4e

    .line 135
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 138
    :cond_4e
    return-object v6

    .line 129
    .end local v6           #text:Ljava/lang/String;
    .restart local v1       #child_list:Lorg/w3c/dom/NodeList;
    .restart local v3       #i:I
    .restart local v4       #node:Lorg/w3c/dom/Node;
    .restart local v7       #text:Ljava/lang/String;
    :catch_4f
    move-exception v8

    move-object v2, v8

    move-object v6, v7

    .line 130
    .end local v7           #text:Ljava/lang/String;
    .local v2, ex:Lorg/w3c/dom/DOMException;
    .restart local v6       #text:Ljava/lang/String;
    :goto_52
    const-string v8, "Gears-J-VersionExtractor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getNodeValue() failed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 129
    .end local v2           #ex:Lorg/w3c/dom/DOMException;
    .restart local v0       #child:Lorg/w3c/dom/Node;
    :catch_6b
    move-exception v8

    move-object v2, v8

    goto :goto_52

    .end local v6           #text:Ljava/lang/String;
    .restart local v7       #text:Ljava/lang/String;
    :cond_6e
    move-object v6, v7

    .end local v7           #text:Ljava/lang/String;
    .restart local v6       #text:Ljava/lang/String;
    goto :goto_2e

    .end local v6           #text:Ljava/lang/String;
    .restart local v7       #text:Ljava/lang/String;
    :cond_70
    move-object v6, v7

    .end local v7           #text:Ljava/lang/String;
    .restart local v6       #text:Ljava/lang/String;
    goto :goto_43
.end method

.method private static native setVersionAndUrl(Ljava/lang/String;Ljava/lang/String;J)V
.end method

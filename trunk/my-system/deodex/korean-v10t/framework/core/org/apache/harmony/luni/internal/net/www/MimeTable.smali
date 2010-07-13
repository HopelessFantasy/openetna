.class public Lorg/apache/harmony/luni/internal/net/www/MimeTable;
.super Ljava/lang/Object;
.source "MimeTable.java"

# interfaces
.implements Ljava/net/FileNameMap;


# static fields
.field public static final UNKNOWN:Ljava/lang/String; = "content/unknown"

.field public static final types:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const-string v4, "text/plain"

    const-string v3, "text/html"

    .line 43
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lorg/apache/harmony/luni/internal/net/www/MimeTable;->types:Ljava/util/Properties;

    .line 47
    sget-object v0, Lorg/apache/harmony/luni/internal/net/www/MimeTable;->types:Ljava/util/Properties;

    const-string v1, "text"

    const-string v2, "text/plain"

    invoke-virtual {v0, v1, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/apache/harmony/luni/internal/net/www/MimeTable;->types:Ljava/util/Properties;

    const-string v1, "txt"

    const-string v2, "text/plain"

    invoke-virtual {v0, v1, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lorg/apache/harmony/luni/internal/net/www/MimeTable;->types:Ljava/util/Properties;

    const-string v1, "htm"

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lorg/apache/harmony/luni/internal/net/www/MimeTable;->types:Ljava/util/Properties;

    const-string v1, "html"

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v1, Lorg/apache/harmony/luni/internal/net/www/MimeTable$1;

    invoke-direct {v1, p0}, Lorg/apache/harmony/luni/internal/net/www/MimeTable$1;-><init>(Lorg/apache/harmony/luni/internal/net/www/MimeTable;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 68
    .local v0, str:Ljava/io/InputStream;
    if-eqz v0, :cond_18

    .line 71
    :try_start_10
    sget-object v1, Lorg/apache/harmony/luni/internal/net/www/MimeTable;->types:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_19

    .line 73
    :try_start_15
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 79
    :cond_18
    :goto_18
    return-void

    .line 73
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1e} :catch_1e

    .line 75
    :catch_1e
    move-exception v1

    goto :goto_18
.end method

.method static synthetic access$000(Lorg/apache/harmony/luni/internal/net/www/MimeTable;)Ljava/io/InputStream;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/MimeTable;->getContentTypes()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private getContentTypes()Ljava/io/InputStream;
    .registers 6

    .prologue
    .line 92
    const-string v3, "content.types.user.table"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, userTable:Ljava/lang/String;
    if-eqz v2, :cond_f

    .line 95
    :try_start_8
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_e

    .line 111
    :goto_d
    return-object v3

    .line 96
    :catch_e
    move-exception v3

    .line 102
    :cond_f
    const-string v3, "java.home"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, javahome:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lib"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "content-types.properties"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .local v0, contentFile:Ljava/io/File;
    :try_start_35
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3a} :catch_3b

    goto :goto_d

    .line 107
    :catch_3b
    move-exception v3

    .line 111
    const/4 v3, 0x0

    goto :goto_d
.end method


# virtual methods
.method public getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "filename"

    .prologue
    .line 124
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 126
    sget-object v3, Lorg/apache/harmony/luni/internal/net/www/MimeTable;->types:Ljava/util/Properties;

    const-string v4, "html"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v3, p0

    .line 137
    :goto_13
    return-object v3

    .line 128
    .restart local p0
    :cond_14
    const/16 v3, 0x23

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 129
    .local v2, lastCharInExtension:I
    if-gez v2, :cond_20

    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 132
    :cond_20
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 133
    .local v1, firstCharInExtension:I
    const-string v0, ""

    .line 134
    .local v0, ext:Ljava/lang/String;
    const/16 v3, 0x2f

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-le v1, v3, :cond_36

    .line 135
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 137
    :cond_36
    sget-object v3, Lorg/apache/harmony/luni/internal/net/www/MimeTable;->types:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_13
.end method

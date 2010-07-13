.class Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$3;
.super Ljava/lang/Object;
.source "JarURLConnection.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->findJarFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/util/jar/JarFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;

.field final synthetic val$externalForm:Ljava/lang/String;

.field final synthetic val$is:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$3;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;

    iput-object p2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$3;->val$is:Ljava/io/InputStream;

    iput-object p3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$3;->val$externalForm:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 232
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$3;->run()Ljava/util/jar/JarFile;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/util/jar/JarFile;
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 234
    :try_start_1
    const-string v6, "hyjar_"

    const-string v7, ".tmp"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 236
    .local v5, tempJar:Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 238
    .local v2, fos:Ljava/io/FileOutputStream;
    const/16 v6, 0x1000

    new-array v0, v6, [B

    .line 239
    .local v0, buf:[B
    const/4 v3, 0x0

    .line 240
    .local v3, nbytes:I
    :goto_14
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$3;->val$is:Ljava/io/InputStream;

    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v6, -0x1

    if-le v3, v6, :cond_26

    .line 241
    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_14

    .line 246
    .end local v0           #buf:[B
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #nbytes:I
    .end local v5           #tempJar:Ljava/io/File;
    :catch_22
    move-exception v6

    move-object v1, v6

    .local v1, e:Ljava/io/IOException;
    move-object v6, v9

    .line 247
    .end local v1           #e:Ljava/io/IOException;
    :goto_25
    return-object v6

    .line 243
    .restart local v0       #buf:[B
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #nbytes:I
    .restart local v5       #tempJar:Ljava/io/File;
    :cond_26
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 244
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 245
    .local v4, path:Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$3;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;

    iget-object v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$3;->val$externalForm:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {v6, v4, v7, v8}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->openJarFile(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/jar/JarFile;
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_35} :catch_22

    move-result-object v6

    goto :goto_25
.end method

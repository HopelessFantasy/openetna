.class Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$2;
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


# direct methods
.method constructor <init>(Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$2;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;

    iput-object p2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$2;->val$externalForm:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$2;->run()Ljava/util/jar/JarFile;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/util/jar/JarFile;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 217
    :try_start_1
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$2;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$2;->val$externalForm:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->openJarFile(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/jar/JarFile;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v1

    .line 219
    :goto_b
    return-object v1

    .line 218
    :catch_c
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/io/IOException;
    move-object v1, v5

    .line 219
    goto :goto_b
.end method

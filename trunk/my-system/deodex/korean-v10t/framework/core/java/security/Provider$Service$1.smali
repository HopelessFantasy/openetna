.class Ljava/security/Provider$Service$1;
.super Ljava/lang/Object;
.source "Provider.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/security/NoSuchAlgorithmException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/security/Provider$Service;


# direct methods
.method constructor <init>(Ljava/security/Provider$Service;)V
    .registers 2
    .parameter

    .prologue
    .line 1096
    iput-object p1, p0, Ljava/security/Provider$Service$1;->this$0:Ljava/security/Provider$Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1096
    invoke-virtual {p0}, Ljava/security/Provider$Service$1;->run()Ljava/security/NoSuchAlgorithmException;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/security/NoSuchAlgorithmException;
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 1097
    iget-object v2, p0, Ljava/security/Provider$Service$1;->this$0:Ljava/security/Provider$Service;

    invoke-static {v2}, Ljava/security/Provider$Service;->access$500(Ljava/security/Provider$Service;)Ljava/security/Provider;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1099
    .local v0, cl:Ljava/lang/ClassLoader;
    if-nez v0, :cond_15

    .line 1100
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1103
    :cond_15
    :try_start_15
    iget-object v2, p0, Ljava/security/Provider$Service$1;->this$0:Ljava/security/Provider$Service;

    iget-object v3, p0, Ljava/security/Provider$Service$1;->this$0:Ljava/security/Provider$Service;

    invoke-static {v3}, Ljava/security/Provider$Service;->access$300(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/security/Provider$Service;->access$602(Ljava/security/Provider$Service;Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_25} :catch_32

    .line 1110
    iget-object v2, p0, Ljava/security/Provider$Service$1;->this$0:Ljava/security/Provider$Service;

    iget-object v3, p0, Ljava/security/Provider$Service$1;->this$0:Ljava/security/Provider$Service;

    invoke-static {v3}, Ljava/security/Provider$Service;->access$300(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/security/Provider$Service;->access$702(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    .line 1111
    const/4 v2, 0x0

    :goto_31
    return-object v2

    .line 1105
    :catch_32
    move-exception v2

    move-object v1, v2

    .line 1106
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    const-string v3, "security.11"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Ljava/security/Provider$Service$1;->this$0:Ljava/security/Provider$Service;

    invoke-static {v6}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, p0, Ljava/security/Provider$Service$1;->this$0:Ljava/security/Provider$Service;

    invoke-static {v5}, Ljava/security/Provider$Service;->access$100(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    goto :goto_31
.end method

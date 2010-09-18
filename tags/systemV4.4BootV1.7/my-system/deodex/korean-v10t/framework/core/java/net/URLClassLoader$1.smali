.class Ljava/net/URLClassLoader$1;
.super Ljava/lang/Object;
.source "URLClassLoader.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/URLClassLoader;->findResources(Ljava/lang/String;)Ljava/util/Enumeration;
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
        "Ljava/util/Vector",
        "<",
        "Ljava/net/URL;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/net/URLClassLoader;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/net/URLClassLoader;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Ljava/net/URLClassLoader$1;->this$0:Ljava/net/URLClassLoader;

    iput-object p2, p0, Ljava/net/URLClassLoader$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 229
    invoke-virtual {p0}, Ljava/net/URLClassLoader$1;->run()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/util/Vector;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Ljava/net/URLClassLoader$1;->this$0:Ljava/net/URLClassLoader;

    iget-object v1, p0, Ljava/net/URLClassLoader$1;->this$0:Ljava/net/URLClassLoader;

    iget-object v1, v1, Ljava/net/URLClassLoader;->urls:[Ljava/net/URL;

    iget-object v2, p0, Ljava/net/URLClassLoader$1;->val$name:Ljava/lang/String;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Ljava/net/URLClassLoader;->findResources([Ljava/net/URL;Ljava/lang/String;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

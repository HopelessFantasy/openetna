.class Ljava/net/URLClassLoader$4;
.super Ljava/lang/Object;
.source "URLClassLoader.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/URLClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;
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
        "Ljava/lang/Class",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/net/URLClassLoader;

.field final synthetic val$clsName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/net/URLClassLoader;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 628
    iput-object p1, p0, Ljava/net/URLClassLoader$4;->this$0:Ljava/net/URLClassLoader;

    iput-object p2, p0, Ljava/net/URLClassLoader$4;->val$clsName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 629
    iget-object v0, p0, Ljava/net/URLClassLoader$4;->this$0:Ljava/net/URLClassLoader;

    iget-object v1, p0, Ljava/net/URLClassLoader$4;->this$0:Ljava/net/URLClassLoader;

    iget-object v1, v1, Ljava/net/URLClassLoader;->urls:[Ljava/net/URL;

    iget-object v2, p0, Ljava/net/URLClassLoader$4;->val$clsName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/URLClassLoader;->findClassImpl([Ljava/net/URL;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 628
    invoke-virtual {p0}, Ljava/net/URLClassLoader$4;->run()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

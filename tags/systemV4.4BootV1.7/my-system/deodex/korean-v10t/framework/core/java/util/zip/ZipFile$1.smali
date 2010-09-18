.class Ljava/util/zip/ZipFile$1;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/zip/ZipFile;->close()V
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/zip/ZipFile;


# direct methods
.method constructor <init>(Ljava/util/zip/ZipFile;)V
    .registers 2
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 161
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    iget-object v1, v1, Ljava/util/zip/ZipFile;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

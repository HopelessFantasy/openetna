.class public Lcom/google/debug/Settings$Mmapi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/debug/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mmapi"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasVideoSeek()Z
    .registers 3

    invoke-static {}, Lcom/google/debug/Settings;->hasMmapi()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "mmapi.videoSeek"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/debug/Settings;->access$000(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "hasVideoSeek"

    const-string v2, "mmapi"

    invoke-static {v1, v2}, Lcom/google/debug/Settings;->access$100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
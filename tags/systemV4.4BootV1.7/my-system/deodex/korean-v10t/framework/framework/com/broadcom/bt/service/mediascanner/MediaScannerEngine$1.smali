.class Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;
.super Ljava/lang/Object;
.source "MediaScannerEngine.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)V
    .registers 2
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .registers 5

    .prologue
    .line 26
    const-string v2, "MediaScannerEngine"

    const-string v3, "Connected to media scanner"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v2, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    invoke-static {v2}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$000(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 28
    .local v0, fileName:Ljava/lang/String;
    iget-object v2, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    invoke-static {v2}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$100(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Landroid/media/MediaScannerConnection;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 30
    .end local v0           #fileName:Ljava/lang/String;
    :cond_28
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    invoke-static {v0}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$200(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    invoke-static {v0}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$300(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 36
    iget-object v0, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    invoke-static {v0}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$300(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    invoke-static {v1}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$000(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    invoke-static {v2}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$200(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;->onResultsAvailable(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 37
    iget-object v0, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    invoke-static {v0}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$100(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 38
    const-string v0, "MediaScannerEngine"

    const-string v1, "Disconnected from media scanner"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_36
    return-void
.end method

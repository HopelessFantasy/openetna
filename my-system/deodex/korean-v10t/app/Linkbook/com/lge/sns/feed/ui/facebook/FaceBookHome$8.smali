.class Lcom/lge/sns/feed/ui/facebook/FaceBookHome$8;
.super Ljava/lang/Object;
.source "FaceBookHome.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->onFeedDataUpdateStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;


# direct methods
.method constructor <init>(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)V
    .registers 2
    .parameter

    .prologue
    .line 561
    iput-object p1, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$8;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 562
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$8;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->showDialog(I)V

    .line 563
    return-void
.end method

.class Lcom/lge/sns/feed/ui/bebo/BeboHome$9;
.super Ljava/lang/Object;
.source "BeboHome.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/bebo/BeboHome;->onFeedDataUpdateFinished(JLjava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;


# direct methods
.method constructor <init>(Lcom/lge/sns/feed/ui/bebo/BeboHome;)V
    .registers 2
    .parameter

    .prologue
    .line 544
    iput-object p1, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$9;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 545
    iget-object v0, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$9;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->dismissDialog(I)V

    .line 546
    return-void
.end method

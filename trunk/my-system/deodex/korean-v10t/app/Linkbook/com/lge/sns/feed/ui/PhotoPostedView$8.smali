.class Lcom/lge/sns/feed/ui/PhotoPostedView$8;
.super Ljava/lang/Object;
.source "PhotoPostedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/feed/ui/PhotoPostedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;


# direct methods
.method constructor <init>(Lcom/lge/sns/feed/ui/PhotoPostedView;)V
    .registers 2
    .parameter

    .prologue
    .line 615
    iput-object p1, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$8;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$8;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->access$800(Lcom/lge/sns/feed/ui/PhotoPostedView;)V

    .line 617
    return-void
.end method

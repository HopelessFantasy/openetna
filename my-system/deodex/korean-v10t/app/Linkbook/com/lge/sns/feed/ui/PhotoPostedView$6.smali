.class Lcom/lge/sns/feed/ui/PhotoPostedView$6;
.super Ljava/lang/Object;
.source "PhotoPostedView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/PhotoPostedView;->addButtonView()V
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
    .line 501
    iput-object p1, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$6;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$6;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    invoke-virtual {v0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->sendMediaComment()V

    .line 503
    return-void
.end method

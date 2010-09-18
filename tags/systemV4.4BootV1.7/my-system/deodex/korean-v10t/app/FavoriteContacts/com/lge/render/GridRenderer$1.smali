.class Lcom/lge/render/GridRenderer$1;
.super Ljava/lang/Object;
.source "GridRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/render/GridRenderer;->LongTouch(Landroid/view/MotionEvent;Lcom/lge/render/PhotoMgr;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/render/GridRenderer;

.field final synthetic val$e:Landroid/view/MotionEvent;

.field final synthetic val$mgr:Lcom/lge/render/PhotoMgr;


# direct methods
.method constructor <init>(Lcom/lge/render/GridRenderer;Lcom/lge/render/PhotoMgr;Landroid/view/MotionEvent;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/lge/render/GridRenderer$1;->this$0:Lcom/lge/render/GridRenderer;

    iput-object p2, p0, Lcom/lge/render/GridRenderer$1;->val$mgr:Lcom/lge/render/PhotoMgr;

    iput-object p3, p0, Lcom/lge/render/GridRenderer$1;->val$e:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 113
    iget-object v1, p0, Lcom/lge/render/GridRenderer$1;->val$mgr:Lcom/lge/render/PhotoMgr;

    invoke-virtual {v1}, Lcom/lge/render/PhotoMgr;->getSelectedItem()Lcom/lge/render/FCPhotoItem;

    move-result-object v0

    .line 114
    .local v0, item:Lcom/lge/render/FCPhotoItem;
    if-eqz v0, :cond_27

    .line 116
    iget-object v1, p0, Lcom/lge/render/GridRenderer$1;->val$e:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0}, Lcom/lge/render/FCPhotoItem;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/lge/render/GridRenderer$1;->val$e:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0}, Lcom/lge/render/FCPhotoItem;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->setPosition(II)V

    .line 120
    :cond_27
    iget-object v1, p0, Lcom/lge/render/GridRenderer$1;->this$0:Lcom/lge/render/GridRenderer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lge/render/GridRenderer;->access$002(Lcom/lge/render/GridRenderer;Z)Z

    .line 121
    return-void
.end method

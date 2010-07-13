.class Lcom/lge/render/LandScapeRenderer$1;
.super Ljava/lang/Object;
.source "LandScapeRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/render/LandScapeRenderer;->LongTouch(Landroid/view/MotionEvent;Lcom/lge/render/PhotoMgr;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/render/LandScapeRenderer;

.field final synthetic val$e:Landroid/view/MotionEvent;

.field final synthetic val$mgr:Lcom/lge/render/PhotoMgr;


# direct methods
.method constructor <init>(Lcom/lge/render/LandScapeRenderer;Lcom/lge/render/PhotoMgr;Landroid/view/MotionEvent;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/lge/render/LandScapeRenderer$1;->this$0:Lcom/lge/render/LandScapeRenderer;

    iput-object p2, p0, Lcom/lge/render/LandScapeRenderer$1;->val$mgr:Lcom/lge/render/PhotoMgr;

    iput-object p3, p0, Lcom/lge/render/LandScapeRenderer$1;->val$e:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 106
    iget-object v1, p0, Lcom/lge/render/LandScapeRenderer$1;->val$mgr:Lcom/lge/render/PhotoMgr;

    invoke-virtual {v1}, Lcom/lge/render/PhotoMgr;->getSelectedItem()Lcom/lge/render/FCPhotoItem;

    move-result-object v0

    .line 107
    .local v0, item:Lcom/lge/render/FCPhotoItem;
    if-eqz v0, :cond_27

    .line 108
    iget-object v1, p0, Lcom/lge/render/LandScapeRenderer$1;->val$e:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0}, Lcom/lge/render/FCPhotoItem;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/lge/render/LandScapeRenderer$1;->val$e:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0}, Lcom/lge/render/FCPhotoItem;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->setPosition(II)V

    .line 112
    :cond_27
    iget-object v1, p0, Lcom/lge/render/LandScapeRenderer$1;->this$0:Lcom/lge/render/LandScapeRenderer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lge/render/LandScapeRenderer;->access$002(Lcom/lge/render/LandScapeRenderer;Z)Z

    .line 113
    return-void
.end method

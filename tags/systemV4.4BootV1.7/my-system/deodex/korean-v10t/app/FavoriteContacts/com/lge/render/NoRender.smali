.class public Lcom/lge/render/NoRender;
.super Ljava/lang/Object;
.source "NoRender.java"

# interfaces
.implements Lcom/lge/render/RendererAttribute;


# instance fields
.field private Tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public FlingTouch(FFLcom/lge/render/PhotoMgr;)Z
    .registers 5
    .parameter "distanceX"
    .parameter "distanceY"
    .parameter "mgr"

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public LongTouch(Landroid/view/MotionEvent;Lcom/lge/render/PhotoMgr;)Z
    .registers 4
    .parameter "e"
    .parameter "mgr"

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public ScrollTouch(FFLandroid/view/MotionEvent;Lcom/lge/render/PhotoMgr;)Z
    .registers 6
    .parameter "distanceX"
    .parameter "distanceY"
    .parameter "e"
    .parameter "mgr"

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public SingleTagup(FFLcom/lge/render/PhotoMgr;)Z
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "mgr"

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public TouchDown(FFLcom/lge/render/PhotoMgr;Z)Z
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "mgr"
    .parameter "PressOrUp"

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public getFlag()I
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getMovingDistance()F
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/render/NoRender;->Tag:Ljava/lang/String;

    return-object v0
.end method

.method public initMovingDistance()V
    .registers 1

    .prologue
    .line 96
    return-void
.end method

.method public initailRender(Lcom/lge/render/PhotoMgr;)V
    .registers 2
    .parameter "mgr"

    .prologue
    .line 74
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z
    .registers 4
    .parameter "canvas"
    .parameter "mgr"

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public setRenderMode(II)V
    .registers 3
    .parameter "mode"
    .parameter "flag"

    .prologue
    .line 85
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .registers 2
    .parameter "tag"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lge/render/NoRender;->Tag:Ljava/lang/String;

    .line 68
    return-void
.end method

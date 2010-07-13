.class public interface abstract Lcom/lge/render/RendererAttribute;
.super Ljava/lang/Object;
.source "RendererAttribute.java"


# static fields
.field public static final STATE_DRAG:I = 0x200

.field public static final STATE_FLING:I = 0x100

.field public static final STATE_MOVING:I = 0x1

.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_STOPPING:I = 0x2


# virtual methods
.method public abstract FlingTouch(FFLcom/lge/render/PhotoMgr;)Z
.end method

.method public abstract LongTouch(Landroid/view/MotionEvent;Lcom/lge/render/PhotoMgr;)Z
.end method

.method public abstract ScrollTouch(FFLandroid/view/MotionEvent;Lcom/lge/render/PhotoMgr;)Z
.end method

.method public abstract SingleTagup(FFLcom/lge/render/PhotoMgr;)Z
.end method

.method public abstract TouchDown(FFLcom/lge/render/PhotoMgr;Z)Z
.end method

.method public abstract getFlag()I
.end method

.method public abstract getMode()I
.end method

.method public abstract getMovingDistance()F
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract initMovingDistance()V
.end method

.method public abstract initailRender(Lcom/lge/render/PhotoMgr;)V
.end method

.method public abstract onDraw(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z
.end method

.method public abstract setRenderMode(II)V
.end method

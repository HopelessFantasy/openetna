.class Lcom/lge/render/WheelRenderer$1;
.super Ljava/lang/Object;
.source "WheelRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/render/WheelRenderer;->SingleTagup(FFLcom/lge/render/PhotoMgr;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/render/WheelRenderer;


# direct methods
.method constructor <init>(Lcom/lge/render/WheelRenderer;)V
    .registers 2
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/lge/render/WheelRenderer$1;->this$0:Lcom/lge/render/WheelRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 173
    const/4 v0, 0x2

    .line 174
    .local v0, flag:I
    shl-int/lit8 v0, v0, 0x8

    .line 175
    or-int/lit8 v0, v0, 0x2

    .line 177
    iget-object v1, p0, Lcom/lge/render/WheelRenderer$1;->this$0:Lcom/lge/render/WheelRenderer;

    iget-object v1, v1, Lcom/lge/render/WheelRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    iget-object v2, p0, Lcom/lge/render/WheelRenderer$1;->this$0:Lcom/lge/render/WheelRenderer;

    iget-object v3, p0, Lcom/lge/render/WheelRenderer$1;->this$0:Lcom/lge/render/WheelRenderer;

    iget-object v3, v3, Lcom/lge/render/WheelRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Lcom/lge/render/RenderAttListener;->getRenderAtt(I)Lcom/lge/render/RendererAttribute;

    move-result-object v3

    const v4, 0x10200

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/lge/render/RenderAttListener;->ChangeRender(Lcom/lge/render/RendererAttribute;Lcom/lge/render/RendererAttribute;II)V

    .line 182
    return-void
.end method

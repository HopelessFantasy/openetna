.class Lcom/lge/render/GridRenderer$2;
.super Ljava/lang/Object;
.source "GridRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/render/GridRenderer;->SingleTagup(FFLcom/lge/render/PhotoMgr;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/render/GridRenderer;


# direct methods
.method constructor <init>(Lcom/lge/render/GridRenderer;)V
    .registers 2
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/lge/render/GridRenderer$2;->this$0:Lcom/lge/render/GridRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 185
    const/4 v0, 0x1

    .line 186
    .local v0, flag:I
    shl-int/lit8 v0, v0, 0x8

    .line 187
    or-int/lit8 v0, v0, 0x1

    .line 188
    iget-object v1, p0, Lcom/lge/render/GridRenderer$2;->this$0:Lcom/lge/render/GridRenderer;

    invoke-static {v1}, Lcom/lge/render/GridRenderer;->access$100(Lcom/lge/render/GridRenderer;)Lcom/lge/render/RenderAttListener;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/render/GridRenderer$2;->this$0:Lcom/lge/render/GridRenderer;

    iget-object v3, p0, Lcom/lge/render/GridRenderer$2;->this$0:Lcom/lge/render/GridRenderer;

    invoke-static {v3}, Lcom/lge/render/GridRenderer;->access$100(Lcom/lge/render/GridRenderer;)Lcom/lge/render/RenderAttListener;

    move-result-object v3

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Lcom/lge/render/RenderAttListener;->getRenderAtt(I)Lcom/lge/render/RendererAttribute;

    move-result-object v3

    const v4, 0x10200

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/lge/render/RenderAttListener;->ChangeRender(Lcom/lge/render/RendererAttribute;Lcom/lge/render/RendererAttribute;II)V

    .line 193
    return-void
.end method

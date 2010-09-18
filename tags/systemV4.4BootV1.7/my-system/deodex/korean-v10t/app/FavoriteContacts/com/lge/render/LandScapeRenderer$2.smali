.class Lcom/lge/render/LandScapeRenderer$2;
.super Ljava/lang/Object;
.source "LandScapeRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/render/LandScapeRenderer;->SingleTagup(FFLcom/lge/render/PhotoMgr;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/render/LandScapeRenderer;


# direct methods
.method constructor <init>(Lcom/lge/render/LandScapeRenderer;)V
    .registers 2
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/lge/render/LandScapeRenderer$2;->this$0:Lcom/lge/render/LandScapeRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 177
    const/4 v0, 0x4

    .line 178
    .local v0, flag:I
    shl-int/lit8 v0, v0, 0x8

    .line 179
    or-int/lit8 v0, v0, 0x4

    .line 180
    iget-object v1, p0, Lcom/lge/render/LandScapeRenderer$2;->this$0:Lcom/lge/render/LandScapeRenderer;

    invoke-static {v1}, Lcom/lge/render/LandScapeRenderer;->access$100(Lcom/lge/render/LandScapeRenderer;)Lcom/lge/render/RenderAttListener;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/render/LandScapeRenderer$2;->this$0:Lcom/lge/render/LandScapeRenderer;

    iget-object v3, p0, Lcom/lge/render/LandScapeRenderer$2;->this$0:Lcom/lge/render/LandScapeRenderer;

    invoke-static {v3}, Lcom/lge/render/LandScapeRenderer;->access$100(Lcom/lge/render/LandScapeRenderer;)Lcom/lge/render/RenderAttListener;

    move-result-object v3

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Lcom/lge/render/RenderAttListener;->getRenderAtt(I)Lcom/lge/render/RendererAttribute;

    move-result-object v3

    const v4, 0x10200

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/lge/render/RenderAttListener;->ChangeRender(Lcom/lge/render/RendererAttribute;Lcom/lge/render/RendererAttribute;II)V

    .line 185
    return-void
.end method

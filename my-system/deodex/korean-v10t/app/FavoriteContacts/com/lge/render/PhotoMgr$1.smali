.class Lcom/lge/render/PhotoMgr$1;
.super Ljava/lang/Object;
.source "PhotoMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/render/PhotoMgr;->removeSelectItem(Lcom/lge/render/EssentialRenderer;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/render/PhotoMgr;

.field final synthetic val$renderer:Lcom/lge/render/EssentialRenderer;


# direct methods
.method constructor <init>(Lcom/lge/render/PhotoMgr;Lcom/lge/render/EssentialRenderer;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1510
    iput-object p1, p0, Lcom/lge/render/PhotoMgr$1;->this$0:Lcom/lge/render/PhotoMgr;

    iput-object p2, p0, Lcom/lge/render/PhotoMgr$1;->val$renderer:Lcom/lge/render/EssentialRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/lge/render/PhotoMgr$1;->val$renderer:Lcom/lge/render/EssentialRenderer;

    invoke-virtual {v0}, Lcom/lge/render/EssentialRenderer;->init()V

    .line 1512
    return-void
.end method

.class public Lcom/lge/favoritecontacts/FavoriteContactsView;
.super Landroid/view/SurfaceView;
.source "FavoriteContactsView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/favoritecontacts/FavoriteContactsView$FCRenderer;,
        Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;
    }
.end annotation


# instance fields
.field private mHolder:Landroid/view/SurfaceHolder;

.field private m_FCThread:Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;

.field private m_Renderer:Lcom/lge/render/EssentialRenderer;

.field private m_preOperationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0}, Lcom/lge/favoritecontacts/FavoriteContactsView;->init()Z

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0}, Lcom/lge/favoritecontacts/FavoriteContactsView;->init()Z

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/lge/favoritecontacts/FavoriteContactsView;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->m_preOperationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lge/favoritecontacts/FavoriteContactsView;Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;)Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->m_FCThread:Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;

    return-object p1
.end method

.method private init()Z
    .registers 3

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContactsView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 47
    .local v0, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->m_preOperationList:Ljava/util/ArrayList;

    .line 50
    const/4 v1, 0x0

    return v1
.end method

.method private onCreate()V
    .registers 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->mHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_18

    .line 101
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->m_FCThread:Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;

    if-nez v0, :cond_19

    .line 102
    new-instance v0, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;

    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->mHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->m_Renderer:Lcom/lge/render/EssentialRenderer;

    invoke-direct {v0, p0, v1, v2}, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;-><init>(Lcom/lge/favoritecontacts/FavoriteContactsView;Landroid/view/SurfaceHolder;Lcom/lge/favoritecontacts/FavoriteContactsView$FCRenderer;)V

    iput-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->m_FCThread:Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;

    .line 106
    :goto_13
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->m_FCThread:Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->onRun()V

    .line 108
    :cond_18
    return-void

    .line 104
    :cond_19
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->m_FCThread:Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;

    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->mHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->m_Renderer:Lcom/lge/render/EssentialRenderer;

    invoke-virtual {v0, v1, v2}, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->setThread(Landroid/view/SurfaceHolder;Lcom/lge/favoritecontacts/FavoriteContactsView$FCRenderer;)V

    goto :goto_13
.end method


# virtual methods
.method public addPreOperation(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "r"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->m_preOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public destroyThread()V
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->m_FCThread:Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;

    if-eqz v0, :cond_1c

    .line 85
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->m_FCThread:Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->getRenderer()Lcom/lge/favoritecontacts/FavoriteContactsView$FCRenderer;

    move-result-object v0

    check-cast v0, Lcom/lge/render/EssentialRenderer;

    iput-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->m_Renderer:Lcom/lge/render/EssentialRenderer;

    .line 86
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->m_FCThread:Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->setDoneThread(Z)V

    .line 87
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->m_FCThread:Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->onResume()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->m_FCThread:Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;

    .line 97
    :cond_1c
    return-void
.end method

.method public getRenderer()Lcom/lge/render/EssentialRenderer;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->m_Renderer:Lcom/lge/render/EssentialRenderer;

    return-object v0
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->m_FCThread:Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;

    if-eqz v0, :cond_9

    .line 59
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->m_FCThread:Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->onPause()V

    .line 60
    :cond_9
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->m_FCThread:Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;

    if-eqz v0, :cond_9

    .line 64
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->m_FCThread:Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->onResume()V

    .line 65
    :cond_9
    return-void
.end method

.method public onRun()V
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->m_FCThread:Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;

    if-eqz v0, :cond_9

    .line 69
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->m_FCThread:Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->onRun()V

    .line 70
    :cond_9
    return-void
.end method

.method public setBackGround(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "b"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->m_Renderer:Lcom/lge/render/EssentialRenderer;

    invoke-virtual {v0, p1}, Lcom/lge/render/EssentialRenderer;->setBackGround(Landroid/graphics/Bitmap;)V

    .line 35
    return-void
.end method

.method public setRenderer(Lcom/lge/render/EssentialRenderer;)V
    .registers 2
    .parameter "renderer"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->m_Renderer:Lcom/lge/render/EssentialRenderer;

    .line 39
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 6
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->m_FCThread:Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;

    if-eqz v0, :cond_a

    .line 115
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->m_FCThread:Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;

    invoke-virtual {v0, p3, p4}, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->setDrawSize(II)V

    .line 118
    :goto_9
    return-void

    .line 117
    :cond_a
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->m_Renderer:Lcom/lge/render/EssentialRenderer;

    invoke-virtual {v0, p3, p4}, Lcom/lge/render/EssentialRenderer;->setDrawSize(II)V

    goto :goto_9
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2
    .parameter "holder"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->mHolder:Landroid/view/SurfaceHolder;

    .line 124
    invoke-direct {p0}, Lcom/lge/favoritecontacts/FavoriteContactsView;->onCreate()V

    .line 125
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter "holder"

    .prologue
    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContactsView;->mHolder:Landroid/view/SurfaceHolder;

    .line 132
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContactsView;->destroyThread()V

    .line 133
    return-void
.end method

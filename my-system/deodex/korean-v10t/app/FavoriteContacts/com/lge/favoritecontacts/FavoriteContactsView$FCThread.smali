.class Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;
.super Ljava/lang/Thread;
.source "FavoriteContactsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/favoritecontacts/FavoriteContactsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FCThread"
.end annotation


# instance fields
.field private m_Done:Z

.field private m_FCRenderer:Lcom/lge/favoritecontacts/FavoriteContactsView$FCRenderer;

.field private m_Pause:Z

.field private m_SurfaceHolder:Landroid/view/SurfaceHolder;

.field final synthetic this$0:Lcom/lge/favoritecontacts/FavoriteContactsView;


# direct methods
.method public constructor <init>(Lcom/lge/favoritecontacts/FavoriteContactsView;Landroid/view/SurfaceHolder;Lcom/lge/favoritecontacts/FavoriteContactsView$FCRenderer;)V
    .registers 5
    .parameter
    .parameter "holder"
    .parameter "renderer"

    .prologue
    const/4 v0, 0x0

    .line 143
    iput-object p1, p0, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->this$0:Lcom/lge/favoritecontacts/FavoriteContactsView;

    .line 144
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 145
    iput-object p2, p0, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->m_SurfaceHolder:Landroid/view/SurfaceHolder;

    .line 146
    iput-object p3, p0, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->m_FCRenderer:Lcom/lge/favoritecontacts/FavoriteContactsView$FCRenderer;

    .line 147
    iput-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->m_Done:Z

    .line 148
    iput-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->m_Pause:Z

    .line 149
    return-void
.end method


# virtual methods
.method public getRenderer()Lcom/lge/favoritecontacts/FavoriteContactsView$FCRenderer;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->m_FCRenderer:Lcom/lge/favoritecontacts/FavoriteContactsView$FCRenderer;

    return-object v0
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 169
    monitor-enter p0

    .line 170
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->m_Pause:Z

    .line 171
    monitor-exit p0

    .line 172
    return-void

    .line 171
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 175
    const-string v0, "Favorite Thread"

    const-string v1, "  ==  On Resume =="

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    monitor-enter p0

    .line 177
    const/4 v0, 0x0

    :try_start_9
    iput-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->m_Pause:Z

    .line 178
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->onRun()V

    .line 179
    monitor-exit p0

    .line 180
    return-void

    .line 179
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public onRun()V
    .registers 4

    .prologue
    const-string v2, "Favorite Thread"

    .line 183
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    .line 185
    .local v0, thisThreadState:Ljava/lang/Thread$State;
    sget-object v1, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1a

    .line 186
    const-string v1, "Favorite Thread"

    const-string v1, "  ==  WAITING =="

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    monitor-enter p0

    .line 188
    :try_start_12
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 189
    monitor-exit p0

    .line 203
    :cond_16
    :goto_16
    return-void

    .line 189
    :catchall_17
    move-exception v1

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_17

    throw v1

    .line 194
    :cond_1a
    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_16

    .line 195
    const-string v1, "Favorite Thread"

    const-string v1, "  ==  NEW =="

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    monitor-enter p0

    .line 197
    :try_start_26
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->m_FCRenderer:Lcom/lge/favoritecontacts/FavoriteContactsView$FCRenderer;

    invoke-interface {v1}, Lcom/lge/favoritecontacts/FavoriteContactsView$FCRenderer;->init()V

    .line 198
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->start()V

    .line 199
    monitor-exit p0

    goto :goto_16

    :catchall_30
    move-exception v1

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, c:Landroid/graphics/Canvas;
    :cond_2
    :goto_2
    iget-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->m_Done:Z

    if-nez v2, :cond_46

    .line 242
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->m_SurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_2

    .line 244
    :try_start_a
    monitor-enter p0
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_b} :catch_2b

    .line 246
    :goto_b
    :try_start_b
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->this$0:Lcom/lge/favoritecontacts/FavoriteContactsView;

    invoke-static {v2}, Lcom/lge/favoritecontacts/FavoriteContactsView;->access$000(Lcom/lge/favoritecontacts/FavoriteContactsView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2d

    .line 247
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->this$0:Lcom/lge/favoritecontacts/FavoriteContactsView;

    invoke-static {v2}, Lcom/lge/favoritecontacts/FavoriteContactsView;->access$000(Lcom/lge/favoritecontacts/FavoriteContactsView;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 248
    .local v1, r:Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_b

    .line 258
    .end local v1           #r:Ljava/lang/Runnable;
    :catchall_28
    move-exception v2

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_28

    :try_start_2a
    throw v2
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2b} :catch_2b

    .line 271
    :catch_2b
    move-exception v2

    goto :goto_2

    .line 251
    :cond_2d
    :try_start_2d
    iget-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->m_Pause:Z

    if-eqz v2, :cond_41

    iget-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->m_Done:Z

    if-nez v2, :cond_41

    .line 252
    :goto_35
    iget-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->m_Pause:Z

    if-eqz v2, :cond_41

    iget-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->m_Done:Z

    if-nez v2, :cond_41

    .line 253
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_35

    .line 255
    :cond_41
    iget-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->m_Done:Z

    if-eqz v2, :cond_4c

    .line 256
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_2d .. :try_end_46} :catchall_28

    .line 275
    :cond_46
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->this$0:Lcom/lge/favoritecontacts/FavoriteContactsView;

    invoke-static {v2, v4}, Lcom/lge/favoritecontacts/FavoriteContactsView;->access$102(Lcom/lge/favoritecontacts/FavoriteContactsView;Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;)Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;

    .line 276
    return-void

    .line 258
    :cond_4c
    :try_start_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_28

    .line 260
    :try_start_4d
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->m_SurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_5d

    .line 262
    monitor-enter p0
    :try_end_57
    .catchall {:try_start_4d .. :try_end_57} :catchall_68

    .line 263
    :try_start_57
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->m_FCRenderer:Lcom/lge/favoritecontacts/FavoriteContactsView$FCRenderer;

    invoke-interface {v2, v0}, Lcom/lge/favoritecontacts/FavoriteContactsView$FCRenderer;->onDraw(Landroid/graphics/Canvas;)V

    .line 264
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_65

    .line 267
    :cond_5d
    if-eqz v0, :cond_2

    .line 268
    :try_start_5f
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->m_SurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_64
    .catch Ljava/lang/InterruptedException; {:try_start_5f .. :try_end_64} :catch_2b

    goto :goto_2

    .line 264
    :catchall_65
    move-exception v2

    :try_start_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    :try_start_67
    throw v2
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_68

    .line 267
    :catchall_68
    move-exception v2

    if-eqz v0, :cond_70

    .line 268
    :try_start_6b
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->m_SurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_70
    throw v2
    :try_end_71
    .catch Ljava/lang/InterruptedException; {:try_start_6b .. :try_end_71} :catch_2b
.end method

.method public setDoneThread(Z)V
    .registers 2
    .parameter "done"

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->m_Done:Z

    .line 166
    return-void
.end method

.method public setDrawSize(II)V
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->m_FCRenderer:Lcom/lge/favoritecontacts/FavoriteContactsView$FCRenderer;

    invoke-interface {v0, p1, p2}, Lcom/lge/favoritecontacts/FavoriteContactsView$FCRenderer;->setDrawSize(II)V

    .line 162
    return-void
.end method

.method public setThread(Landroid/view/SurfaceHolder;Lcom/lge/favoritecontacts/FavoriteContactsView$FCRenderer;)V
    .registers 3
    .parameter "holder"
    .parameter "renderer"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->m_SurfaceHolder:Landroid/view/SurfaceHolder;

    .line 153
    iput-object p2, p0, Lcom/lge/favoritecontacts/FavoriteContactsView$FCThread;->m_FCRenderer:Lcom/lge/favoritecontacts/FavoriteContactsView$FCRenderer;

    .line 154
    return-void
.end method

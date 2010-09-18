.class public Ljava/util/Observable;
.super Ljava/lang/Object;
.source "Observable.java"


# instance fields
.field changed:Z

.field observers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/util/Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/util/Observable;->observers:Ljava/util/Vector;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Observable;->changed:Z

    .line 47
    return-void
.end method


# virtual methods
.method public declared-synchronized addObserver(Ljava/util/Observer;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 58
    monitor-enter p0

    if-nez p1, :cond_c

    .line 59
    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_9

    .line 58
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0

    .line 61
    :cond_c
    :try_start_c
    iget-object v0, p0, Ljava/util/Observable;->observers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 62
    iget-object v0, p0, Ljava/util/Observable;->observers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_9

    .line 63
    :cond_19
    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized clearChanged()V
    .registers 2

    .prologue
    .line 72
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Ljava/util/Observable;->changed:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 73
    monitor-exit p0

    return-void

    .line 72
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized countObservers()I
    .registers 2

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/util/Observable;->observers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteObserver(Ljava/util/Observer;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 94
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/util/Observable;->observers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 95
    monitor-exit p0

    return-void

    .line 94
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteObservers()V
    .registers 3

    .prologue
    .line 103
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/util/Observable;->observers:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 104
    monitor-exit p0

    return-void

    .line 103
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasChanged()Z
    .registers 2

    .prologue
    .line 114
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljava/util/Observable;->changed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyObservers()V
    .registers 2

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method public notifyObservers(Ljava/lang/Object;)V
    .registers 6
    .parameter "data"

    .prologue
    .line 142
    invoke-virtual {p0}, Ljava/util/Observable;->hasChanged()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 144
    iget-object v3, p0, Ljava/util/Observable;->observers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 145
    .local v0, clone:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Observer;>;"
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 146
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    if-ge v1, v2, :cond_21

    .line 147
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Observer;

    invoke-interface {v3, p0, p1}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 149
    :cond_21
    invoke-virtual {p0}, Ljava/util/Observable;->clearChanged()V

    .line 151
    .end local v0           #clone:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Observer;>;"
    .end local v1           #i:I
    .end local v2           #size:I
    :cond_24
    return-void
.end method

.method protected declared-synchronized setChanged()V
    .registers 2

    .prologue
    .line 160
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Ljava/util/Observable;->changed:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 161
    monitor-exit p0

    return-void

    .line 160
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

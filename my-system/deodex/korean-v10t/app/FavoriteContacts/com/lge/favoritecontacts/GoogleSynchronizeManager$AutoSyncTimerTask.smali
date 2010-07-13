.class Lcom/lge/favoritecontacts/GoogleSynchronizeManager$AutoSyncTimerTask;
.super Ljava/util/TimerTask;
.source "GoogleSynchronizeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/favoritecontacts/GoogleSynchronizeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoSyncTimerTask"
.end annotation


# static fields
.field private static final mDelay:J = 0x1d4c0L


# instance fields
.field private mResolver:Landroid/content/ContentResolver;

.field private mTaskTimer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;)V
    .registers 2
    .parameter "resolver"

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 175
    iput-object p1, p0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager$AutoSyncTimerTask;->mResolver:Landroid/content/ContentResolver;

    .line 176
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager$AutoSyncTimerTask;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->startAutoSync(Landroid/content/ContentResolver;)V

    .line 181
    return-void
.end method

.method public startSchedule()V
    .registers 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager$AutoSyncTimerTask;->mTaskTimer:Ljava/util/Timer;

    if-eqz v0, :cond_c

    .line 186
    :try_start_4
    iget-object v0, p0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager$AutoSyncTimerTask;->mTaskTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_9} :catch_1c

    .line 189
    :goto_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager$AutoSyncTimerTask;->mTaskTimer:Ljava/util/Timer;

    .line 191
    :cond_c
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager$AutoSyncTimerTask;->mTaskTimer:Ljava/util/Timer;

    .line 193
    iget-object v0, p0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager$AutoSyncTimerTask;->mTaskTimer:Ljava/util/Timer;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 194
    return-void

    .line 187
    :catch_1c
    move-exception v0

    goto :goto_9
.end method

.method public stopShedule()V
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager$AutoSyncTimerTask;->mTaskTimer:Ljava/util/Timer;

    if-eqz v0, :cond_c

    .line 200
    :try_start_4
    iget-object v0, p0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager$AutoSyncTimerTask;->mTaskTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_9} :catch_d

    .line 205
    :goto_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager$AutoSyncTimerTask;->mTaskTimer:Ljava/util/Timer;

    .line 207
    :cond_c
    return-void

    .line 201
    :catch_d
    move-exception v0

    goto :goto_9
.end method

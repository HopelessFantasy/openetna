.class Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;
.super Ljava/util/TimerTask;
.source "FavoriteContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/favoritecontacts/FavoriteContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FCGSynchronizeCheckTimeTask"
.end annotation


# instance fields
.field private mCheckTimer:Ljava/util/Timer;

.field final synthetic this$0:Lcom/lge/favoritecontacts/FavoriteContacts;


# direct methods
.method private constructor <init>(Lcom/lge/favoritecontacts/FavoriteContacts;)V
    .registers 2
    .parameter

    .prologue
    .line 1317
    iput-object p1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/favoritecontacts/FavoriteContacts;Lcom/lge/favoritecontacts/FavoriteContacts$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1317
    invoke-direct {p0, p1}, Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;-><init>(Lcom/lge/favoritecontacts/FavoriteContacts;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v0}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$300(Lcom/lge/favoritecontacts/FavoriteContacts;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1323
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v0}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$1300(Lcom/lge/favoritecontacts/FavoriteContacts;)V

    .line 1325
    :cond_d
    return-void
.end method

.method public scheduleTask()V
    .registers 7

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;->mCheckTimer:Ljava/util/Timer;

    if-eqz v0, :cond_7

    .line 1330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;->mCheckTimer:Ljava/util/Timer;

    .line 1332
    :cond_7
    new-instance v0, Ljava/util/Timer;

    const-string v1, "GSync_Timer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;->mCheckTimer:Ljava/util/Timer;

    .line 1333
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;->mCheckTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1334
    return-void
.end method

.method public stopScheduleTask()V
    .registers 2

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;->mCheckTimer:Ljava/util/Timer;

    if-eqz v0, :cond_9

    .line 1339
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;->mCheckTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1341
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;->mCheckTimer:Ljava/util/Timer;

    .line 1342
    return-void
.end method

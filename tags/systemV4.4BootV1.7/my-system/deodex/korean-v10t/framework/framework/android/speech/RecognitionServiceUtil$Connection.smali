.class public Landroid/speech/RecognitionServiceUtil$Connection;
.super Ljava/lang/Object;
.source "RecognitionServiceUtil.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionServiceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Connection"
.end annotation


# instance fields
.field public mService:Landroid/speech/IRecognitionService;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 94
    monitor-enter p0

    :try_start_1
    invoke-static {p2}, Landroid/speech/IRecognitionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionService;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/RecognitionServiceUtil$Connection;->mService:Landroid/speech/IRecognitionService;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 95
    monitor-exit p0

    return-void

    .line 94
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/RecognitionServiceUtil$Connection;->mService:Landroid/speech/IRecognitionService;

    .line 99
    return-void
.end method

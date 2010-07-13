.class Lcom/android/server/am/ActivityManagerService$BroadcastsBinder;
.super Landroid/os/Binder;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BroadcastsBinder"
.end annotation


# instance fields
.field mActivityManagerService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .parameter "activityManagerService"

    .prologue
    .line 1319
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1320
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$BroadcastsBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1321
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$BroadcastsBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityManagerService;->dumpBroadcasts(Ljava/io/PrintWriter;)V

    .line 1326
    return-void
.end method

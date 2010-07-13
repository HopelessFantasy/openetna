.class Lcom/android/server/am/ActivityManagerService$ProvidersBinder;
.super Landroid/os/Binder;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProvidersBinder"
.end annotation


# instance fields
.field mActivityManagerService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .parameter "activityManagerService"

    .prologue
    .line 1355
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1356
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ProvidersBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1357
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProvidersBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityManagerService;->dumpProviders(Ljava/io/PrintWriter;)V

    .line 1362
    return-void
.end method

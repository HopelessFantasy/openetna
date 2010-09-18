.class Landroid/server/search/SearchManagerService$3;
.super Landroid/app/IActivityWatcher$Stub;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/search/SearchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/search/SearchManagerService;


# direct methods
.method constructor <init>(Landroid/server/search/SearchManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Landroid/server/search/SearchManagerService$3;->this$0:Landroid/server/search/SearchManagerService;

    invoke-direct {p0}, Landroid/app/IActivityWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public activityResuming(I)V
    .registers 3
    .parameter "activityId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Landroid/server/search/SearchManagerService$3;->this$0:Landroid/server/search/SearchManagerService;

    invoke-static {v0}, Landroid/server/search/SearchManagerService;->access$200(Landroid/server/search/SearchManagerService;)Landroid/server/search/SearchDialogWrapper;

    move-result-object v0

    if-nez v0, :cond_9

    .line 140
    :goto_8
    return-void

    .line 139
    :cond_9
    iget-object v0, p0, Landroid/server/search/SearchManagerService$3;->this$0:Landroid/server/search/SearchManagerService;

    invoke-static {v0}, Landroid/server/search/SearchManagerService;->access$200(Landroid/server/search/SearchManagerService;)Landroid/server/search/SearchDialogWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/search/SearchDialogWrapper;->activityResuming(I)V

    goto :goto_8
.end method

.method public closingSystemDialogs(Ljava/lang/String;)V
    .registers 3
    .parameter "reason"

    .prologue
    .line 143
    iget-object v0, p0, Landroid/server/search/SearchManagerService$3;->this$0:Landroid/server/search/SearchManagerService;

    invoke-static {v0}, Landroid/server/search/SearchManagerService;->access$200(Landroid/server/search/SearchManagerService;)Landroid/server/search/SearchDialogWrapper;

    move-result-object v0

    if-nez v0, :cond_9

    .line 145
    :goto_8
    return-void

    .line 144
    :cond_9
    iget-object v0, p0, Landroid/server/search/SearchManagerService$3;->this$0:Landroid/server/search/SearchManagerService;

    invoke-static {v0}, Landroid/server/search/SearchManagerService;->access$200(Landroid/server/search/SearchManagerService;)Landroid/server/search/SearchDialogWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/search/SearchDialogWrapper;->closingSystemDialogs(Ljava/lang/String;)V

    goto :goto_8
.end method

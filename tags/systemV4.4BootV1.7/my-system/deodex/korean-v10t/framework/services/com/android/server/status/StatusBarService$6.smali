.class Lcom/android/server/status/StatusBarService$6;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarService;)V
    .registers 2
    .parameter

    .prologue
    .line 1953
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$6;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$6;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mNotificationCallbacks:Lcom/android/server/status/StatusBarService$NotificationCallbacks;

    invoke-interface {v0}, Lcom/android/server/status/StatusBarService$NotificationCallbacks;->onClearAll()V

    .line 1955
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$6;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v0}, Lcom/android/server/status/StatusBarService;->performCollapse()V

    .line 1956
    return-void
.end method

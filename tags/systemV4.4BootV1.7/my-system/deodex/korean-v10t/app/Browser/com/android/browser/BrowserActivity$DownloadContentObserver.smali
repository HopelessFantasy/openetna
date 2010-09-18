.class Lcom/android/browser/BrowserActivity$DownloadContentObserver;
.super Landroid/database/ContentObserver;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 4837
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$DownloadContentObserver;->this$0:Lcom/android/browser/BrowserActivity;

    .line 4838
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4839
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 4847
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$DownloadContentObserver;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$7100(Lcom/android/browser/BrowserActivity;)V

    .line 4848
    return-void
.end method

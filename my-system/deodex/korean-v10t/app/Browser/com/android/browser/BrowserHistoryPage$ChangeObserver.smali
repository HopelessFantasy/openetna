.class Lcom/android/browser/BrowserHistoryPage$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "BrowserHistoryPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserHistoryPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserHistoryPage;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserHistoryPage;)V
    .registers 3
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/browser/BrowserHistoryPage$ChangeObserver;->this$0:Lcom/android/browser/BrowserHistoryPage;

    .line 253
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 254
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 258
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$ChangeObserver;->this$0:Lcom/android/browser/BrowserHistoryPage;

    invoke-static {v0}, Lcom/android/browser/BrowserHistoryPage;->access$000(Lcom/android/browser/BrowserHistoryPage;)Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->refreshData()V

    .line 264
    return-void
.end method

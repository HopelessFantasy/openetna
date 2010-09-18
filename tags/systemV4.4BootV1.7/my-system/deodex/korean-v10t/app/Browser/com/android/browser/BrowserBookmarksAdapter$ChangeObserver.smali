.class Lcom/android/browser/BrowserBookmarksAdapter$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "BrowserBookmarksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserBookmarksAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserBookmarksAdapter;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserBookmarksAdapter;)V
    .registers 3
    .parameter

    .prologue
    .line 535
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksAdapter$ChangeObserver;->this$0:Lcom/android/browser/BrowserBookmarksAdapter;

    .line 536
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 537
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 541
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter$ChangeObserver;->this$0:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0}, Lcom/android/browser/BrowserBookmarksAdapter;->refreshList()V

    .line 547
    return-void
.end method

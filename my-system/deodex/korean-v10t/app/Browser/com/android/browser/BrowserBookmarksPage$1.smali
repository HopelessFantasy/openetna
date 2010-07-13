.class Lcom/android/browser/BrowserBookmarksPage$1;
.super Landroid/os/Handler;
.source "BrowserBookmarksPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserBookmarksPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserBookmarksPage;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserBookmarksPage;)V
    .registers 2
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksPage$1;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 199
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_b

    .line 200
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage$1;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v0}, Lcom/android/browser/BrowserBookmarksPage;->access$000(Lcom/android/browser/BrowserBookmarksPage;)V

    .line 202
    :cond_b
    return-void
.end method

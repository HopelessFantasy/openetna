.class Lcom/android/browser/BrowserBookmarksPage$2;
.super Ljava/lang/Object;
.source "BrowserBookmarksPage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 206
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksPage$2;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 209
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$2;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v1}, Lcom/android/browser/BrowserBookmarksPage;->access$100(Lcom/android/browser/BrowserBookmarksPage;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 210
    const-string v1, "browser"

    const-string v2, "item clicked when dismising"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_f
    return-void

    .line 213
    :cond_10
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$2;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v1}, Lcom/android/browser/BrowserBookmarksPage;->access$200(Lcom/android/browser/BrowserBookmarksPage;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 214
    if-nez p3, :cond_26

    .line 216
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$2;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v1}, Lcom/android/browser/BrowserBookmarksPage;->access$300(Lcom/android/browser/BrowserBookmarksPage;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_f

    .line 218
    :cond_26
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$2;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v1, p3}, Lcom/android/browser/BrowserBookmarksPage;->access$400(Lcom/android/browser/BrowserBookmarksPage;I)V

    goto :goto_f

    .line 221
    :cond_2c
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$2;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksPage$2;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v2, p3}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksPage$2;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v3, p3}, Lcom/android/browser/BrowserBookmarksPage;->getBookmarkTitle(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage$2;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v4, p3}, Lcom/android/browser/BrowserBookmarksPage;->getFavicon(I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/browser/BrowserBookmarksPage;->access$500(Lcom/android/browser/BrowserBookmarksPage;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/content/Intent;

    move-result-object v0

    .line 223
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$2;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    const/4 v2, -0x1

    invoke-static {v1, v2, v0}, Lcom/android/browser/BrowserBookmarksPage;->access$600(Lcom/android/browser/BrowserBookmarksPage;ILandroid/content/Intent;)V

    .line 224
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$2;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v1}, Lcom/android/browser/BrowserBookmarksPage;->finish()V

    goto :goto_f
.end method

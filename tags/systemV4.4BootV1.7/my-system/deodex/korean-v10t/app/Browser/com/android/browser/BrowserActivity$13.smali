.class Lcom/android/browser/BrowserActivity$13;
.super Landroid/webkit/WebChromeClient;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 3787
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/browser/BrowserActivity$13;ZLandroid/os/Message;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 3787
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity$13;->createWindow(ZLandroid/os/Message;)V

    return-void
.end method

.method private createWindow(ZLandroid/os/Message;)V
    .registers 9
    .parameter "dialog"
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 3599
    if-eqz p1, :cond_2a

    .line 3600
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v3}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->createSubWindow()V

    .line 3601
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v3}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/TabControl$Tab;

    move-result-object v1

    .line 3602
    .local v1, t:Lcom/android/browser/TabControl$Tab;
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v3, v1}, Lcom/android/browser/BrowserActivity;->access$5000(Lcom/android/browser/BrowserActivity;Lcom/android/browser/TabControl$Tab;)V

    .line 3603
    iget-object v2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/webkit/WebView$WebViewTransport;

    .line 3605
    .local v2, transport:Landroid/webkit/WebView$WebViewTransport;
    invoke-virtual {v1}, Lcom/android/browser/TabControl$Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 3606
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3618
    .end local v1           #t:Lcom/android/browser/TabControl$Tab;
    :goto_29
    return-void

    .line 3608
    .end local v2           #transport:Landroid/webkit/WebView$WebViewTransport;
    :cond_2a
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v3}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/TabControl$Tab;

    move-result-object v0

    .line 3612
    .local v0, parent:Lcom/android/browser/TabControl$Tab;
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    const/4 v4, 0x0

    invoke-static {v3, v5, p2, v4, v5}, Lcom/android/browser/BrowserActivity;->access$2200(Lcom/android/browser/BrowserActivity;Ljava/lang/String;Landroid/os/Message;ZLjava/lang/String;)V

    .line 3613
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v3}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/TabControl$Tab;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/browser/TabControl$Tab;->addChildTab(Lcom/android/browser/TabControl$Tab;)V

    .line 3614
    iget-object v2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/webkit/WebView$WebViewTransport;

    .line 3616
    .restart local v2       #transport:Landroid/webkit/WebView$WebViewTransport;
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v3}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    goto :goto_29
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .registers 7
    .parameter "window"

    .prologue
    .line 3705
    iget-object v2, p0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v2}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v0

    .line 3706
    .local v0, currentIndex:I
    iget-object v2, p0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v2}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/TabControl$Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/TabControl$Tab;->getParentTab()Lcom/android/browser/TabControl$Tab;

    move-result-object v1

    .line 3708
    .local v1, parent:Lcom/android/browser/TabControl$Tab;
    if-eqz v1, :cond_2a

    .line 3710
    iget-object v2, p0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v3, p0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v3}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/TabControl$Tab;)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v2, v0, v3, v4}, Lcom/android/browser/BrowserActivity;->access$5200(Lcom/android/browser/BrowserActivity;IIZ)V

    .line 3712
    :cond_2a
    return-void
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .registers 15
    .parameter "view"
    .parameter "dialog"
    .parameter "userGesture"
    .parameter "resultMsg"

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f07000b

    const/4 v7, 0x1

    const v6, 0x1080027

    const/4 v5, 0x0

    .line 3625
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v3}, Lcom/android/browser/BrowserActivity;->access$1300(Lcom/android/browser/BrowserActivity;)I

    move-result v3

    if-gtz v3, :cond_19

    iget-object v3, p0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v3}, Lcom/android/browser/BrowserActivity;->access$1200(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/ImageGrid;

    move-result-object v3

    if-eqz v3, :cond_1b

    :cond_19
    move v3, v5

    .line 3700
    :goto_1a
    return v3

    .line 3629
    :cond_1b
    if-eqz p2, :cond_4b

    iget-object v3, p0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v3}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentSubWindow()Landroid/webkit/WebView;

    move-result-object v3

    if-eqz v3, :cond_4b

    .line 3630
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0700b1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0700b2

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v3, v5

    .line 3636
    goto :goto_1a

    .line 3637
    :cond_4b
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v3}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_7b

    .line 3638
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0700af

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0700b0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v3, v5

    .line 3644
    goto :goto_1a

    .line 3648
    :cond_7b
    if-eqz p3, :cond_82

    .line 3652
    invoke-direct {p0, p2, p4}, Lcom/android/browser/BrowserActivity$13;->createWindow(ZLandroid/os/Message;)V

    move v3, v7

    .line 3653
    goto :goto_1a

    .line 3657
    :cond_82
    new-instance v0, Lcom/android/browser/BrowserActivity$13$1;

    invoke-direct {v0, p0, p2, p4}, Lcom/android/browser/BrowserActivity$13$1;-><init>(Lcom/android/browser/BrowserActivity$13;ZLandroid/os/Message;)V

    .line 3671
    .local v0, allowListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/browser/BrowserActivity$13$2;

    invoke-direct {v1, p0, p4}, Lcom/android/browser/BrowserActivity$13$2;-><init>(Lcom/android/browser/BrowserActivity$13;Landroid/os/Message;)V

    .line 3682
    .local v1, blockListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0700ab

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0700ac

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0700ad

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0700ae

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 3693
    .local v2, d:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 3699
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v3}, Lcom/android/browser/BrowserActivity;->access$1308(Lcom/android/browser/BrowserActivity;)I

    move v3, v7

    .line 3700
    goto/16 :goto_1a
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 6
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 3718
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$1300(Lcom/android/browser/BrowserActivity;)I

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$1200(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/ImageGrid;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 3719
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    mul-int/lit8 v2, p2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 3723
    :cond_1c
    const/16 v0, 0x64

    if-ne p2, v0, :cond_3b

    .line 3727
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 3728
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$000(Lcom/android/browser/BrowserActivity;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 3729
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$002(Lcom/android/browser/BrowserActivity;Z)Z

    .line 3730
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$3600(Lcom/android/browser/BrowserActivity;)V

    .line 3741
    :cond_3a
    :goto_3a
    return-void

    .line 3736
    :cond_3b
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$000(Lcom/android/browser/BrowserActivity;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 3737
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$002(Lcom/android/browser/BrowserActivity;Z)Z

    .line 3738
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$3600(Lcom/android/browser/BrowserActivity;)V

    goto :goto_3a
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter "view"
    .parameter "icon"

    .prologue
    .line 3788
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/browser/BrowserActivity;->access$3000(Lcom/android/browser/BrowserActivity;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 3789
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 15
    .parameter "view"
    .parameter "title"

    .prologue
    const-string v11, "browser"

    .line 3745
    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v10

    .line 3748
    .local v10, url:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0, v10, p2}, Lcom/android/browser/BrowserActivity;->access$2900(Lcom/android/browser/BrowserActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3750
    if-eqz v10, :cond_16

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xc350

    if-lt v0, v1, :cond_17

    .line 3784
    :cond_16
    :goto_16
    return-void

    .line 3754
    :cond_17
    const-string v0, "http://www."

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 3755
    const/16 v0, 0xb

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 3760
    :cond_25
    :goto_25
    :try_start_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3761
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v10, v4, v0

    .line 3763
    .local v4, selArgs:[Ljava/lang/String;
    const-string v3, "url LIKE ? AND bookmark = 0"

    .line 3765
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$4700(Lcom/android/browser/BrowserActivity;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3767
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 3773
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 3775
    .local v9, titleIndex:I
    invoke-interface {v6, v9, p2}, Landroid/database/Cursor;->updateString(ILjava/lang/String;)Z

    .line 3776
    invoke-interface {v6}, Landroid/database/Cursor;->commitUpdates()Z

    .line 3778
    .end local v9           #titleIndex:I
    :cond_61
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_64
    .catch Ljava/lang/IllegalStateException; {:try_start_25 .. :try_end_64} :catch_65
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_25 .. :try_end_64} :catch_7d

    goto :goto_16

    .line 3779
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #selArgs:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :catch_65
    move-exception v0

    move-object v7, v0

    .line 3780
    .local v7, e:Ljava/lang/IllegalStateException;
    const-string v0, "browser"

    const-string v0, "BrowserActivity onReceived title"

    invoke-static {v11, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 3756
    .end local v7           #e:Ljava/lang/IllegalStateException;
    :cond_6f
    const-string v0, "http://"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3757
    const/4 v0, 0x4

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_25

    .line 3781
    :catch_7d
    move-exception v0

    move-object v8, v0

    .line 3782
    .local v8, ex:Landroid/database/sqlite/SQLiteException;
    const-string v0, "browser"

    const-string v0, "onReceivedTitle() caught SQLiteException: "

    invoke-static {v11, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

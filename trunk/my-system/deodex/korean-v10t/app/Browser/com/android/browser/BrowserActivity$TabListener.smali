.class Lcom/android/browser/BrowserActivity$TabListener;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Lcom/android/browser/ImageGrid$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method private constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 5261
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$TabListener;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/BrowserActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5261
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity$TabListener;-><init>(Lcom/android/browser/BrowserActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .registers 8
    .parameter "index"

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5303
    const/16 v0, -0x63

    if-ne p1, v0, :cond_20

    .line 5304
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$TabListener;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result p1

    .line 5306
    if-ne p1, v4, :cond_20

    .line 5308
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$TabListener;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int p1, v0, v1

    .line 5314
    :cond_20
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$TabListener;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->wipeAllPickerData()V

    .line 5317
    if-ne p1, v4, :cond_3b

    .line 5318
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$TabListener;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$TabListener;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->access$200(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3, v2, v3}, Lcom/android/browser/BrowserActivity;->access$2200(Lcom/android/browser/BrowserActivity;Ljava/lang/String;Landroid/os/Message;ZLjava/lang/String;)V

    .line 5323
    :goto_3a
    return-void

    .line 5320
    :cond_3b
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$TabListener;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$TabListener;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/TabControl$Tab;

    move-result-object v1

    move v4, v2

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/browser/BrowserActivity;->access$8100(Lcom/android/browser/BrowserActivity;Lcom/android/browser/TabControl$Tab;ZLjava/lang/String;ILandroid/os/Message;)V

    goto :goto_3a
.end method

.method public remove(I)V
    .registers 10
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    .line 5269
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$TabListener;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/TabControl$Tab;

    move-result-object v1

    .line 5270
    .local v1, current:Lcom/android/browser/TabControl$Tab;
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$TabListener;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/TabControl$Tab;

    move-result-object v7

    .line 5271
    .local v7, remove:Lcom/android/browser/TabControl$Tab;
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$TabListener;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/browser/TabControl;->removeTab(Lcom/android/browser/TabControl$Tab;)Z

    .line 5274
    if-ne v1, v7, :cond_48

    .line 5277
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$TabListener;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v0

    if-nez v0, :cond_76

    .line 5278
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$TabListener;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->createNewTab()Lcom/android/browser/TabControl$Tab;

    move-result-object v1

    .line 5279
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$TabListener;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v3, p0, Lcom/android/browser/BrowserActivity$TabListener;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v3}, Lcom/android/browser/BrowserActivity;->access$200(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/BrowserSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x320

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/browser/BrowserActivity;->access$8100(Lcom/android/browser/BrowserActivity;Lcom/android/browser/TabControl$Tab;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 5289
    :cond_48
    :goto_48
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$TabListener;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$1200(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/ImageGrid;

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 5291
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$TabListener;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$1200(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/ImageGrid;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/browser/ImageGrid;->remove(I)V

    .line 5292
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$TabListener;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$1200(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/ImageGrid;

    move-result-object v0

    iget-object v2, p0, Lcom/android/browser/BrowserActivity$TabListener;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v2}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/TabControl$Tab;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/browser/ImageGrid;->setCurrentIndex(I)V

    .line 5297
    :cond_6c
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$TabListener;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/TabControl$Tab;)Z

    .line 5298
    return-void

    .line 5282
    :cond_76
    if-lez p1, :cond_86

    sub-int v0, p1, v2

    move v6, v0

    .line 5283
    .local v6, index:I
    :goto_7b
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$TabListener;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/TabControl$Tab;

    move-result-object v1

    goto :goto_48

    .line 5282
    .end local v6           #index:I
    :cond_86
    const/4 v0, 0x0

    move v6, v0

    goto :goto_7b
.end method

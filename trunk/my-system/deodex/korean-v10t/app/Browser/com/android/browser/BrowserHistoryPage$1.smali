.class Lcom/android/browser/BrowserHistoryPage$1;
.super Ljava/lang/Object;
.source "BrowserHistoryPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserHistoryPage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserHistoryPage;

.field final synthetic val$list:Landroid/widget/ExpandableListView;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserHistoryPage;Landroid/widget/ExpandableListView;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/browser/BrowserHistoryPage$1;->this$0:Lcom/android/browser/BrowserHistoryPage;

    iput-object p2, p0, Lcom/android/browser/BrowserHistoryPage$1;->val$list:Landroid/widget/ExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$1;->val$list:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    if-lez v0, :cond_12

    .line 126
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$1;->val$list:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 128
    :cond_12
    return-void
.end method

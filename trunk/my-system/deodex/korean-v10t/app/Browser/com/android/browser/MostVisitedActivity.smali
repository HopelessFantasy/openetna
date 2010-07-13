.class public Lcom/android/browser/MostVisitedActivity;
.super Landroid/app/ListActivity;
.source "MostVisitedActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/MostVisitedActivity$1;,
        Lcom/android/browser/MostVisitedActivity$MyAdapter;,
        Lcom/android/browser/MostVisitedActivity$IconReceiver;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/browser/MostVisitedActivity$MyAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 83
    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/MostVisitedActivity;)Lcom/android/browser/MostVisitedActivity$MyAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/browser/MostVisitedActivity;->mAdapter:Lcom/android/browser/MostVisitedActivity$MyAdapter;

    return-object v0
.end method

.method private loadUrl(Ljava/lang/String;Z)V
    .registers 7
    .parameter "url"
    .parameter "newWindow"

    .prologue
    .line 73
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 74
    .local v1, intent:Landroid/content/Intent;
    if-eqz p2, :cond_19

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "new_window"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 79
    .end local v0           #b:Landroid/os/Bundle;
    :cond_19
    const/4 v2, -0x1

    invoke-direct {p0, v2, v1}, Lcom/android/browser/MostVisitedActivity;->setResultToParent(ILandroid/content/Intent;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/browser/MostVisitedActivity;->finish()V

    .line 81
    return-void
.end method

.method private setResultToParent(ILandroid/content/Intent;)V
    .registers 5
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/browser/MostVisitedActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_b

    move-object v0, p0

    .line 196
    .local v0, a:Landroid/app/Activity;
    :goto_7
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 197
    return-void

    .line 195
    .end local v0           #a:Landroid/app/Activity;
    :cond_b
    invoke-virtual {p0}, Lcom/android/browser/MostVisitedActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    move-object v0, v1

    goto :goto_7
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 47
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    new-instance v3, Lcom/android/browser/MostVisitedActivity$MyAdapter;

    invoke-direct {v3, p0}, Lcom/android/browser/MostVisitedActivity$MyAdapter;-><init>(Lcom/android/browser/MostVisitedActivity;)V

    iput-object v3, p0, Lcom/android/browser/MostVisitedActivity;->mAdapter:Lcom/android/browser/MostVisitedActivity$MyAdapter;

    .line 49
    invoke-virtual {p0}, Lcom/android/browser/MostVisitedActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->getIconListenerSet(Landroid/content/ContentResolver;)Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;

    move-result-object v3

    new-instance v4, Lcom/android/browser/MostVisitedActivity$IconReceiver;

    invoke-direct {v4, p0, v6}, Lcom/android/browser/MostVisitedActivity$IconReceiver;-><init>(Lcom/android/browser/MostVisitedActivity;Lcom/android/browser/MostVisitedActivity$1;)V

    invoke-virtual {v3, v4}, Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;->addListener(Landroid/webkit/WebIconDatabase$IconListener;)V

    .line 51
    iget-object v3, p0, Lcom/android/browser/MostVisitedActivity;->mAdapter:Lcom/android/browser/MostVisitedActivity$MyAdapter;

    invoke-virtual {p0, v3}, Lcom/android/browser/MostVisitedActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/browser/MostVisitedActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 53
    .local v1, list:Landroid/widget/ListView;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 54
    .local v0, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f03000b

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 55
    .local v2, v:Landroid/view/View;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Lcom/android/browser/MostVisitedActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 58
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 9
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 67
    const v2, 0x7f0c0002

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 68
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, url:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/browser/MostVisitedActivity;->loadUrl(Ljava/lang/String;Z)V

    .line 70
    return-void
.end method

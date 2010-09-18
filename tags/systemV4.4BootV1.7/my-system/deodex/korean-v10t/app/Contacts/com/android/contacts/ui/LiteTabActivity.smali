.class public Lcom/android/contacts/ui/LiteTabActivity;
.super Landroid/app/ActivityGroup;
.source "LiteTabActivity.java"


# instance fields
.field private mDefaultTab:Ljava/lang/String;

.field private mDefaultTabIndex:I

.field private mTabHost:Lcom/android/contacts/ui/LiteTabHost;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/ui/LiteTabActivity;->mDefaultTab:Ljava/lang/String;

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/ui/LiteTabActivity;->mDefaultTabIndex:I

    .line 19
    return-void
.end method

.method private ensureTabHost()V
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/contacts/ui/LiteTabActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    if-nez v0, :cond_a

    .line 99
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/LiteTabActivity;->setContentView(I)V

    .line 101
    :cond_a
    return-void
.end method


# virtual methods
.method public getTabHost()Lcom/android/contacts/ui/LiteTabHost;
    .registers 2

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/contacts/ui/LiteTabActivity;->ensureTabHost()V

    .line 121
    iget-object v0, p0, Lcom/android/contacts/ui/LiteTabActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    return-object v0
.end method

.method public getTabWidget()Lcom/android/contacts/ui/LiteTabWidget;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/contacts/ui/LiteTabActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    invoke-virtual {v0}, Lcom/android/contacts/ui/LiteTabHost;->getTabWidget()Lcom/android/contacts/ui/LiteTabWidget;

    move-result-object v0

    return-object v0
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "childActivity"
    .parameter "title"

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/contacts/ui/LiteTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-ne v1, p1, :cond_1b

    .line 107
    iget-object v1, p0, Lcom/android/contacts/ui/LiteTabActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    invoke-virtual {v1}, Lcom/android/contacts/ui/LiteTabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    .line 108
    .local v0, tabView:Landroid/view/View;
    if-eqz v0, :cond_1b

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1b

    .line 109
    check-cast v0, Landroid/widget/TextView;

    .end local v0           #tabView:Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_1b
    return-void
.end method

.method public onContentChanged()V
    .registers 3

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/ActivityGroup;->onContentChanged()V

    .line 87
    const v0, 0x7f050019

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/LiteTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ui/LiteTabHost;

    iput-object v0, p0, Lcom/android/contacts/ui/LiteTabActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    .line 89
    iget-object v0, p0, Lcom/android/contacts/ui/LiteTabActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    if-nez v0, :cond_1a

    .line 90
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a TabHost whose id attribute is \'R.id.lite_tabhost\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1a
    iget-object v0, p0, Lcom/android/contacts/ui/LiteTabActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    invoke-virtual {p0}, Lcom/android/contacts/ui/LiteTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/LiteTabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 95
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPostCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-direct {p0}, Lcom/android/contacts/ui/LiteTabActivity;->ensureTabHost()V

    .line 64
    iget-object v0, p0, Lcom/android/contacts/ui/LiteTabActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    invoke-virtual {v0}, Lcom/android/contacts/ui/LiteTabHost;->getCurrentTab()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 65
    iget-object v0, p0, Lcom/android/contacts/ui/LiteTabActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/LiteTabHost;->setCurrentTab(I)V

    .line 67
    :cond_15
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 44
    invoke-direct {p0}, Lcom/android/contacts/ui/LiteTabActivity;->ensureTabHost()V

    .line 45
    const-string v1, "currentTab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, cur:Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 47
    iget-object v1, p0, Lcom/android/contacts/ui/LiteTabActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    invoke-virtual {v1, v0}, Lcom/android/contacts/ui/LiteTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 49
    :cond_13
    iget-object v1, p0, Lcom/android/contacts/ui/LiteTabActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    invoke-virtual {v1}, Lcom/android/contacts/ui/LiteTabHost;->getCurrentTab()I

    move-result v1

    if-gez v1, :cond_26

    .line 50
    iget-object v1, p0, Lcom/android/contacts/ui/LiteTabActivity;->mDefaultTab:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 51
    iget-object v1, p0, Lcom/android/contacts/ui/LiteTabActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    iget-object v2, p0, Lcom/android/contacts/ui/LiteTabActivity;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/contacts/ui/LiteTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 56
    :cond_26
    :goto_26
    return-void

    .line 52
    :cond_27
    iget v1, p0, Lcom/android/contacts/ui/LiteTabActivity;->mDefaultTabIndex:I

    if-ltz v1, :cond_26

    .line 53
    iget-object v1, p0, Lcom/android/contacts/ui/LiteTabActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    iget v2, p0, Lcom/android/contacts/ui/LiteTabActivity;->mDefaultTabIndex:I

    invoke-virtual {v1, v2}, Lcom/android/contacts/ui/LiteTabHost;->setCurrentTab(I)V

    goto :goto_26
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 72
    iget-object v1, p0, Lcom/android/contacts/ui/LiteTabActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    invoke-virtual {v1}, Lcom/android/contacts/ui/LiteTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, currentTabTag:Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 74
    const-string v1, "currentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_10
    return-void
.end method

.method public setDefaultTab(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/ui/LiteTabActivity;->mDefaultTab:Ljava/lang/String;

    .line 38
    iput p1, p0, Lcom/android/contacts/ui/LiteTabActivity;->mDefaultTabIndex:I

    .line 39
    return-void
.end method

.method public setDefaultTab(Ljava/lang/String;)V
    .registers 3
    .parameter "tag"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/contacts/ui/LiteTabActivity;->mDefaultTab:Ljava/lang/String;

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/ui/LiteTabActivity;->mDefaultTabIndex:I

    .line 29
    return-void
.end method

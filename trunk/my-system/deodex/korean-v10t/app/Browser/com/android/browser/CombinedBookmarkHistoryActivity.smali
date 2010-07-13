.class public Lcom/android/browser/CombinedBookmarkHistoryActivity;
.super Landroid/app/TabActivity;
.source "CombinedBookmarkHistoryActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;
    }
.end annotation


# static fields
.field static BOOKMARKS_TAB:Ljava/lang/String;

.field static HISTORY_TAB:Ljava/lang/String;

.field static STARTING_TAB:Ljava/lang/String;

.field static VISITED_TAB:Ljava/lang/String;

.field private static sIconListenerSet:Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-string v0, "bookmark"

    sput-object v0, Lcom/android/browser/CombinedBookmarkHistoryActivity;->BOOKMARKS_TAB:Ljava/lang/String;

    .line 38
    const-string v0, "visited"

    sput-object v0, Lcom/android/browser/CombinedBookmarkHistoryActivity;->VISITED_TAB:Ljava/lang/String;

    .line 39
    const-string v0, "history"

    sput-object v0, Lcom/android/browser/CombinedBookmarkHistoryActivity;->HISTORY_TAB:Ljava/lang/String;

    .line 40
    const-string v0, "tab"

    sput-object v0, Lcom/android/browser/CombinedBookmarkHistoryActivity;->STARTING_TAB:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 42
    return-void
.end method

.method static getIconListenerSet(Landroid/content/ContentResolver;)Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;
    .registers 3
    .parameter "cr"

    .prologue
    .line 68
    sget-object v0, Lcom/android/browser/CombinedBookmarkHistoryActivity;->sIconListenerSet:Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;

    if-nez v0, :cond_11

    .line 69
    new-instance v0, Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;

    invoke-direct {v0}, Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;-><init>()V

    sput-object v0, Lcom/android/browser/CombinedBookmarkHistoryActivity;->sIconListenerSet:Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;

    .line 70
    const/4 v0, 0x0

    sget-object v1, Lcom/android/browser/CombinedBookmarkHistoryActivity;->sIconListenerSet:Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;

    invoke-static {p0, v0, v1}, Landroid/provider/Browser;->requestAllIcons(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V

    .line 72
    :cond_11
    sget-object v0, Lcom/android/browser/CombinedBookmarkHistoryActivity;->sIconListenerSet:Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->requestWindowFeature(I)Z

    .line 79
    const v7, 0x7f03001c

    invoke-virtual {p0, v7}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->setContentView(I)V

    .line 80
    invoke-virtual {p0}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v5

    .line 81
    .local v5, tabHost:Landroid/widget/TabHost;
    invoke-virtual {v5, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 84
    .local v2, extras:Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 86
    .local v4, resources:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->getIconListenerSet(Landroid/content/ContentResolver;)Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-class v7, Lcom/android/browser/BrowserBookmarksPage;

    invoke-direct {v0, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v0, bookmarksIntent:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 89
    sget-object v7, Lcom/android/browser/CombinedBookmarkHistoryActivity;->BOOKMARKS_TAB:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    const v8, 0x7f070001

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f020008

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 94
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/android/browser/MostVisitedActivity;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v6, visitedIntent:Landroid/content/Intent;
    invoke-virtual {v6, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 96
    sget-object v7, Lcom/android/browser/CombinedBookmarkHistoryActivity;->VISITED_TAB:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    const v8, 0x7f070002

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f02000d

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 101
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lcom/android/browser/BrowserHistoryPage;

    invoke-direct {v3, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v3, historyIntent:Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 103
    sget-object v7, Lcom/android/browser/CombinedBookmarkHistoryActivity;->HISTORY_TAB:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    const v8, 0x7f070003

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f020009

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 108
    sget-object v7, Lcom/android/browser/CombinedBookmarkHistoryActivity;->STARTING_TAB:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, defaultTab:Ljava/lang/String;
    if-eqz v1, :cond_ae

    .line 110
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 112
    :cond_ae
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .registers 4
    .parameter "tabId"

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 118
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_e

    .line 119
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 121
    :cond_e
    return-void
.end method

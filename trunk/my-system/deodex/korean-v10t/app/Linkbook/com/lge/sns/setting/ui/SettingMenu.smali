.class public Lcom/lge/sns/setting/ui/SettingMenu;
.super Lcom/lge/sns/common/ui/LiteTabActivity;
.source "SettingMenu.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lge/sns/common/ui/LiteTabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const/high16 v9, 0x400

    const/4 v7, 0x7

    .line 32
    invoke-super {p0, p1}, Lcom/lge/sns/common/ui/LiteTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0, v7}, Lcom/lge/sns/setting/ui/SettingMenu;->requestWindowFeature(I)Z

    .line 34
    const v5, 0x7f030023

    invoke-virtual {p0, v5}, Lcom/lge/sns/setting/ui/SettingMenu;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lcom/lge/sns/setting/ui/SettingMenu;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x7f030003

    invoke-virtual {v5, v7, v6}, Landroid/view/Window;->setFeatureInt(II)V

    .line 37
    const v5, 0x7f08000e

    invoke-virtual {p0, v5}, Lcom/lge/sns/setting/ui/SettingMenu;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 38
    .local v4, titleText:Landroid/widget/TextView;
    const v5, 0x7f050028

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 40
    invoke-virtual {p0}, Lcom/lge/sns/setting/ui/SettingMenu;->getTabHost()Lcom/lge/sns/common/ui/LiteTabHost;

    move-result-object v2

    .line 43
    .local v2, tabHost:Lcom/lge/sns/common/ui/LiteTabHost;
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.lge.sns.account.intent.action.UPDATE_INTERVAL"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .local v3, timeSetting:Landroid/content/Intent;
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 45
    const-string v5, "timeSetting"

    invoke-virtual {v2, v5}, Lcom/lge/sns/common/ui/LiteTabHost;->newTabSpec(Ljava/lang/String;)Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;

    move-result-object v5

    const v6, 0x7f050060

    invoke-virtual {p0, v6}, Lcom/lge/sns/setting/ui/SettingMenu;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/lge/sns/setting/ui/SettingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0200a3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lge/sns/common/ui/LiteTabHost;->addTab(Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;)V

    .line 50
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.lge.sns.account.intent.action.FEED_SETTING"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v1, feedSetting:Landroid/content/Intent;
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 52
    const-string v5, "feedSetting"

    invoke-virtual {v2, v5}, Lcom/lge/sns/common/ui/LiteTabHost;->newTabSpec(Ljava/lang/String;)Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;

    move-result-object v5

    const v6, 0x7f05005f

    invoke-virtual {p0, v6}, Lcom/lge/sns/setting/ui/SettingMenu;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/lge/sns/setting/ui/SettingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0200a2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lge/sns/common/ui/LiteTabHost;->addTab(Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;)V

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, activeTab:Ljava/lang/String;
    if-eqz p1, :cond_8f

    .line 58
    const-string v5, "currentTab"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    :cond_8f
    if-eqz v0, :cond_95

    .line 61
    invoke-virtual {v2, v0}, Lcom/lge/sns/common/ui/LiteTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 66
    :goto_94
    return-void

    .line 63
    :cond_95
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/lge/sns/common/ui/LiteTabHost;->setCurrentTab(I)V

    goto :goto_94
.end method

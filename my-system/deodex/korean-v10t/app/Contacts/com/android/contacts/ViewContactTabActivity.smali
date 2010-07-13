.class public Lcom/android/contacts/ViewContactTabActivity;
.super Lcom/android/contacts/ui/LiteTabActivity;
.source "ViewContactTabActivity.java"

# interfaces
.implements Lcom/android/contacts/ui/LiteTabHost$OnTabChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewContactTabActivity"


# instance fields
.field private MANAGE_SOCIAL_NETWORK:Z

.field private mContactUri:Landroid/net/Uri;

.field private mCursor:Landroid/database/Cursor;

.field private mTabHost:Lcom/android/contacts/ui/LiteTabHost;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/contacts/ui/LiteTabActivity;-><init>()V

    return-void
.end method

.method private dataChanged()V
    .registers 4

    .prologue
    .line 169
    iget-object v1, p0, Lcom/android/contacts/ViewContactTabActivity;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_5

    .line 179
    :cond_4
    :goto_4
    return-void

    .line 172
    :cond_5
    iget-object v1, p0, Lcom/android/contacts/ViewContactTabActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    .line 173
    iget-object v1, p0, Lcom/android/contacts/ViewContactTabActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 174
    iget-object v1, p0, Lcom/android/contacts/ViewContactTabActivity;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, name:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 176
    invoke-virtual {p0, v0}, Lcom/android/contacts/ViewContactTabActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method private setupActivityLogTab()V
    .registers 7

    .prologue
    .line 127
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/ViewContactTabActivity;->mContactUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 128
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/contacts/ViewContactLogsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 130
    iget-object v1, p0, Lcom/android/contacts/ViewContactTabActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    iget-object v2, p0, Lcom/android/contacts/ViewContactTabActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    const-string v3, "Log"

    invoke-virtual {v2, v3}, Lcom/android/contacts/ui/LiteTabHost;->newTabSpec(Ljava/lang/String;)Lcom/android/contacts/ui/LiteTabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f0600dc

    invoke-virtual {p0, v3}, Lcom/android/contacts/ViewContactTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/ViewContactTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200d7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/ui/LiteTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/android/contacts/ui/LiteTabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/contacts/ui/LiteTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/android/contacts/ui/LiteTabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/ui/LiteTabHost;->addTab(Lcom/android/contacts/ui/LiteTabHost$TabSpec;)V

    .line 134
    return-void
.end method

.method private setupSNProfileTab()V
    .registers 7

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    iget-object v2, p0, Lcom/android/contacts/ViewContactTabActivity;->mContactUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 103
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/contacts/ViewContactProfilesActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Lcom/android/contacts/ViewContactTabActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    iget-object v2, p0, Lcom/android/contacts/ViewContactTabActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    const-string v3, "Community"

    invoke-virtual {v2, v3}, Lcom/android/contacts/ui/LiteTabHost;->newTabSpec(Ljava/lang/String;)Lcom/android/contacts/ui/LiteTabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f0600dd

    invoke-virtual {p0, v3}, Lcom/android/contacts/ViewContactTabActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/ViewContactTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200d8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/ui/LiteTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/android/contacts/ui/LiteTabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/contacts/ui/LiteTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/android/contacts/ui/LiteTabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/ui/LiteTabHost;->addTab(Lcom/android/contacts/ui/LiteTabHost$TabSpec;)V

    .line 109
    return-void
.end method

.method private setupViewContactTab()V
    .registers 7

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/android/contacts/ViewContactTabActivity;->mContactUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 116
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/contacts/ViewContactActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 118
    iget-object v1, p0, Lcom/android/contacts/ViewContactTabActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    iget-object v2, p0, Lcom/android/contacts/ViewContactTabActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    const-string v3, "View"

    invoke-virtual {v2, v3}, Lcom/android/contacts/ui/LiteTabHost;->newTabSpec(Ljava/lang/String;)Lcom/android/contacts/ui/LiteTabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f0600db

    invoke-virtual {p0, v3}, Lcom/android/contacts/ViewContactTabActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/ViewContactTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200d6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/ui/LiteTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/android/contacts/ui/LiteTabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/contacts/ui/LiteTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/android/contacts/ui/LiteTabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/ui/LiteTabHost;->addTab(Lcom/android/contacts/ui/LiteTabHost$TabSpec;)V

    .line 122
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "icicle"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 33
    invoke-super {p0, p1}, Lcom/android/contacts/ui/LiteTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-static {p0}, Lcom/android/contacts/FlexibleOptionHelper;->isLinkbookEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/ViewContactTabActivity;->MANAGE_SOCIAL_NETWORK:Z

    .line 39
    iput-object v3, p0, Lcom/android/contacts/ViewContactTabActivity;->mContactUri:Landroid/net/Uri;

    .line 43
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 45
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ViewContactTabActivity;->mContactUri:Landroid/net/Uri;

    .line 46
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ViewContactTabActivity;->mContactUri:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "name"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ViewContactTabActivity;->mCursor:Landroid/database/Cursor;

    .line 49
    iget-object v0, p0, Lcom/android/contacts/ViewContactTabActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/contacts/ViewContactTabActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/contacts/ViewContactTabActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 50
    :cond_3c
    const-string v0, "ViewContactTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid contact uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/ViewContactTabActivity;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactTabActivity;->finish()V

    .line 79
    :goto_59
    return-void

    .line 57
    :cond_5a
    invoke-virtual {p0, v7}, Lcom/android/contacts/ViewContactTabActivity;->requestWindowFeature(I)Z

    .line 59
    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Lcom/android/contacts/ViewContactTabActivity;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactTabActivity;->getTabHost()Lcom/android/contacts/ui/LiteTabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ViewContactTabActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    .line 62
    iget-object v0, p0, Lcom/android/contacts/ViewContactTabActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    invoke-virtual {v0, p0}, Lcom/android/contacts/ui/LiteTabHost;->setOnTabChangedListener(Lcom/android/contacts/ui/LiteTabHost$OnTabChangeListener;)V

    .line 66
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactTabActivity;->MANAGE_SOCIAL_NETWORK:Z

    if-eqz v0, :cond_75

    .line 67
    invoke-direct {p0}, Lcom/android/contacts/ViewContactTabActivity;->setupSNProfileTab()V

    .line 71
    :cond_75
    invoke-direct {p0}, Lcom/android/contacts/ViewContactTabActivity;->setupViewContactTab()V

    .line 72
    invoke-direct {p0}, Lcom/android/contacts/ViewContactTabActivity;->setupActivityLogTab()V

    .line 74
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactTabActivity;->MANAGE_SOCIAL_NETWORK:Z

    if-eqz v0, :cond_85

    .line 75
    iget-object v0, p0, Lcom/android/contacts/ViewContactTabActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    invoke-virtual {v0, v7}, Lcom/android/contacts/ui/LiteTabHost;->setCurrentTab(I)V

    goto :goto_59

    .line 77
    :cond_85
    iget-object v0, p0, Lcom/android/contacts/ViewContactTabActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    invoke-virtual {v0, v8}, Lcom/android/contacts/ui/LiteTabHost;->setCurrentTab(I)V

    goto :goto_59
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 92
    invoke-super {p0}, Lcom/android/contacts/ui/LiteTabActivity;->onDestroy()V

    .line 94
    iget-object v0, p0, Lcom/android/contacts/ViewContactTabActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    .line 95
    iget-object v0, p0, Lcom/android/contacts/ViewContactTabActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_c
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 140
    const/4 v0, 0x4

    if-ne p1, v0, :cond_f

    invoke-virtual {p0}, Lcom/android/contacts/ViewContactTabActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/ViewContactTabActivity;->moveTaskToBack(Z)Z

    .line 146
    const/4 v0, 0x1

    .line 148
    :goto_e
    return v0

    :cond_f
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ui/LiteTabActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_e
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/contacts/ui/LiteTabActivity;->onResume()V

    .line 86
    invoke-direct {p0}, Lcom/android/contacts/ViewContactTabActivity;->dataChanged()V

    .line 87
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .registers 7
    .parameter "tabId"

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 154
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_e

    .line 156
    const/4 v2, 0x1

    :try_start_b
    invoke-virtual {v0, v2}, Landroid/app/Activity;->onWindowFocusChanged(Z)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_f

    .line 165
    :cond_e
    :goto_e
    return-void

    .line 157
    :catch_f
    move-exception v1

    .line 158
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f06003a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0600ec

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_e
.end method

.class public Lcom/android/phone/DialtactsActivity;
.super Landroid/app/TabActivity;
.source "DialtactsActivity.java"


# static fields
.field public static final EXTRA_IGNORE_STATE:Ljava/lang/String; = "ignore-state"

.field private static final FAVORITES_FREQUENT:I = 0x2

.field private static final FAVORITES_STARRED:I = 0x1

.field private static final FAVORITES_STREQUENT:I = 0x3

.field private static final FAVORITES_TAB_MODE:I = 0x1


# instance fields
.field protected mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method private fixIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 77
    const-string v0, "android.intent.action.CALL_BUTTON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 78
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v0, "call_key"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/phone/DialtactsActivity;->setIntent(Landroid/content/Intent;)V

    .line 82
    :cond_1c
    return-void
.end method

.method private isSendKeyWhileInCall(Landroid/content/Intent;Z)Z
    .registers 7
    .parameter "intent"
    .parameter "recentCallsRequest"

    .prologue
    const/4 v3, 0x0

    .line 139
    if-eqz p2, :cond_19

    .line 140
    const-string v2, "call_key"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 143
    .local v1, callKey:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 144
    .local v0, app:Lcom/android/phone/PhoneApp;
    if-eqz v1, :cond_19

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->handleInCallOrRinging()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 145
    const/4 v2, 0x1

    .line 149
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #callKey:Z
    :goto_18
    return v2

    :cond_19
    move v2, v3

    goto :goto_18
.end method

.method private setCurrentTab(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "ignore-state"

    .line 158
    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 159
    .local v0, recentCallsRequest:Z
    invoke-direct {p0, p1, v0}, Lcom/android/phone/DialtactsActivity;->isSendKeyWhileInCall(Landroid/content/Intent;Z)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 160
    invoke-virtual {p0}, Lcom/android/phone/DialtactsActivity;->finish()V

    .line 174
    :goto_17
    return-void

    .line 163
    :cond_18
    const-string v1, "ignore-state"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 164
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 165
    if-eqz v0, :cond_40

    .line 166
    iget-object v1, p0, Lcom/android/phone/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v4}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 173
    :goto_3a
    const-string v1, "ignore-state"

    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_17

    .line 168
    :cond_40
    iget-object v1, p0, Lcom/android/phone/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_3a

    .line 171
    :cond_46
    iget-object v1, p0, Lcom/android/phone/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_3a
.end method

.method private setupCallLogTab()V
    .registers 6

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/phone/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/phone/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "call_log"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f090005

    invoke-virtual {p0, v2}, Lcom/android/phone/DialtactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02005a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.phone.action.RECENT_CALLS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 89
    return-void
.end method

.method private setupContactsTab()V
    .registers 6

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/phone/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/phone/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "contacts"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const/high16 v2, 0x7f09

    invoke-virtual {p0, v2}, Lcom/android/phone/DialtactsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020058

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.LIST_DEFAULT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 103
    return-void
.end method

.method private setupDialerTab()V
    .registers 6

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/phone/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/phone/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "dialer"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f090002

    invoke-virtual {p0, v2}, Lcom/android/phone/DialtactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020059

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.phone.action.TOUCH_DIALER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 96
    return-void
.end method

.method private setupFavoritesTab()V
    .registers 6

    .prologue
    .line 107
    const/4 v2, 0x1

    packed-switch v2, :pswitch_data_4c

    .line 121
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "unknown default mode"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    :pswitch_c
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.LIST_STARRED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, tab2Intent:Landroid/content/Intent;
    :goto_13
    invoke-virtual {p0}, Lcom/android/phone/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02005f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 125
    .local v0, tab2Icon:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/phone/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/android/phone/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "favorites"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const v4, 0x7f090001

    invoke-virtual {p0, v4}, Lcom/android/phone/DialtactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 128
    return-void

    .line 113
    .end local v0           #tab2Icon:Landroid/graphics/drawable/Drawable;
    .end local v1           #tab2Intent:Landroid/content/Intent;
    :pswitch_3b
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.LIST_FREQUENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .restart local v1       #tab2Intent:Landroid/content/Intent;
    goto :goto_13

    .line 117
    .end local v1           #tab2Intent:Landroid/content/Intent;
    :pswitch_43
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.LIST_STREQUENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .restart local v1       #tab2Intent:Landroid/content/Intent;
    goto :goto_13

    .line 107
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_c
        :pswitch_3b
        :pswitch_43
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/phone/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 51
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/phone/DialtactsActivity;->fixIntent(Landroid/content/Intent;)V

    .line 52
    const-string v2, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 54
    .local v1, recentCallsRequest:Z
    invoke-direct {p0, v0, v1}, Lcom/android/phone/DialtactsActivity;->isSendKeyWhileInCall(Landroid/content/Intent;Z)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 55
    invoke-virtual {p0}, Lcom/android/phone/DialtactsActivity;->finish()V

    .line 71
    :goto_1d
    return-void

    .line 59
    :cond_1e
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/phone/DialtactsActivity;->requestWindowFeature(I)Z

    .line 60
    const v2, 0x7f030008

    invoke-virtual {p0, v2}, Lcom/android/phone/DialtactsActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/android/phone/DialtactsActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    .line 65
    invoke-direct {p0}, Lcom/android/phone/DialtactsActivity;->setupDialerTab()V

    .line 66
    invoke-direct {p0}, Lcom/android/phone/DialtactsActivity;->setupCallLogTab()V

    .line 67
    invoke-direct {p0}, Lcom/android/phone/DialtactsActivity;->setupContactsTab()V

    .line 68
    invoke-direct {p0}, Lcom/android/phone/DialtactsActivity;->setupFavoritesTab()V

    .line 70
    invoke-direct {p0, v0}, Lcom/android/phone/DialtactsActivity;->setCurrentTab(Landroid/content/Intent;)V

    goto :goto_1d
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 186
    const/4 v0, 0x4

    if-ne p1, v0, :cond_f

    invoke-virtual {p0}, Lcom/android/phone/DialtactsActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/DialtactsActivity;->moveTaskToBack(Z)Z

    .line 192
    const/4 v0, 0x1

    .line 195
    :goto_e
    return v0

    :cond_f
    invoke-super {p0, p1, p2}, Landroid/app/TabActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_e
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "newIntent"

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/phone/DialtactsActivity;->setIntent(Landroid/content/Intent;)V

    .line 179
    invoke-direct {p0, p1}, Lcom/android/phone/DialtactsActivity;->fixIntent(Landroid/content/Intent;)V

    .line 180
    invoke-direct {p0, p1}, Lcom/android/phone/DialtactsActivity;->setCurrentTab(Landroid/content/Intent;)V

    .line 181
    return-void
.end method

.class public Lcom/android/contacts/DialtactsActivity;
.super Lcom/android/contacts/ui/LiteTabActivity;
.source "DialtactsActivity.java"

# interfaces
.implements Lcom/android/contacts/ui/LiteTabHost$OnTabChangeListener;


# static fields
.field static final EXTRA_IGNORE_STATE:Ljava/lang/String; = "ignore-state"

.field private static final FAVORITES_ENTRY_COMPONENT:Ljava/lang/String; = "com.android.contacts.DialtactsFavoritesEntryActivity"

.field static final PREFS_DIALTACTS:Ljava/lang/String; = "dialtacts"

.field static final PREF_FAVORITES_AS_CONTACTS:Ljava/lang/String; = "favorites_as_contacts"

.field static final PREF_FAVORITES_AS_CONTACTS_DEFAULT:Z = false

.field private static final TAB_INDEX_CALL_LOG:I = 0x1

.field private static final TAB_INDEX_CONTACTS:I = 0x2

.field private static final TAB_INDEX_DIALER:I = 0x0

.field private static final TAB_INDEX_FAVORITES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Dailtacts"


# instance fields
.field private mDialUri:Landroid/net/Uri;

.field private mFilterText:Ljava/lang/String;

.field private mKeyEvent:Landroid/view/KeyEvent;

.field private mTabHost:Lcom/android/contacts/ui/LiteTabHost;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/contacts/ui/LiteTabActivity;-><init>()V

    return-void
.end method

.method private fixIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 118
    const-string v0, "android.intent.action.CALL_BUTTON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 119
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v0, "call_key"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/contacts/DialtactsActivity;->setIntent(Landroid/content/Intent;)V

    .line 123
    :cond_1c
    return-void
.end method

.method private isDialIntent(Landroid/content/Intent;)Z
    .registers 7
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 302
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v4

    .line 312
    :goto_e
    return v2

    .line 306
    :cond_f
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 307
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 308
    .local v1, data:Landroid/net/Uri;
    if-eqz v1, :cond_2b

    const-string v2, "tel"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    move v2, v4

    .line 309
    goto :goto_e

    .line 312
    .end local v1           #data:Landroid/net/Uri;
    :cond_2b
    const/4 v2, 0x0

    goto :goto_e
.end method

.method private isSendKeyWhileInCall(Landroid/content/Intent;Z)Z
    .registers 9
    .parameter "intent"
    .parameter "recentCallsRequest"

    .prologue
    const/4 v5, 0x0

    .line 211
    if-eqz p2, :cond_28

    .line 212
    const-string v3, "call_key"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 215
    .local v0, callKey:Z
    :try_start_9
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 216
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_28

    if-eqz v2, :cond_28

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1a} :catch_1f

    move-result v3

    if-eqz v3, :cond_28

    .line 217
    const/4 v3, 0x1

    .line 224
    .end local v0           #callKey:Z
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :goto_1e
    return v3

    .line 219
    .restart local v0       #callKey:Z
    :catch_1f
    move-exception v3

    move-object v1, v3

    .line 220
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "Dailtacts"

    const-string v4, "Failed to handle send while in call"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #callKey:Z
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_28
    move v3, v5

    .line 224
    goto :goto_1e
.end method

.method private setCurrentTab(Landroid/content/Intent;)V
    .registers 15
    .parameter "intent"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v12, "ignore-state"

    .line 234
    const-string v6, "vnd.android.cursor.dir/calls"

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 235
    .local v5, recentCallsRequest:Z
    invoke-direct {p0, p1, v5}, Lcom/android/contacts/DialtactsActivity;->isSendKeyWhileInCall(Landroid/content/Intent;Z)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 236
    invoke-virtual {p0}, Lcom/android/contacts/DialtactsActivity;->finish()V

    .line 284
    :goto_19
    return-void

    .line 241
    :cond_1a
    invoke-virtual {p0}, Lcom/android/contacts/DialtactsActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    invoke-virtual {v7}, Lcom/android/contacts/ui/LiteTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v1

    .line 243
    .local v1, activity:Landroid/app/Activity;
    if-eqz v1, :cond_2d

    .line 244
    invoke-virtual {v1}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 249
    :cond_2d
    const-string v6, "ignore-state"

    invoke-virtual {p1, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 252
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, componentName:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 254
    if-eqz v5, :cond_55

    .line 255
    iget-object v6, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    invoke-virtual {v6, v9}, Lcom/android/contacts/ui/LiteTabHost;->setCurrentTab(I)V

    .line 283
    :goto_4f
    const-string v6, "ignore-state"

    invoke-virtual {p1, v12, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_19

    .line 257
    :cond_55
    iget-object v6, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    invoke-virtual {v6, v8}, Lcom/android/contacts/ui/LiteTabHost;->setCurrentTab(I)V

    goto :goto_4f

    .line 260
    :cond_5b
    const-string v6, "com.android.contacts.DialtactsRecentCallsEntryActivity"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 261
    iget-object v6, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    invoke-virtual {v6, v9}, Lcom/android/contacts/ui/LiteTabHost;->setCurrentTab(I)V

    goto :goto_4f

    .line 263
    :cond_69
    const-string v6, "com.android.contacts.DialtactsFavoritesEntryActivity"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_77

    .line 264
    iget-object v6, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    invoke-virtual {v6, v11}, Lcom/android/contacts/ui/LiteTabHost;->setCurrentTab(I)V

    goto :goto_4f

    .line 266
    :cond_77
    const-string v6, "dialtacts"

    invoke-virtual {p0, v6, v8}, Lcom/android/contacts/DialtactsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 267
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v6, "favorites_as_contacts"

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 269
    .local v3, favoritesAsContacts:Z
    const-string v6, "vnd.android.cursor.dir/person"

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 270
    .local v0, ContactsListRequest:Z
    if-nez v0, :cond_9d

    .line 271
    if-eqz v3, :cond_97

    .line 272
    iget-object v6, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    invoke-virtual {v6, v11}, Lcom/android/contacts/ui/LiteTabHost;->setCurrentTab(I)V

    goto :goto_4f

    .line 274
    :cond_97
    iget-object v6, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    invoke-virtual {v6, v10}, Lcom/android/contacts/ui/LiteTabHost;->setCurrentTab(I)V

    goto :goto_4f

    .line 277
    :cond_9d
    iget-object v6, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    invoke-virtual {v6, v10}, Lcom/android/contacts/ui/LiteTabHost;->setCurrentTab(I)V

    goto :goto_4f
.end method

.method private setupCallLogTab()V
    .registers 8

    .prologue
    const v6, 0x7f0200dc

    const-string v5, "call_log"

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.phone.action.RECENT_CALLS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, intent:Landroid/content/Intent;
    const-class v2, Lcom/android/contacts/RecentCallsListActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 131
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, operatorCode:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 133
    const-string v2, "ORG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_48

    .line 134
    iget-object v2, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    iget-object v3, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    const-string v4, "call_log"

    invoke-virtual {v3, v5}, Lcom/android/contacts/ui/LiteTabHost;->newTabSpec(Ljava/lang/String;)Lcom/android/contacts/ui/LiteTabHost$TabSpec;

    move-result-object v3

    const v4, 0x7f060120

    invoke-virtual {p0, v4}, Lcom/android/contacts/DialtactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/contacts/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/ui/LiteTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/android/contacts/ui/LiteTabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/contacts/ui/LiteTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/android/contacts/ui/LiteTabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/ui/LiteTabHost;->addTab(Lcom/android/contacts/ui/LiteTabHost$TabSpec;)V

    .line 147
    :goto_47
    return-void

    .line 143
    :cond_48
    iget-object v2, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    iget-object v3, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    const-string v4, "call_log"

    invoke-virtual {v3, v5}, Lcom/android/contacts/ui/LiteTabHost;->newTabSpec(Ljava/lang/String;)Lcom/android/contacts/ui/LiteTabHost$TabSpec;

    move-result-object v3

    const v4, 0x7f060062

    invoke-virtual {p0, v4}, Lcom/android/contacts/DialtactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/contacts/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/ui/LiteTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/android/contacts/ui/LiteTabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/contacts/ui/LiteTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/android/contacts/ui/LiteTabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/ui/LiteTabHost;->addTab(Lcom/android/contacts/ui/LiteTabHost$TabSpec;)V

    goto :goto_47
.end method

.method private setupContactsTab()V
    .registers 7

    .prologue
    .line 173
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.LIST_DEFAULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/contacts/ContactsListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 176
    iget-object v1, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    iget-object v2, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    const-string v3, "contacts"

    invoke-virtual {v2, v3}, Lcom/android/contacts/ui/LiteTabHost;->newTabSpec(Ljava/lang/String;)Lcom/android/contacts/ui/LiteTabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f06005f

    invoke-virtual {p0, v3}, Lcom/android/contacts/DialtactsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200d9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/ui/LiteTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/android/contacts/ui/LiteTabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/contacts/ui/LiteTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/android/contacts/ui/LiteTabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/ui/LiteTabHost;->addTab(Lcom/android/contacts/ui/LiteTabHost$TabSpec;)V

    .line 180
    return-void
.end method

.method private setupDialUri(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 385
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 389
    :goto_9
    return-void

    .line 388
    :cond_a
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/DialtactsActivity;->mDialUri:Landroid/net/Uri;

    goto :goto_9
.end method

.method private setupDialerTab()V
    .registers 8

    .prologue
    const v6, 0x7f0200da

    const-string v5, "dialer"

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.phone.action.TOUCH_DIALER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, intent:Landroid/content/Intent;
    const-class v2, Lcom/android/contacts/TwelveKeyDialer;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 154
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, operatorCode:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 156
    const-string v2, "TIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_48

    .line 157
    iget-object v2, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    iget-object v3, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    const-string v4, "dialer"

    invoke-virtual {v3, v5}, Lcom/android/contacts/ui/LiteTabHost;->newTabSpec(Ljava/lang/String;)Lcom/android/contacts/ui/LiteTabHost$TabSpec;

    move-result-object v3

    const v4, 0x7f06012a

    invoke-virtual {p0, v4}, Lcom/android/contacts/DialtactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/contacts/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/ui/LiteTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/android/contacts/ui/LiteTabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/contacts/ui/LiteTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/android/contacts/ui/LiteTabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/ui/LiteTabHost;->addTab(Lcom/android/contacts/ui/LiteTabHost$TabSpec;)V

    .line 170
    :cond_47
    :goto_47
    return-void

    .line 163
    :cond_48
    iget-object v2, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    iget-object v3, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    const-string v4, "dialer"

    invoke-virtual {v3, v5}, Lcom/android/contacts/ui/LiteTabHost;->newTabSpec(Ljava/lang/String;)Lcom/android/contacts/ui/LiteTabHost$TabSpec;

    move-result-object v3

    const v4, 0x7f060061

    invoke-virtual {p0, v4}, Lcom/android/contacts/DialtactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/contacts/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/ui/LiteTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/android/contacts/ui/LiteTabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/contacts/ui/LiteTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/android/contacts/ui/LiteTabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/ui/LiteTabHost;->addTab(Lcom/android/contacts/ui/LiteTabHost$TabSpec;)V

    goto :goto_47
.end method

.method private setupFilterKeyEvent(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 357
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 358
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_10

    .line 359
    const-string v1, "com.android.contacts.extra.KEY_EVENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    iput-object v1, p0, Lcom/android/contacts/DialtactsActivity;->mKeyEvent:Landroid/view/KeyEvent;

    .line 361
    :cond_10
    return-void
.end method

.method private setupFilterText(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 346
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    if-eqz v1, :cond_a

    .line 353
    :cond_9
    :goto_9
    return-void

    .line 349
    :cond_a
    const-string v1, "com.android.contacts.extra.FILTER_TEXT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, filter:Ljava/lang/String;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 351
    iput-object v0, p0, Lcom/android/contacts/DialtactsActivity;->mFilterText:Ljava/lang/String;

    goto :goto_9
.end method

.method private setupGroupsTab()V
    .registers 7

    .prologue
    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.LIST_DEFAULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/contacts/GroupsListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 196
    iget-object v1, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    iget-object v2, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    const-string v3, "groups"

    invoke-virtual {v2, v3}, Lcom/android/contacts/ui/LiteTabHost;->newTabSpec(Ljava/lang/String;)Lcom/android/contacts/ui/LiteTabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f0600da

    invoke-virtual {p0, v3}, Lcom/android/contacts/DialtactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200db

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/ui/LiteTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/android/contacts/ui/LiteTabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/contacts/ui/LiteTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/android/contacts/ui/LiteTabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/ui/LiteTabHost;->addTab(Lcom/android/contacts/ui/LiteTabHost$TabSpec;)V

    .line 200
    return-void
.end method


# virtual methods
.method public getAndClearDialUri()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/contacts/DialtactsActivity;->mDialUri:Landroid/net/Uri;

    .line 373
    .local v0, dialUri:Landroid/net/Uri;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/DialtactsActivity;->mDialUri:Landroid/net/Uri;

    .line 374
    return-object v0
.end method

.method public getAndClearFilterKeyEvent()Landroid/view/KeyEvent;
    .registers 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/contacts/DialtactsActivity;->mKeyEvent:Landroid/view/KeyEvent;

    .line 333
    .local v0, event:Landroid/view/KeyEvent;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/DialtactsActivity;->mKeyEvent:Landroid/view/KeyEvent;

    .line 334
    return-object v0
.end method

.method public getAndClearFilterText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/contacts/DialtactsActivity;->mFilterText:Ljava/lang/String;

    .line 325
    .local v0, filterText:Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/DialtactsActivity;->mFilterText:Ljava/lang/String;

    .line 326
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "icicle"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/android/contacts/ui/LiteTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/contacts/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 77
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/contacts/DialtactsActivity;->fixIntent(Landroid/content/Intent;)V

    .line 79
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/contacts/DialtactsActivity;->requestWindowFeature(I)Z

    .line 80
    const v1, 0x7f03000b

    invoke-virtual {p0, v1}, Lcom/android/contacts/DialtactsActivity;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Lcom/android/contacts/DialtactsActivity;->getTabHost()Lcom/android/contacts/ui/LiteTabHost;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    .line 83
    iget-object v1, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    invoke-virtual {v1, p0}, Lcom/android/contacts/ui/LiteTabHost;->setOnTabChangedListener(Lcom/android/contacts/ui/LiteTabHost$OnTabChangeListener;)V

    .line 86
    invoke-direct {p0}, Lcom/android/contacts/DialtactsActivity;->setupDialerTab()V

    .line 87
    invoke-direct {p0}, Lcom/android/contacts/DialtactsActivity;->setupCallLogTab()V

    .line 88
    invoke-direct {p0}, Lcom/android/contacts/DialtactsActivity;->setupContactsTab()V

    .line 90
    invoke-direct {p0}, Lcom/android/contacts/DialtactsActivity;->setupGroupsTab()V

    .line 92
    invoke-direct {p0, v0}, Lcom/android/contacts/DialtactsActivity;->setCurrentTab(Landroid/content/Intent;)V

    .line 94
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    if-nez p1, :cond_42

    .line 96
    invoke-direct {p0, v0}, Lcom/android/contacts/DialtactsActivity;->setupFilterText(Landroid/content/Intent;)V

    .line 97
    invoke-direct {p0, v0}, Lcom/android/contacts/DialtactsActivity;->setupFilterKeyEvent(Landroid/content/Intent;)V

    .line 99
    :cond_42
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 394
    const/4 v0, 0x4

    if-ne p1, v0, :cond_f

    invoke-virtual {p0}, Lcom/android/contacts/DialtactsActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 399
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/DialtactsActivity;->moveTaskToBack(Z)Z

    .line 400
    const/4 v0, 0x1

    .line 402
    :goto_e
    return v0

    :cond_f
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ui/LiteTabActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_e
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "newIntent"

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lcom/android/contacts/DialtactsActivity;->setIntent(Landroid/content/Intent;)V

    .line 289
    invoke-direct {p0, p1}, Lcom/android/contacts/DialtactsActivity;->fixIntent(Landroid/content/Intent;)V

    .line 290
    invoke-direct {p0, p1}, Lcom/android/contacts/DialtactsActivity;->setCurrentTab(Landroid/content/Intent;)V

    .line 291
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 293
    invoke-direct {p0, p1}, Lcom/android/contacts/DialtactsActivity;->setupFilterText(Landroid/content/Intent;)V

    .line 294
    invoke-direct {p0, p1}, Lcom/android/contacts/DialtactsActivity;->setupFilterKeyEvent(Landroid/content/Intent;)V

    .line 298
    :cond_1b
    :goto_1b
    return-void

    .line 295
    :cond_1c
    invoke-direct {p0, p1}, Lcom/android/contacts/DialtactsActivity;->isDialIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 296
    invoke-direct {p0, p1}, Lcom/android/contacts/DialtactsActivity;->setupDialUri(Landroid/content/Intent;)V

    goto :goto_1b
.end method

.method protected onPause()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 103
    invoke-super {p0}, Lcom/android/contacts/ui/LiteTabActivity;->onPause()V

    .line 105
    iget-object v2, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Lcom/android/contacts/ui/LiteTabHost;

    invoke-virtual {v2}, Lcom/android/contacts/ui/LiteTabHost;->getCurrentTab()I

    move-result v0

    .line 106
    .local v0, currentTabIndex:I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_10

    if-ne v0, v4, :cond_25

    .line 107
    :cond_10
    const-string v2, "dialtacts"

    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/DialtactsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 109
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "favorites_as_contacts"

    if-ne v0, v4, :cond_1f

    const/4 v3, 0x1

    :cond_1f
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 112
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_25
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .registers 4
    .parameter "tabId"

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/android/contacts/DialtactsActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 412
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_e

    .line 413
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 415
    :cond_e
    return-void
.end method

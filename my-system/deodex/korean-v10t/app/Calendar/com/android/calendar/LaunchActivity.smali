.class public Lcom/android/calendar/LaunchActivity;
.super Landroid/app/Activity;
.source "LaunchActivity.java"


# static fields
.field private static final GET_ACCOUNT_REQUEST:I = 0x1

.field static final KEY_DETAIL_VIEW:Ljava/lang/String; = "DETAIL_VIEW"


# instance fields
.field private mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private onAccountsLoaded(Ljava/lang/String;)V
    .registers 11
    .parameter "account"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/calendar/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 67
    .local v3, myIntent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 70
    .local v2, myData:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 71
    .local v1, intent:Landroid/content/Intent;
    if-eqz v2, :cond_12

    .line 72
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 75
    :cond_12
    const-string v0, "startView"

    .line 76
    .local v0, defaultViewKey:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/calendar/LaunchActivity;->mExtras:Landroid/os/Bundle;

    if-eqz v6, :cond_2a

    .line 77
    iget-object v6, p0, Lcom/android/calendar/LaunchActivity;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 78
    iget-object v6, p0, Lcom/android/calendar/LaunchActivity;->mExtras:Landroid/os/Bundle;

    const-string v7, "DETAIL_VIEW"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 79
    const-string v0, "preferredDetailedView"

    .line 82
    :cond_2a
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 84
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 85
    .local v4, prefs:Landroid/content/SharedPreferences;
    sget-object v6, Lcom/android/calendar/CalendarPreferenceActivity;->DEFAULT_START_VIEW:Ljava/lang/String;

    invoke-interface {v4, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 88
    .local v5, startActivity:Ljava/lang/String;
    invoke-virtual {v1, p0, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v1}, Lcom/android/calendar/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/calendar/LaunchActivity;->finish()V

    .line 91
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 95
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 96
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1a

    .line 97
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1b

    .line 98
    if-eqz p3, :cond_1a

    .line 99
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 100
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_1a

    .line 102
    const-string v2, "authAccount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, account:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/calendar/LaunchActivity;->onAccountsLoaded(Ljava/lang/String;)V

    .line 110
    .end local v0           #account:Ljava/lang/String;
    .end local v1           #extras:Landroid/os/Bundle;
    :cond_1a
    :goto_1a
    return-void

    .line 107
    :cond_1b
    invoke-virtual {p0}, Lcom/android/calendar/LaunchActivity;->finish()V

    goto :goto_1a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "icicle"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/calendar/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/LaunchActivity;->mExtras:Landroid/os/Bundle;

    .line 45
    invoke-virtual {p0, v3}, Lcom/android/calendar/LaunchActivity;->setVisible(Z)V

    .line 48
    if-nez p1, :cond_2c

    .line 52
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v2, bundle:Landroid/os/Bundle;
    const-string v0, "optional_message"

    const v4, 0x7f080002

    invoke-virtual {p0, v4}, Lcom/android/calendar/LaunchActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 54
    const-string v4, "mail"

    move-object v0, p0

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->getCredentials(Landroid/app/Activity;ILandroid/os/Bundle;ZLjava/lang/String;Z)V

    .line 62
    .end local v2           #bundle:Landroid/os/Bundle;
    :cond_2c
    return-void
.end method

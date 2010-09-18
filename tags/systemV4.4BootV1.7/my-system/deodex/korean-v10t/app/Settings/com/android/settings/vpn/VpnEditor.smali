.class public Lcom/android/settings/vpn/VpnEditor;
.super Landroid/preference/PreferenceActivity;
.source "VpnEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn/VpnEditor$2;
    }
.end annotation


# static fields
.field private static final KEY_ORIGINAL_PROFILE_NAME:Ljava/lang/String; = "orig_profile_name"

.field private static final KEY_PROFILE:Ljava/lang/String; = "profile"

.field private static final MENU_CANCEL:I = 0x2

.field private static final MENU_SAVE:I = 0x1


# instance fields
.field private mAddingProfile:Z

.field private mOriginalProfileData:[B

.field private mProfileEditor:Lcom/android/settings/vpn/VpnProfileEditor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 170
    return-void
.end method

.method private getEditor(Landroid/net/vpn/VpnProfile;)Lcom/android/settings/vpn/VpnProfileEditor;
    .registers 4
    .parameter "p"

    .prologue
    .line 156
    sget-object v0, Lcom/android/settings/vpn/VpnEditor$2;->$SwitchMap$android$net$vpn$VpnType:[I

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getType()Landroid/net/vpn/VpnType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/vpn/VpnType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    .line 170
    new-instance v0, Lcom/android/settings/vpn/VpnProfileEditor;

    invoke-direct {v0, p1}, Lcom/android/settings/vpn/VpnProfileEditor;-><init>(Landroid/net/vpn/VpnProfile;)V

    .end local p1
    :goto_14
    return-object v0

    .line 158
    .restart local p1
    :pswitch_15
    new-instance v0, Lcom/android/settings/vpn/L2tpIpsecEditor;

    check-cast p1, Landroid/net/vpn/L2tpIpsecProfile;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/settings/vpn/L2tpIpsecEditor;-><init>(Landroid/net/vpn/L2tpIpsecProfile;)V

    goto :goto_14

    .line 161
    .restart local p1
    :pswitch_1d
    new-instance v0, Lcom/android/settings/vpn/L2tpIpsecPskEditor;

    check-cast p1, Landroid/net/vpn/L2tpIpsecPskProfile;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/settings/vpn/L2tpIpsecPskEditor;-><init>(Landroid/net/vpn/L2tpIpsecPskProfile;)V

    goto :goto_14

    .line 164
    .restart local p1
    :pswitch_25
    new-instance v0, Lcom/android/settings/vpn/L2tpEditor;

    check-cast p1, Landroid/net/vpn/L2tpProfile;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/settings/vpn/L2tpEditor;-><init>(Landroid/net/vpn/L2tpProfile;)V

    goto :goto_14

    .line 167
    .restart local p1
    :pswitch_2d
    new-instance v0, Lcom/android/settings/vpn/PptpEditor;

    check-cast p1, Landroid/net/vpn/PptpProfile;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/settings/vpn/PptpEditor;-><init>(Landroid/net/vpn/PptpProfile;)V

    goto :goto_14

    .line 156
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_15
        :pswitch_1d
        :pswitch_25
        :pswitch_2d
    .end packed-switch
.end method

.method private getProfile()Landroid/net/vpn/VpnProfile;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/settings/vpn/VpnEditor;->mProfileEditor:Lcom/android/settings/vpn/VpnProfileEditor;

    invoke-virtual {v0}, Lcom/android/settings/vpn/VpnProfileEditor;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v0

    return-object v0
.end method

.method private initViewFor(Landroid/net/vpn/VpnProfile;)V
    .registers 4
    .parameter "profile"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnEditor;->setTitle(Landroid/net/vpn/VpnProfile;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/vpn/VpnEditor;->mProfileEditor:Lcom/android/settings/vpn/VpnProfileEditor;

    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn/VpnProfileEditor;->loadPreferencesTo(Landroid/preference/PreferenceGroup;)V

    .line 123
    return-void
.end method

.method private profileChanged()Z
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 197
    .local v3, newParcel:Landroid/os/Parcel;
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnEditor;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Landroid/net/vpn/VpnProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 198
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    .line 199
    .local v2, newData:[B
    iget-object v4, p0, Lcom/android/settings/vpn/VpnEditor;->mOriginalProfileData:[B

    array-length v4, v4

    array-length v5, v2

    if-ne v4, v5, :cond_2c

    .line 200
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Lcom/android/settings/vpn/VpnEditor;->mOriginalProfileData:[B

    array-length v1, v4

    .local v1, n:I
    :goto_1b
    if-ge v0, v1, :cond_2a

    .line 201
    iget-object v4, p0, Lcom/android/settings/vpn/VpnEditor;->mOriginalProfileData:[B

    aget-byte v4, v4, v0

    aget-byte v5, v2, v0

    if-eq v4, v5, :cond_27

    move v4, v7

    .line 205
    .end local v0           #i:I
    .end local v1           #n:I
    :goto_26
    return v4

    .line 200
    .restart local v0       #i:I
    .restart local v1       #n:I
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2a
    move v4, v6

    .line 203
    goto :goto_26

    .end local v0           #i:I
    .end local v1           #n:I
    :cond_2c
    move v4, v7

    .line 205
    goto :goto_26
.end method

.method private setResult(Landroid/net/vpn/VpnProfile;)V
    .registers 4
    .parameter "p"

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/vpn/VpnSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vpn_profile"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 152
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/vpn/VpnEditor;->setResult(ILandroid/content/Intent;)V

    .line 153
    return-void
.end method

.method private setTitle(Landroid/net/vpn/VpnProfile;)V
    .registers 6
    .parameter "profile"

    .prologue
    .line 126
    iget-boolean v1, p0, Lcom/android/settings/vpn/VpnEditor;->mAddingProfile:Z

    if-eqz v1, :cond_22

    const v1, 0x7f0803f0

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn/VpnEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 129
    .local v0, formatString:Ljava/lang/String;
    :goto_c
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getType()Landroid/net/vpn/VpnType;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/vpn/VpnType;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn/VpnEditor;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    return-void

    .line 126
    .end local v0           #formatString:Ljava/lang/String;
    :cond_22
    const v1, 0x7f0803f1

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn/VpnEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_c
.end method

.method private showCancellationConfirmDialog()V
    .registers 4

    .prologue
    .line 175
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/vpn/VpnEditor;->mAddingProfile:Z

    if-eqz v1, :cond_36

    const v1, 0x7f0803e5

    :goto_1a
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0803d6

    new-instance v2, Lcom/android/settings/vpn/VpnEditor$1;

    invoke-direct {v2, p0}, Lcom/android/settings/vpn/VpnEditor$1;-><init>(Lcom/android/settings/vpn/VpnEditor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0803d9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 189
    return-void

    .line 175
    :cond_36
    const v1, 0x7f0803e6

    goto :goto_1a
.end method

.method private validateAndSetResult()Z
    .registers 3

    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/settings/vpn/VpnEditor;->mProfileEditor:Lcom/android/settings/vpn/VpnProfileEditor;

    invoke-virtual {v1}, Lcom/android/settings/vpn/VpnProfileEditor;->validate()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, errorMsg:Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 141
    invoke-static {p0, v0}, Lcom/android/settings/vpn/Util;->showErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    const/4 v1, 0x0

    .line 146
    :goto_c
    return v1

    .line 145
    :cond_d
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnEditor;->profileChanged()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-direct {p0}, Lcom/android/settings/vpn/VpnEditor;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/vpn/VpnEditor;->setResult(Landroid/net/vpn/VpnProfile;)V

    .line 146
    :cond_1a
    const/4 v1, 0x1

    goto :goto_c
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    if-nez p1, :cond_3a

    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "vpn_profile"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v0, v2

    :goto_10
    check-cast v0, Landroid/net/vpn/VpnProfile;

    .line 60
    .local v0, p:Landroid/net/vpn/VpnProfile;
    invoke-direct {p0, v0}, Lcom/android/settings/vpn/VpnEditor;->getEditor(Landroid/net/vpn/VpnProfile;)Lcom/android/settings/vpn/VpnProfileEditor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/vpn/VpnEditor;->mProfileEditor:Lcom/android/settings/vpn/VpnProfileEditor;

    .line 61
    invoke-virtual {v0}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/vpn/VpnEditor;->mAddingProfile:Z

    .line 64
    const v2, 0x7f04001c

    invoke-virtual {p0, v2}, Lcom/android/settings/vpn/VpnEditor;->addPreferencesFromResource(I)V

    .line 66
    invoke-direct {p0, v0}, Lcom/android/settings/vpn/VpnEditor;->initViewFor(Landroid/net/vpn/VpnProfile;)V

    .line 68
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 69
    .local v1, parcel:Landroid/os/Parcel;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/vpn/VpnProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 70
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/vpn/VpnEditor;->mOriginalProfileData:[B

    .line 71
    return-void

    .line 57
    .end local v0           #p:Landroid/net/vpn/VpnProfile;
    .end local v1           #parcel:Landroid/os/Parcel;
    :cond_3a
    const-string v2, "profile"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v0, v2

    goto :goto_10
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 83
    const v0, 0x7f0803da

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 85
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/android/settings/vpn/VpnEditor;->mAddingProfile:Z

    if-eqz v1, :cond_25

    const v1, 0x7f0803db

    :goto_1a
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 89
    return v3

    .line 85
    :cond_25
    const v1, 0x7f0803dc

    goto :goto_1a
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 112
    packed-switch p1, :pswitch_data_14

    .line 117
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_7
    return v0

    .line 114
    :pswitch_8
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnEditor;->validateAndSetResult()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnEditor;->finish()V

    .line 115
    :cond_11
    const/4 v0, 0x1

    goto :goto_7

    .line 112
    nop

    :pswitch_data_14
    .packed-switch 0x4
        :pswitch_8
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 94
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_28

    .line 107
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 96
    :pswitch_d
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnEditor;->validateAndSetResult()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnEditor;->finish()V

    :cond_16
    move v0, v1

    .line 97
    goto :goto_c

    .line 100
    :pswitch_18
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnEditor;->profileChanged()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 101
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnEditor;->showCancellationConfirmDialog()V

    :goto_21
    move v0, v1

    .line 105
    goto :goto_c

    .line 103
    :cond_23
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnEditor;->finish()V

    goto :goto_21

    .line 94
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_d
        :pswitch_18
    .end packed-switch
.end method

.method protected declared-synchronized onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 75
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/settings/vpn/VpnEditor;->mProfileEditor:Lcom/android/settings/vpn/VpnProfileEditor;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-nez v0, :cond_7

    .line 78
    :goto_5
    monitor-exit p0

    return-void

    .line 77
    :cond_7
    :try_start_7
    const-string v0, "profile"

    invoke-direct {p0}, Lcom/android/settings/vpn/VpnEditor;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_11

    goto :goto_5

    .line 75
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

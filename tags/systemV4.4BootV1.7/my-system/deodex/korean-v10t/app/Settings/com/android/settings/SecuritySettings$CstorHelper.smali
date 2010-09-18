.class Lcom/android/settings/SecuritySettings$CstorHelper;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CstorHelper"
.end annotation


# instance fields
.field private mAccessCheckBox:Landroid/preference/CheckBoxPreference;

.field private mConfirm:Z

.field private mCstorAddCredentialHelper:Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;

.field private mDialogId:I

.field private mKeystore:Landroid/security/Keystore;

.field private mResetButton:Landroid/preference/Preference;

.field private mSpecialIntent:Landroid/content/Intent;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/settings/SecuritySettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/SecuritySettings;)V
    .registers 3
    .parameter

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1078
    invoke-static {}, Landroid/security/Keystore;->getInstance()Landroid/security/Keystore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mKeystore:Landroid/security/Keystore;

    .line 1081
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mConfirm:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SecuritySettings;Lcom/android/settings/SecuritySettings$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1076
    invoke-direct {p0, p1}, Lcom/android/settings/SecuritySettings$CstorHelper;-><init>(Lcom/android/settings/SecuritySettings;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/SecuritySettings$CstorHelper;I)Landroid/app/Dialog;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1076
    invoke-direct {p0, p1}, Lcom/android/settings/SecuritySettings$CstorHelper;->createSetPasswordDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/SecuritySettings$CstorHelper;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1076
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CstorHelper;->createUnlockDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/SecuritySettings$CstorHelper;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1076
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CstorHelper;->createResetDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SecuritySettings$CstorHelper;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1076
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CstorHelper;->getCstorState()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/SecuritySettings$CstorHelper;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1076
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CstorHelper;->createNameCredentialDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settings/SecuritySettings$CstorHelper;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1076
    invoke-direct {p0, p1}, Lcom/android/settings/SecuritySettings$CstorHelper;->showCstorDialog(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/settings/SecuritySettings$CstorHelper;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 1076
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CstorHelper;->lockCstor()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/settings/SecuritySettings$CstorHelper;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 1076
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CstorHelper;->isCstorInitialized()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/SecuritySettings$CstorHelper;I)Landroid/preference/Preference;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1076
    invoke-direct {p0, p1}, Lcom/android/settings/SecuritySettings$CstorHelper;->createAccessCheckBox(I)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/SecuritySettings$CstorHelper;)Landroid/preference/Preference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1076
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CstorHelper;->createSetPasswordPreference()Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/SecuritySettings$CstorHelper;I)Landroid/preference/Preference;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1076
    invoke-direct {p0, p1}, Lcom/android/settings/SecuritySettings$CstorHelper;->createResetPreference(I)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method private addCredential()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1174
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mCstorAddCredentialHelper:Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;

    invoke-virtual {v2}, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->saveToStorage()I

    move-result v2

    if-eqz v2, :cond_29

    .line 1177
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mCstorAddCredentialHelper:Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;

    invoke-static {v2}, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->access$2500(Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mView:Landroid/view/View;

    .line 1179
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mCstorAddCredentialHelper:Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;

    invoke-virtual {v2}, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->isPkcs12Keystore()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1180
    const v2, 0x7f08042f

    invoke-direct {p0, v2}, Lcom/android/settings/SecuritySettings$CstorHelper;->showError(I)Landroid/widget/TextView;

    :goto_20
    move v2, v5

    .line 1201
    :goto_21
    return v2

    .line 1182
    :cond_22
    const v2, 0x7f080438

    invoke-direct {p0, v2}, Lcom/android/settings/SecuritySettings$CstorHelper;->showError(I)Landroid/widget/TextView;

    goto :goto_20

    .line 1195
    :cond_29
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->this$0:Lcom/android/settings/SecuritySettings;

    const v3, 0x7f08043d

    invoke-virtual {v2, v3}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1196
    .local v0, formatString:Ljava/lang/String;
    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mCstorAddCredentialHelper:Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;

    invoke-virtual {v3}, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1198
    .local v1, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move v2, v4

    .line 1201
    goto :goto_21
.end method

.method private changeCstorPassword(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .parameter "oldPasswd"
    .parameter "newPasswd"

    .prologue
    .line 1148
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mKeystore:Landroid/security/Keystore;

    invoke-virtual {v1, p1, p2}, Landroid/security/Keystore;->changePassword(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1150
    .local v0, ret:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 1151
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CstorHelper;->resetCstor()V

    .line 1154
    :cond_c
    return v0
.end method

.method private checkAddCredential()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1312
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CstorHelper;->hideError()V

    .line 1314
    const v4, 0x7f0a0040

    invoke-direct {p0, v4}, Lcom/android/settings/SecuritySettings$CstorHelper;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 1316
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1317
    const v4, 0x7f080436

    invoke-direct {p0, v4}, Lcom/android/settings/SecuritySettings$CstorHelper;->showError(I)Landroid/widget/TextView;

    move v4, v5

    .line 1344
    :goto_18
    return v4

    .line 1322
    :cond_19
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, len:I
    :goto_1e
    if-ge v0, v1, :cond_35

    .line 1323
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_32

    .line 1324
    const v4, 0x7f080437

    invoke-direct {p0, v4}, Lcom/android/settings/SecuritySettings$CstorHelper;->showError(I)Landroid/widget/TextView;

    move v4, v5

    .line 1326
    goto :goto_18

    .line 1322
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 1330
    :cond_35
    iget-object v4, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mCstorAddCredentialHelper:Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;

    invoke-virtual {v4, v2}, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->setName(Ljava/lang/String;)V

    .line 1332
    iget-object v4, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mCstorAddCredentialHelper:Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;

    invoke-virtual {v4}, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->isPkcs12Keystore()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 1333
    const v4, 0x7f0a0042

    invoke-direct {p0, v4}, Lcom/android/settings/SecuritySettings$CstorHelper;->getText(I)Ljava/lang/String;

    move-result-object v3

    .line 1335
    .local v3, password:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 1336
    const v4, 0x7f080434

    invoke-direct {p0, v4}, Lcom/android/settings/SecuritySettings$CstorHelper;->showError(I)Landroid/widget/TextView;

    move v4, v5

    .line 1338
    goto :goto_18

    .line 1341
    :cond_57
    iget-object v4, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mCstorAddCredentialHelper:Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;

    invoke-virtual {v4, v3}, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->setPassword(Ljava/lang/String;)V

    .line 1344
    .end local v3           #password:Ljava/lang/String;
    :cond_5c
    const/4 v4, 0x1

    goto :goto_18
.end method

.method private checkPasswords(Landroid/app/Dialog;)Z
    .registers 10
    .parameter "d"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1390
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CstorHelper;->hideError()V

    .line 1392
    const v4, 0x7f0a0047

    invoke-direct {p0, v4}, Lcom/android/settings/SecuritySettings$CstorHelper;->getText(I)Ljava/lang/String;

    move-result-object v3

    .line 1393
    .local v3, oldPasswd:Ljava/lang/String;
    const v4, 0x7f0a0048

    invoke-direct {p0, v4}, Lcom/android/settings/SecuritySettings$CstorHelper;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 1394
    .local v2, newPasswd:Ljava/lang/String;
    const v4, 0x7f0a0049

    invoke-direct {p0, v4}, Lcom/android/settings/SecuritySettings$CstorHelper;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 1396
    .local v0, confirmPasswd:Ljava/lang/String;
    iget v4, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mDialogId:I

    if-ne v4, v7, :cond_2d

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1398
    const v4, 0x7f080434

    invoke-direct {p0, v4}, Lcom/android/settings/SecuritySettings$CstorHelper;->showError(I)Landroid/widget/TextView;

    move v4, v5

    .line 1432
    :goto_2c
    return v4

    .line 1403
    :cond_2d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 1405
    const v4, 0x7f080433

    invoke-direct {p0, v4}, Lcom/android/settings/SecuritySettings$CstorHelper;->showError(I)Landroid/widget/TextView;

    move v4, v5

    .line 1407
    goto :goto_2c

    .line 1410
    :cond_41
    invoke-direct {p0, v2}, Lcom/android/settings/SecuritySettings$CstorHelper;->verifyPassword(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_49

    move v4, v5

    .line 1411
    goto :goto_2c

    .line 1412
    :cond_49
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_57

    .line 1413
    const v4, 0x7f080432

    invoke-direct {p0, v4}, Lcom/android/settings/SecuritySettings$CstorHelper;->showError(I)Landroid/widget/TextView;

    move v4, v5

    .line 1415
    goto :goto_2c

    .line 1418
    :cond_57
    iget v4, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mDialogId:I

    if-ne v4, v7, :cond_68

    .line 1419
    invoke-direct {p0, v3, v2}, Lcom/android/settings/SecuritySettings$CstorHelper;->changeCstorPassword(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1421
    .local v1, count:I
    if-lez v1, :cond_66

    .line 1422
    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings$CstorHelper;->showResetWarning(I)V

    move v4, v5

    .line 1424
    goto :goto_2c

    :cond_66
    move v4, v6

    .line 1427
    goto :goto_2c

    .line 1430
    .end local v1           #count:I
    :cond_68
    invoke-direct {p0, v2}, Lcom/android/settings/SecuritySettings$CstorHelper;->initCstor(Ljava/lang/String;)V

    move v4, v6

    .line 1432
    goto :goto_2c
.end method

.method private checkUnlockPassword(Landroid/app/Dialog;)Z
    .registers 6
    .parameter "d"

    .prologue
    const/4 v3, 0x0

    .line 1366
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CstorHelper;->hideError()V

    .line 1368
    const v2, 0x7f0a004b

    invoke-direct {p0, v2}, Lcom/android/settings/SecuritySettings$CstorHelper;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 1370
    .local v1, passwd:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1371
    const v2, 0x7f080434

    invoke-direct {p0, v2}, Lcom/android/settings/SecuritySettings$CstorHelper;->showError(I)Landroid/widget/TextView;

    move v2, v3

    .line 1384
    :goto_18
    return v2

    .line 1376
    :cond_19
    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings$CstorHelper;->unlockCstor(Ljava/lang/String;)I

    move-result v0

    .line 1378
    .local v0, count:I
    if-lez v0, :cond_24

    .line 1379
    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings$CstorHelper;->showResetWarning(I)V

    move v2, v3

    .line 1381
    goto :goto_18

    .line 1384
    :cond_24
    const/4 v2, 0x1

    goto :goto_18
.end method

.method private createAccessCheckBox(I)Landroid/preference/Preference;
    .registers 6
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1485
    new-instance v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 1486
    .local v0, pref:Landroid/preference/CheckBoxPreference;
    const v1, 0x7f08041b

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 1487
    const v1, 0x7f08041c

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1488
    if-eq p1, v2, :cond_2d

    move v1, v2

    :goto_18
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1489
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2f

    move v1, v2

    :goto_1f
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1490
    new-instance v1, Lcom/android/settings/SecuritySettings$CstorHelper$1;

    invoke-direct {v1, p0}, Lcom/android/settings/SecuritySettings$CstorHelper$1;-><init>(Lcom/android/settings/SecuritySettings$CstorHelper;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1502
    iput-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    .line 1504
    return-object v0

    :cond_2d
    move v1, v3

    .line 1488
    goto :goto_18

    :cond_2f
    move v1, v3

    .line 1489
    goto :goto_1f
.end method

.method private createNameCredentialDialog()Landroid/app/Dialog;
    .registers 5

    .prologue
    .line 1613
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->this$0:Lcom/android/settings/SecuritySettings;

    const v2, 0x7f030016

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mView:Landroid/view/View;

    .line 1616
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mCstorAddCredentialHelper:Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;

    if-eqz v1, :cond_17

    .line 1617
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mCstorAddCredentialHelper:Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mView:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->access$2502(Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;Landroid/view/View;)Landroid/view/View;

    .line 1620
    :cond_17
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CstorHelper;->hideError()V

    .line 1622
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mCstorAddCredentialHelper:Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;

    invoke-virtual {v1}, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->isPkcs12Keystore()Z

    move-result v1

    if-nez v1, :cond_28

    .line 1623
    const v1, 0x7f0a0041

    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings$CstorHelper;->hide(I)V

    .line 1626
    :cond_28
    const v1, 0x7f0a003f

    const v2, 0x7f080426

    invoke-direct {p0, v1, v2}, Lcom/android/settings/SecuritySettings$CstorHelper;->setText(II)V

    .line 1628
    const v1, 0x7f0a0043

    const v2, 0x7f080428

    invoke-direct {p0, v1, v2}, Lcom/android/settings/SecuritySettings$CstorHelper;->setText(II)V

    .line 1630
    const v1, 0x7f0a0044

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mCstorAddCredentialHelper:Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;

    invoke-virtual {v2}, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/SecuritySettings$CstorHelper;->setText(ILjava/lang/String;)V

    .line 1633
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080425

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1639
    .local v0, d:Landroid/app/Dialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1641
    return-object v0
.end method

.method private createResetDialog()Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 1603
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080424

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->this$0:Lcom/android/settings/SecuritySettings;

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->this$0:Lcom/android/settings/SecuritySettings;

    const/high16 v2, 0x104

    invoke-virtual {v1, v2}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createResetPreference(I)Landroid/preference/Preference;
    .registers 5
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 1524
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1525
    .local v0, pref:Landroid/preference/Preference;
    const v1, 0x7f080422

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 1526
    const v1, 0x7f080423

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1527
    new-instance v1, Lcom/android/settings/SecuritySettings$CstorHelper$3;

    invoke-direct {v1, p0}, Lcom/android/settings/SecuritySettings$CstorHelper$3;-><init>(Lcom/android/settings/SecuritySettings$CstorHelper;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1534
    if-eq p1, v2, :cond_25

    move v1, v2

    :goto_1f
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1535
    iput-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mResetButton:Landroid/preference/Preference;

    .line 1537
    return-object v0

    .line 1534
    :cond_25
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method private createSetPasswordDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    const v5, 0x7f0a0045

    const/16 v4, 0x8

    .line 1563
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->this$0:Lcom/android/settings/SecuritySettings;

    const v2, 0x7f030017

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mView:Landroid/view/View;

    .line 1565
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CstorHelper;->hideError()V

    .line 1568
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mSpecialIntent:Landroid/content/Intent;

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mCstorAddCredentialHelper:Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;

    if-eqz v1, :cond_22

    .line 1570
    :cond_1c
    const v1, 0x7f08042e

    invoke-direct {p0, v5, v1}, Lcom/android/settings/SecuritySettings$CstorHelper;->setText(II)V

    .line 1574
    :cond_22
    packed-switch p1, :pswitch_data_84

    .line 1588
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown dialog id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mDialogId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1576
    :pswitch_40
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mView:Landroid/view/View;

    const v2, 0x7f0a0046

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1591
    :goto_4c
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080421

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1597
    .local v0, d:Landroid/app/Dialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1599
    return-object v0

    .line 1582
    .end local v0           #d:Landroid/app/Dialog;
    :pswitch_79
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4c

    .line 1574
    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_40
        :pswitch_79
    .end packed-switch
.end method

.method private createSetPasswordPreference()Landroid/preference/Preference;
    .registers 3

    .prologue
    .line 1508
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1509
    .local v0, pref:Landroid/preference/Preference;
    const v1, 0x7f08041f

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 1510
    const v1, 0x7f080420

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1511
    new-instance v1, Lcom/android/settings/SecuritySettings$CstorHelper$2;

    invoke-direct {v1, p0}, Lcom/android/settings/SecuritySettings$CstorHelper$2;-><init>(Lcom/android/settings/SecuritySettings$CstorHelper;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1520
    return-object v0
.end method

.method private createUnlockDialog()Landroid/app/Dialog;
    .registers 5

    .prologue
    .line 1541
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->this$0:Lcom/android/settings/SecuritySettings;

    const v2, 0x7f030018

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mView:Landroid/view/View;

    .line 1543
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CstorHelper;->hideError()V

    .line 1546
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mSpecialIntent:Landroid/content/Intent;

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mCstorAddCredentialHelper:Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;

    if-nez v1, :cond_1d

    .line 1548
    const v1, 0x7f0a004a

    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings$CstorHelper;->hide(I)V

    .line 1551
    :cond_1d
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08041d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1557
    .local v0, d:Landroid/app/Dialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1559
    return-object v0
.end method

.method private enablePreferences(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1481
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mResetButton:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1482
    return-void
.end method

.method private getCstorState()I
    .registers 2

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mKeystore:Landroid/security/Keystore;

    invoke-virtual {v0}, Landroid/security/Keystore;->getState()I

    move-result v0

    return v0
.end method

.method private getText(I)Ljava/lang/String;
    .registers 3
    .parameter "viewId"

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hide(I)V
    .registers 4
    .parameter "viewId"

    .prologue
    .line 1448
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1450
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_d

    .line 1451
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1453
    :cond_d
    return-void
.end method

.method private hideError()V
    .registers 2

    .prologue
    .line 1456
    const v0, 0x7f0a003e

    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings$CstorHelper;->hide(I)V

    .line 1457
    return-void
.end method

.method private initCstor(Ljava/lang/String;)V
    .registers 5
    .parameter "passwd"

    .prologue
    const/4 v1, 0x1

    .line 1158
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mKeystore:Landroid/security/Keystore;

    invoke-virtual {v0, p1}, Landroid/security/Keystore;->setPassword(Ljava/lang/String;)I

    .line 1159
    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings$CstorHelper;->enablePreferences(Z)V

    .line 1160
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1161
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->this$0:Lcom/android/settings/SecuritySettings;

    const v1, 0x7f08043c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1163
    return-void
.end method

.method private isCstorInitialized()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1124
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mKeystore:Landroid/security/Keystore;

    invoke-virtual {v0}, Landroid/security/Keystore;->getState()I

    move-result v0

    if-eq v0, v1, :cond_b

    move v0, v1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private isCstorUnlocked()Z
    .registers 3

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mKeystore:Landroid/security/Keystore;

    invoke-virtual {v0}, Landroid/security/Keystore;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private lockCstor()V
    .registers 3

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mKeystore:Landroid/security/Keystore;

    invoke-virtual {v0}, Landroid/security/Keystore;->lock()I

    .line 1129
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1130
    return-void
.end method

.method private resetCstor()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1166
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mKeystore:Landroid/security/Keystore;

    invoke-virtual {v0}, Landroid/security/Keystore;->reset()I

    .line 1167
    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings$CstorHelper;->enablePreferences(Z)V

    .line 1168
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1169
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->this$0:Lcom/android/settings/SecuritySettings;

    const v1, 0x7f08043b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1171
    return-void
.end method

.method private setText(II)V
    .registers 5
    .parameter "viewId"
    .parameter "textId"

    .prologue
    .line 1472
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1474
    .local v0, v:Landroid/widget/TextView;
    if-eqz v0, :cond_d

    .line 1475
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 1477
    :cond_d
    return-void
.end method

.method private setText(ILjava/lang/String;)V
    .registers 5
    .parameter "viewId"
    .parameter "text"

    .prologue
    .line 1464
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1466
    .local v0, v:Landroid/widget/TextView;
    if-eqz v0, :cond_d

    .line 1467
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1469
    :cond_d
    return-void
.end method

.method private showCstorDialog(I)V
    .registers 3
    .parameter "dialogId"

    .prologue
    .line 1105
    iput p1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mDialogId:I

    .line 1106
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0, p1}, Lcom/android/settings/SecuritySettings;->showDialog(I)V

    .line 1108
    const/4 v0, 0x5

    if-ne p1, v0, :cond_12

    .line 1111
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mCstorAddCredentialHelper:Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;

    invoke-static {v0}, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->access$2500(Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mView:Landroid/view/View;

    .line 1113
    :cond_12
    return-void
.end method

.method private showError(I)Landroid/widget/TextView;
    .registers 5
    .parameter "messageId"

    .prologue
    .line 1437
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mView:Landroid/view/View;

    const v2, 0x7f0a003e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1438
    .local v0, v:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1440
    if-eqz v0, :cond_14

    .line 1441
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1444
    :cond_14
    return-object v0
.end method

.method private showResetWarning(I)V
    .registers 8
    .parameter "count"

    .prologue
    const v5, 0x7f080430

    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 1297
    if-gt p1, v3, :cond_14

    move v2, v5

    :goto_8
    invoke-direct {p0, v2}, Lcom/android/settings/SecuritySettings$CstorHelper;->showError(I)Landroid/widget/TextView;

    move-result-object v1

    .line 1301
    .local v1, v:Landroid/widget/TextView;
    if-gt p1, v3, :cond_13

    .line 1302
    if-ne p1, v4, :cond_18

    .line 1303
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1309
    :cond_13
    :goto_13
    return-void

    .line 1297
    .end local v1           #v:Landroid/widget/TextView;
    :cond_14
    const v2, 0x7f08042f

    goto :goto_8

    .line 1305
    .restart local v1       #v:Landroid/widget/TextView;
    :cond_18
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->this$0:Lcom/android/settings/SecuritySettings;

    const v3, 0x7f080431

    invoke-virtual {v2, v3}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1306
    .local v0, format:Ljava/lang/String;
    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13
.end method

.method private unlockCstor(Ljava/lang/String;)I
    .registers 6
    .parameter "passwd"

    .prologue
    .line 1133
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mKeystore:Landroid/security/Keystore;

    invoke-virtual {v1, p1}, Landroid/security/Keystore;->unlock(Ljava/lang/String;)I

    move-result v0

    .line 1135
    .local v0, ret:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 1136
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CstorHelper;->resetCstor()V

    .line 1139
    :cond_c
    if-nez v0, :cond_1b

    .line 1140
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->this$0:Lcom/android/settings/SecuritySettings;

    const v2, 0x7f08043c

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1144
    :cond_1b
    return v0
.end method

.method private verifyPassword(Ljava/lang/String;)Z
    .registers 5
    .parameter "passwd"

    .prologue
    const/4 v2, 0x0

    .line 1350
    if-nez p1, :cond_b

    .line 1351
    const v0, 0x7f080433

    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings$CstorHelper;->showError(I)Landroid/widget/TextView;

    move v0, v2

    .line 1360
    :goto_a
    return v0

    .line 1354
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1b

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1356
    :cond_1b
    const v0, 0x7f080435

    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings$CstorHelper;->showError(I)Landroid/widget/TextView;

    move v0, v2

    .line 1358
    goto :goto_a

    .line 1360
    :cond_23
    const/4 v0, 0x1

    goto :goto_a
.end method


# virtual methods
.method handleCstorIntents(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 1088
    if-nez p1, :cond_3

    .line 1102
    :cond_2
    :goto_2
    return-void

    .line 1092
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1094
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.security.ADD_CREDENTIAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1095
    new-instance v1, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v1, v2, p1}, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;-><init>(Lcom/android/settings/SecuritySettings;Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mCstorAddCredentialHelper:Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;

    .line 1096
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings$CstorHelper;->showCstorDialog(I)V

    goto :goto_2

    .line 1097
    :cond_1d
    const-string v1, "android.security.UNLOCK_CREDENTIAL_STORAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1098
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mSpecialIntent:Landroid/content/Intent;

    .line 1099
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-static {v1}, Lcom/android/settings/SecuritySettings;->access$2400(Lcom/android/settings/SecuritySettings;)Lcom/android/settings/SecuritySettings$CstorHelper;

    move-result-object v1

    invoke-direct {v1}, Lcom/android/settings/SecuritySettings$CstorHelper;->isCstorInitialized()Z

    move-result v1

    if-eqz v1, :cond_38

    const/4 v1, 0x3

    :goto_34
    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings$CstorHelper;->showCstorDialog(I)V

    goto :goto_2

    :cond_38
    const/4 v1, 0x1

    goto :goto_34
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    const/4 v2, 0x1

    .line 1205
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mCstorAddCredentialHelper:Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;

    if-nez v0, :cond_6

    .line 1226
    :goto_5
    return-void

    .line 1209
    :cond_6
    iget v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mDialogId:I

    packed-switch v0, :pswitch_data_2e

    .line 1224
    :goto_b
    :pswitch_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mCstorAddCredentialHelper:Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;

    .line 1225
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0}, Lcom/android/settings/SecuritySettings;->finish()V

    goto :goto_5

    .line 1212
    :pswitch_14
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->this$0:Lcom/android/settings/SecuritySettings;

    const v1, 0x7f080439

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_b

    .line 1218
    :pswitch_21
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->this$0:Lcom/android/settings/SecuritySettings;

    const v1, 0x7f08043a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_b

    .line 1209
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_14
        :pswitch_b
        :pswitch_14
        :pswitch_b
        :pswitch_21
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1229
    const/4 v0, -0x2

    if-ne p2, v0, :cond_7

    .line 1230
    invoke-virtual {p0, p1}, Lcom/android/settings/SecuritySettings$CstorHelper;->onCancel(Landroid/content/DialogInterface;)V

    .line 1257
    .end local p1
    :goto_6
    return-void

    .line 1235
    .restart local p1
    :cond_7
    iget v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mDialogId:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_6

    .line 1238
    :pswitch_d
    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/settings/SecuritySettings$CstorHelper;->checkPasswords(Landroid/app/Dialog;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mConfirm:Z

    goto :goto_6

    .line 1243
    .restart local p1
    :pswitch_16
    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/settings/SecuritySettings$CstorHelper;->checkUnlockPassword(Landroid/app/Dialog;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mConfirm:Z

    goto :goto_6

    .line 1248
    .restart local p1
    :pswitch_1f
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CstorHelper;->resetCstor()V

    goto :goto_6

    .line 1253
    :pswitch_23
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CstorHelper;->checkAddCredential()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mConfirm:Z

    goto :goto_6

    .line 1235
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_16
        :pswitch_1f
        :pswitch_23
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 7
    .parameter "dialog"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 1260
    iget-boolean v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mConfirm:Z

    if-nez v0, :cond_f

    .line 1261
    iput-boolean v2, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mConfirm:Z

    .line 1262
    iget v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mDialogId:I

    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings$CstorHelper;->showCstorDialog(I)V

    .line 1294
    :goto_e
    return-void

    .line 1264
    :cond_f
    iget v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mDialogId:I

    if-ne v0, v3, :cond_1c

    .line 1265
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CstorHelper;->isCstorUnlocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1268
    :cond_1c
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mCstorAddCredentialHelper:Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;

    if-eqz v0, :cond_4f

    .line 1269
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CstorHelper;->isCstorInitialized()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1270
    invoke-direct {p0, v2}, Lcom/android/settings/SecuritySettings$CstorHelper;->showCstorDialog(I)V

    goto :goto_e

    .line 1271
    :cond_2a
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CstorHelper;->isCstorUnlocked()Z

    move-result v0

    if-nez v0, :cond_34

    .line 1272
    invoke-direct {p0, v3}, Lcom/android/settings/SecuritySettings$CstorHelper;->showCstorDialog(I)V

    goto :goto_e

    .line 1274
    :cond_34
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CstorHelper;->addCredential()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1276
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0}, Lcom/android/settings/SecuritySettings;->finish()V

    goto :goto_e

    .line 1279
    :cond_40
    iget v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mDialogId:I

    if-eq v0, v4, :cond_4b

    .line 1280
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->this$0:Lcom/android/settings/SecuritySettings;

    iget v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mDialogId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->removeDialog(I)V

    .line 1283
    :cond_4b
    invoke-direct {p0, v4}, Lcom/android/settings/SecuritySettings$CstorHelper;->showCstorDialog(I)V

    goto :goto_e

    .line 1288
    :cond_4f
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mSpecialIntent:Landroid/content/Intent;

    if-eqz v0, :cond_58

    .line 1289
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0}, Lcom/android/settings/SecuritySettings;->finish()V

    .line 1292
    :cond_58
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->this$0:Lcom/android/settings/SecuritySettings;

    iget v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper;->mDialogId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->removeDialog(I)V

    goto :goto_e
.end method

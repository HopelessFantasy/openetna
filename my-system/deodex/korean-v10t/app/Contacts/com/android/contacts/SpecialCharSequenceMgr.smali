.class public Lcom/android/contacts/SpecialCharSequenceMgr;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;,
        Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    }
.end annotation


# static fields
.field private static final ADN_NAME_COLUMN_NAME:Ljava/lang/String; = "name"

.field private static final ADN_PHONE_NUMBER_COLUMN_NAME:Ljava/lang/String; = "number"

.field private static final ADN_QUERY_TOKEN:I = -0x1

.field private static final DRM_HIDDEN_CODE:Ljava/lang/String; = "*54376#*#"

.field private static final ELT_TEST_CODE:Ljava/lang/String; = "2945#*#"

.field private static final FIXED_FREQ_CODE:Ljava/lang/String; = "*748#583#"

.field private static final GPS_TEST_CODE:Ljava/lang/String; = "#77777#"

.field private static final GPS_TEST_CODE2:Ljava/lang/String; = "*#77777#"

.field private static final HIDDEN_CODE:Ljava/lang/String; = "277634#*#"

.field private static final MMI_IMEI_DISPLAY:Ljava/lang/String; = "*#06#"

.field private static final OFFICIAL_HIDDEN_CODE_5200:Ljava/lang/String; = "3845#*5200#"

.field private static final OFFICIAL_HIDDEN_CODE_620:Ljava/lang/String; = "3845#*620#"

.field private static final OPERATOR_MODE_CODE_5200:Ljava/lang/String; = "*#5200#"

.field private static final OPERATOR_MODE_CODE_620:Ljava/lang/String; = "*#620#"

.field private static final OTA_FILE_DELETE_CODE:Ljava/lang/String; = "*2654#3644*1798#*"

.field private static final OTA_MODE_CODE:Ljava/lang/String; = "*147359*682*"

.field private static final RAT_MODE_CODE_5200:Ljava/lang/String; = "*748#5200#"

.field private static final RAT_MODE_CODE_620:Ljava/lang/String; = "*748#620#"

.field private static final SIM_UNLOCK_MENU_CODE_5200:Ljava/lang/String; = "2945#*5200#"

.field private static final SIM_UNLOCK_MENU_CODE_620:Ljava/lang/String; = "2945#*620#"

.field private static final TAG:Ljava/lang/String; = "SpecialCharSequenceMgr"

.field static operatorCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->operatorCode:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method static handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z
    .registers 16
    .parameter "context"
    .parameter "input"
    .parameter "textField"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 471
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/KeyguardManager;

    .line 473
    .local v9, keyguardManager:Landroid/app/KeyguardManager;
    invoke-virtual {v9}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_12

    move v1, v12

    .line 524
    :goto_11
    return v1

    .line 477
    :cond_12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    .line 478
    .local v10, len:I
    if-le v10, v11, :cond_9a

    const/4 v1, 0x5

    if-ge v10, v1, :cond_9a

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 481
    const/4 v1, 0x0

    sub-int v3, v10, v11

    :try_start_26
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 491
    .local v8, index:I
    new-instance v0, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 494
    .local v0, handler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    new-instance v2, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;

    sub-int v1, v8, v11

    const/4 v3, -0x1

    invoke-direct {v2, v1, v0, v3}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;-><init>(ILcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;I)V

    .line 498
    .local v2, sc:Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    sub-int v1, v8, v11

    iput v1, v2, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 499
    invoke-virtual {v2, p2}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->setTextField(Landroid/widget/EditText;)V

    .line 502
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v2, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 503
    iget-object v1, v2, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v3, 0x7f060075

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 504
    iget-object v1, v2, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v3, 0x7f060074

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v1, v2, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 506
    iget-object v1, v2, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 507
    iget-object v1, v2, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 508
    iget-object v1, v2, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 512
    iget-object v1, v2, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 517
    const/4 v1, -0x1

    const-string v3, "content://icc/adn"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "number"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_96
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_96} :catch_99

    move v1, v11

    .line 519
    goto/16 :goto_11

    .line 520
    .end local v0           #handler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    .end local v2           #sc:Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    .end local v8           #index:I
    :catch_99
    move-exception v1

    :cond_9a
    move v1, v12

    .line 524
    goto/16 :goto_11
.end method

.method static handleChars(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .parameter "context"
    .parameter "input"

    .prologue
    .line 100
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;)Z

    move-result v0

    return v0
.end method

.method static handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z
    .registers 4
    .parameter "context"
    .parameter "input"
    .parameter "textField"

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;)Z

    move-result v0

    return v0
.end method

.method static handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;)Z
    .registers 6
    .parameter "context"
    .parameter "input"
    .parameter "useSystemWindow"
    .parameter "textField"

    .prologue
    .line 107
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, dialString:Ljava/lang/String;
    invoke-static {p0, v0, p2}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_58

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handlePinEntry(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_58

    invoke-static {p0, v0, p3}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v1

    if-nez v1, :cond_58

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_58

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleHiddenCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_58

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleELTCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_58

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleGPSCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_58

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleDRMHiddenCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_58

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleSIMUnlockMenuCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_58

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleOperatorModeCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_58

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleRATModeCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_58

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleFixedFreqCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_58

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleOTACode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_58

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleOTADelete(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 124
    :cond_58
    const/4 v1, 0x1

    .line 127
    :goto_59
    return v1

    :cond_5a
    const/4 v1, 0x0

    goto :goto_59
.end method

.method static handleDRMHiddenCode(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .parameter "context"
    .parameter "input"

    .prologue
    .line 424
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 425
    .local v1, len:I
    const/16 v2, 0x8

    if-le v1, v2, :cond_21

    const-string v2, "*54376#*#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 426
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 427
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.lge.drmdatamngr"

    const-string v3, "com.lge.drmdatamngr.DrmDataMngr"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 429
    const/4 v2, 0x1

    .line 432
    .end local v0           #intent:Landroid/content/Intent;
    :goto_20
    return v2

    :cond_21
    const/4 v2, 0x0

    goto :goto_20
.end method

.method static handleELTCode(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .parameter "context"
    .parameter "input"

    .prologue
    .line 253
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 254
    .local v1, len:I
    const/4 v2, 0x6

    if-le v1, v2, :cond_20

    const-string v2, "2945#*#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 255
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 256
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.lge.elt_test"

    const-string v3, "com.lge.elt_test.ELTTest"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 258
    const/4 v2, 0x1

    .line 261
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1f
    return v2

    :cond_20
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method static handleFixedFreqCode(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .parameter "context"
    .parameter "input"

    .prologue
    .line 404
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 405
    .local v1, len:I
    const/16 v2, 0x8

    if-le v1, v2, :cond_21

    const-string v2, "*748#583#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 406
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 407
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.lge.hiddenmenu"

    const-string v3, "com.lge.hiddenmenu.modem_setting.FixedFreqSetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 409
    const/4 v2, 0x1

    .line 412
    .end local v0           #intent:Landroid/content/Intent;
    :goto_20
    return v2

    :cond_21
    const/4 v2, 0x0

    goto :goto_20
.end method

.method static handleGPSCode(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9
    .parameter "context"
    .parameter "input"

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x1

    const-string v6, "com.lge.hiddenmenu.gps_test.GpsAppMainMenu"

    const-string v5, "com.lge.hiddenmenu"

    .line 227
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 228
    .local v1, len:I
    if-le v1, v4, :cond_25

    const-string v2, "#77777#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 229
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 230
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.lge.hiddenmenu"

    const-string v2, "com.lge.hiddenmenu.gps_test.GpsAppMainMenu"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 241
    .end local v0           #intent:Landroid/content/Intent;
    :goto_24
    return v2

    .line 234
    :cond_25
    if-le v1, v4, :cond_40

    const-string v2, "*#77777#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 235
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 236
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "com.lge.hiddenmenu"

    const-string v2, "com.lge.hiddenmenu.gps_test.GpsAppMainMenu"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 238
    goto :goto_24

    .line 241
    .end local v0           #intent:Landroid/content/Intent;
    :cond_40
    const/4 v2, 0x0

    goto :goto_24
.end method

.method static handleHiddenCode(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 12
    .parameter "context"
    .parameter "input"

    .prologue
    const/16 v9, 0x9

    const/4 v6, 0x1

    const-string v8, "com.lge.hiddenmenu.HiddenMenu"

    const-string v7, "com.lge.hiddenmenu"

    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 274
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v4, "official_image"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 279
    .local v0, OfficialImageFlag:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 280
    .local v2, len:I
    if-ne v0, v6, :cond_57

    .line 282
    sget-object v4, Lcom/android/contacts/SpecialCharSequenceMgr;->operatorCode:Ljava/lang/String;

    const-string v5, "KTF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 284
    if-le v2, v9, :cond_74

    const-string v4, "3845#*5200#"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 286
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 287
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.lge.hiddenmenu"

    const-string v4, "com.lge.hiddenmenu.HiddenMenu"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v6

    .line 316
    .end local v1           #intent:Landroid/content/Intent;
    :goto_3b
    return v4

    .line 294
    :cond_3c
    if-le v2, v9, :cond_74

    const-string v4, "3845#*620#"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 296
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 297
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "com.lge.hiddenmenu"

    const-string v4, "com.lge.hiddenmenu.HiddenMenu"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v6

    .line 299
    goto :goto_3b

    .line 305
    .end local v1           #intent:Landroid/content/Intent;
    :cond_57
    const/16 v4, 0x8

    if-le v2, v4, :cond_74

    const-string v4, "277634#*#"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 307
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 308
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "com.lge.hiddenmenu"

    const-string v4, "com.lge.hiddenmenu.HiddenMenu"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v6

    .line 310
    goto :goto_3b

    .line 316
    .end local v1           #intent:Landroid/content/Intent;
    :cond_74
    const/4 v4, 0x0

    goto :goto_3b
.end method

.method static handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 4
    .parameter "context"
    .parameter "input"
    .parameter "useSystemWindow"

    .prologue
    .line 541
    const-string v0, "*#06#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 542
    invoke-static {p0, p2}, Lcom/android/contacts/SpecialCharSequenceMgr;->showIMEIPanel(Landroid/content/Context;Z)V

    .line 543
    const/4 v0, 0x1

    .line 546
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method static handleOTACode(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8
    .parameter "context"
    .parameter "input"

    .prologue
    .line 175
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 176
    .local v3, mTPM:Landroid/telephony/TelephonyManager;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 177
    .local v2, len:I
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, imsi:Ljava/lang/String;
    const/16 v4, 0xb

    if-le v2, v4, :cond_3d

    const-string v4, "*147359*682*"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 180
    const-string v4, "45002"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    const-string v4, "45008"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 181
    :cond_2c
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 182
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.lge.ota"

    const-string v5, "com.lge.ota.KTRegiActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 184
    const/4 v4, 0x1

    .line 189
    .end local v1           #intent:Landroid/content/Intent;
    :goto_3c
    return v4

    :cond_3d
    const/4 v4, 0x0

    goto :goto_3c
.end method

.method static handleOTADelete(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11
    .parameter "context"
    .parameter "input"

    .prologue
    .line 194
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 195
    .local v4, mTPM:Landroid/telephony/TelephonyManager;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 196
    .local v3, len:I
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, imsi:Ljava/lang/String;
    const/16 v6, 0xe

    if-le v3, v6, :cond_72

    const-string v6, "*2654#3644*1798#*"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_72

    .line 199
    const-string v6, "45002"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2c

    const-string v6, "45008"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_72

    .line 202
    :cond_2c
    :try_start_2c
    new-instance v1, Ljava/io/File;

    const-string v6, "/lgdrm/Openday"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_51

    .line 204
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "chmod 766 /lgdrm/Openday"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 205
    .local v5, p:Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 206
    const-string v6, "Erase OK"

    const/16 v7, 0xbb8

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_51} :catch_53

    .line 211
    .end local v1           #f:Ljava/io/File;
    .end local v5           #p:Ljava/lang/Process;
    :cond_51
    :goto_51
    const/4 v6, 0x1

    .line 216
    :goto_52
    return v6

    .line 208
    :catch_53
    move-exception v6

    move-object v0, v6

    .line 209
    .local v0, e:Ljava/io/IOException;
    const-string v6, "SpecialCharSequenceMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "write failed: IOException"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 216
    .end local v0           #e:Ljava/io/IOException;
    :cond_72
    const/4 v6, 0x0

    goto :goto_52
.end method

.method static handleOperatorModeCode(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10
    .parameter "context"
    .parameter "input"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    const-string v7, "com.lge.hiddenmenu.modem_setting.OperatorMode"

    const-string v6, "com.lge.hiddenmenu"

    .line 330
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 332
    .local v1, len:I
    sget-object v2, Lcom/android/contacts/SpecialCharSequenceMgr;->operatorCode:Ljava/lang/String;

    const-string v3, "KTF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 334
    if-le v1, v5, :cond_4a

    const-string v2, "*#5200#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 336
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 337
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.lge.hiddenmenu"

    const-string v2, "com.lge.hiddenmenu.modem_setting.OperatorMode"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v2, v4

    .line 354
    .end local v0           #intent:Landroid/content/Intent;
    :goto_2e
    return v2

    .line 344
    :cond_2f
    if-le v1, v5, :cond_4a

    const-string v2, "*#620#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 346
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 347
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "com.lge.hiddenmenu"

    const-string v2, "com.lge.hiddenmenu.modem_setting.OperatorMode"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v2, v4

    .line 349
    goto :goto_2e

    .line 354
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4a
    const/4 v2, 0x0

    goto :goto_2e
.end method

.method static handlePinEntry(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .parameter "context"
    .parameter "input"

    .prologue
    const/4 v3, 0x0

    .line 528
    const-string v1, "**04"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "**05"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    :cond_11
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 530
    :try_start_19
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_26} :catch_28

    move-result v1

    .line 537
    :goto_27
    return v1

    .line 532
    :catch_28
    move-exception v1

    move-object v0, v1

    .line 533
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpecialCharSequenceMgr"

    const-string v2, "Failed to handlePinMmi due to remote exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 534
    goto :goto_27

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_33
    move v1, v3

    .line 537
    goto :goto_27
.end method

.method static handleRATModeCode(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10
    .parameter "context"
    .parameter "input"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const-string v7, "com.lge.hiddenmenu.modem_setting.RATMode"

    const-string v6, "com.lge.hiddenmenu"

    .line 368
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 370
    .local v1, len:I
    sget-object v2, Lcom/android/contacts/SpecialCharSequenceMgr;->operatorCode:Ljava/lang/String;

    const-string v3, "KTF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 372
    if-le v1, v5, :cond_4b

    const-string v2, "*748#5200#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 374
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 375
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.lge.hiddenmenu"

    const-string v2, "com.lge.hiddenmenu.modem_setting.RATMode"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v2, v4

    .line 392
    .end local v0           #intent:Landroid/content/Intent;
    :goto_2f
    return v2

    .line 382
    :cond_30
    if-le v1, v5, :cond_4b

    const-string v2, "*748#620#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 384
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 385
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "com.lge.hiddenmenu"

    const-string v2, "com.lge.hiddenmenu.modem_setting.RATMode"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v2, v4

    .line 387
    goto :goto_2f

    .line 392
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4b
    const/4 v2, 0x0

    goto :goto_2f
.end method

.method static handleSIMUnlockMenuCode(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9
    .parameter "context"
    .parameter "input"

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const-string v6, "android.intent.action.UNLOCK_MENU"

    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 143
    .local v1, len:I
    sget-object v2, Lcom/android/contacts/SpecialCharSequenceMgr;->operatorCode:Ljava/lang/String;

    const-string v3, "KTF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 145
    if-le v1, v5, :cond_3e

    const-string v2, "2945#*5200#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNLOCK_MENU"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, broadcastIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v2, v4

    .line 163
    .end local v0           #broadcastIntent:Landroid/content/Intent;
    :goto_27
    return v2

    .line 154
    :cond_28
    if-le v1, v5, :cond_3e

    const-string v2, "2945#*620#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNLOCK_MENU"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .restart local v0       #broadcastIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v2, v4

    .line 158
    goto :goto_27

    .line 163
    .end local v0           #broadcastIntent:Landroid/content/Intent;
    :cond_3e
    const/4 v2, 0x0

    goto :goto_27
.end method

.method static handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8
    .parameter "context"
    .parameter "input"

    .prologue
    const/4 v5, 0x4

    .line 446
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 447
    .local v1, len:I
    const/16 v2, 0x8

    if-le v1, v2, :cond_42

    const-string v2, "*#*#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    const-string v2, "#*#*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 448
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SECRET_CODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android_secret_code://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-int v4, v1, v5

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 450
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 451
    const/4 v2, 0x1

    .line 454
    .end local v0           #intent:Landroid/content/Intent;
    :goto_41
    return v2

    :cond_42
    const/4 v2, 0x0

    goto :goto_41
.end method

.method static showIMEIPanel(Landroid/content/Context;Z)V
    .registers 7
    .parameter "context"
    .parameter "useSystemWindow"

    .prologue
    .line 550
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, imeiStr:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f06006d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 559
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d7

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 560
    return-void
.end method

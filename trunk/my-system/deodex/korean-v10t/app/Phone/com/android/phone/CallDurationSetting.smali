.class public Lcom/android/phone/CallDurationSetting;
.super Landroid/preference/PreferenceActivity;
.source "CallDurationSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final BUTTON_ALL_CALL_KEY:Ljava/lang/String; = "button_all_key"

.field private static final BUTTON_LAST_CALL_KEY:Ljava/lang/String; = "button_last_key"

.field private static final BUTTON_MO_CALL_KEY:Ljava/lang/String; = "button_mo_key"

.field private static final BUTTON_MT_CALL_KEY:Ljava/lang/String; = "button_mt_key"

.field private static final DIVIDER_HOUR:J = 0x36ee80L

.field private static final DIVIDER_MIN:J = 0xea60L

.field private static final DIVIDER_SEC:J = 0x3e8L

.field public static final PREF_ALL_CALL:Ljava/lang/String; = "allCall"

.field public static final PREF_CALL_DURATION:Ljava/lang/String; = "PrefCallDuration"

.field public static final PREF_LAST_CALL:Ljava/lang/String; = "lastCall"

.field public static final PREF_MO_CALL:Ljava/lang/String; = "moCall"

.field public static final PREF_MT_CALL:Ljava/lang/String; = "mtCall"

.field private static final TAG:Ljava/lang/String; = "CallDurationSetting"

.field private static hALL:I

.field private static hMO:I

.field private static hMT:I

.field private static mALL:I

.field private static mMO:I

.field private static mMT:I

.field private static sALL:I

.field private static sMO:I

.field private static sMT:I


# instance fields
.field alertAll:Landroid/app/AlertDialog;

.field alertLast:Landroid/app/AlertDialog;

.field alertMO:Landroid/app/AlertDialog;

.field alertMT:Landroid/app/AlertDialog;

.field builder:Landroid/app/AlertDialog$Builder;

.field builderAll:Landroid/app/AlertDialog$Builder;

.field builderLast:Landroid/app/AlertDialog$Builder;

.field builderMO:Landroid/app/AlertDialog$Builder;

.field builderMT:Landroid/app/AlertDialog$Builder;

.field inflaterALL:Landroid/view/LayoutInflater;

.field inflaterLast:Landroid/view/LayoutInflater;

.field inflaterMO:Landroid/view/LayoutInflater;

.field inflaterMT:Landroid/view/LayoutInflater;

.field private mButtonAll:Landroid/preference/Preference;

.field private mButtonLast:Landroid/preference/Preference;

.field private mButtonMO:Landroid/preference/Preference;

.field private mButtonMT:Landroid/preference/Preference;

.field viewALL:Landroid/view/View;

.field viewLast:Landroid/view/View;

.field viewMO:Landroid/view/View;

.field viewMT:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private final clearCallDuration(Ljava/lang/String;Landroid/preference/Preference;)V
    .registers 7
    .parameter "key"
    .parameter "which"

    .prologue
    .line 260
    const-string v2, "PrefCallDuration"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/CallDurationSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 261
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 262
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-wide/16 v2, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 263
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 264
    return-void
.end method

.method private final displayCallDuration(JLandroid/preference/Preference;)V
    .registers 15
    .parameter "duration"
    .parameter "which"

    .prologue
    .line 111
    iget-object v7, p0, Lcom/android/phone/CallDurationSetting;->mButtonAll:Landroid/preference/Preference;

    if-ne p3, v7, :cond_aa

    .line 112
    sget v7, Lcom/android/phone/CallDurationSetting;->hMO:I

    sget v8, Lcom/android/phone/CallDurationSetting;->hMT:I

    add-int v0, v7, v8

    .line 113
    .local v0, hour:I
    sget v7, Lcom/android/phone/CallDurationSetting;->mMO:I

    sget v8, Lcom/android/phone/CallDurationSetting;->mMT:I

    add-int v1, v7, v8

    .line 114
    .local v1, minute:I
    sget v7, Lcom/android/phone/CallDurationSetting;->sMO:I

    sget v8, Lcom/android/phone/CallDurationSetting;->sMT:I

    add-int v2, v7, v8

    .line 116
    .local v2, second:I
    const/16 v7, 0x3b

    if-le v1, v7, :cond_1f

    .line 117
    const/16 v7, 0x3c

    sub-int/2addr v1, v7

    .line 118
    add-int/lit8 v0, v0, 0x1

    .line 120
    :cond_1f
    const/16 v7, 0x3b

    if-le v2, v7, :cond_28

    .line 121
    const/16 v7, 0x3c

    sub-int/2addr v2, v7

    .line 122
    add-int/lit8 v1, v1, 0x1

    .line 141
    :cond_28
    :goto_28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, time_hour:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, time_min:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, time_sec:Ljava/lang/String;
    const/16 v7, 0xa

    if-ge v0, v7, :cond_57

    .line 147
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 148
    :cond_57
    const/16 v7, 0xa

    if-ge v1, v7, :cond_6e

    .line 149
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 150
    :cond_6e
    const/16 v7, 0xa

    if-ge v2, v7, :cond_85

    .line 151
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 153
    :cond_85
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, summary:Ljava/lang/CharSequence;
    invoke-virtual {p3, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 155
    return-void

    .line 126
    .end local v0           #hour:I
    .end local v1           #minute:I
    .end local v2           #second:I
    .end local v3           #summary:Ljava/lang/CharSequence;
    .end local v4           #time_hour:Ljava/lang/String;
    .end local v5           #time_min:Ljava/lang/String;
    .end local v6           #time_sec:Ljava/lang/String;
    :cond_aa
    const-wide/32 v7, 0x36ee80

    div-long v7, p1, v7

    long-to-int v0, v7

    .line 127
    .restart local v0       #hour:I
    const-wide/32 v7, 0x36ee80

    rem-long v7, p1, v7

    const-wide/32 v9, 0xea60

    div-long/2addr v7, v9

    long-to-int v1, v7

    .line 128
    .restart local v1       #minute:I
    const-wide/32 v7, 0xea60

    rem-long v7, p1, v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    long-to-int v2, v7

    .line 130
    .restart local v2       #second:I
    iget-object v7, p0, Lcom/android/phone/CallDurationSetting;->mButtonMO:Landroid/preference/Preference;

    if-ne p3, v7, :cond_cf

    .line 131
    sput v0, Lcom/android/phone/CallDurationSetting;->hMO:I

    .line 132
    sput v1, Lcom/android/phone/CallDurationSetting;->mMO:I

    .line 133
    sput v2, Lcom/android/phone/CallDurationSetting;->sMO:I

    goto/16 :goto_28

    .line 134
    :cond_cf
    iget-object v7, p0, Lcom/android/phone/CallDurationSetting;->mButtonMT:Landroid/preference/Preference;

    if-ne p3, v7, :cond_28

    .line 135
    sput v0, Lcom/android/phone/CallDurationSetting;->hMT:I

    .line 136
    sput v1, Lcom/android/phone/CallDurationSetting;->mMT:I

    .line 137
    sput v2, Lcom/android/phone/CallDurationSetting;->sMT:I

    goto/16 :goto_28
.end method

.method private final displayMessage()V
    .registers 3

    .prologue
    .line 336
    const v0, 0x7f0900ce

    invoke-virtual {p0, v0}, Lcom/android/phone/CallDurationSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 338
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 14
    .parameter "dialog"
    .parameter "which"

    .prologue
    const-wide/16 v5, 0x0

    const-string v10, "mtCall"

    const-string v9, "moCall"

    const-string v8, "lastCall"

    const-string v7, "allCall"

    .line 269
    const-string v3, "PrefCallDuration"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/CallDurationSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 271
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 273
    packed-switch p2, :pswitch_data_e8

    .line 333
    :goto_17
    return-void

    .line 277
    :pswitch_18
    iget-object v3, p0, Lcom/android/phone/CallDurationSetting;->alertLast:Landroid/app/AlertDialog;

    if-ne p1, v3, :cond_4d

    .line 279
    const-string v3, "lastCall"

    iget-object v3, p0, Lcom/android/phone/CallDurationSetting;->mButtonLast:Landroid/preference/Preference;

    invoke-direct {p0, v8, v3}, Lcom/android/phone/CallDurationSetting;->clearCallDuration(Ljava/lang/String;Landroid/preference/Preference;)V

    .line 280
    iget-object v3, p0, Lcom/android/phone/CallDurationSetting;->mButtonLast:Landroid/preference/Preference;

    invoke-direct {p0, v5, v6, v3}, Lcom/android/phone/CallDurationSetting;->displayCallDuration(JLandroid/preference/Preference;)V

    .line 282
    const-string v3, "moCall"

    invoke-interface {v2, v9, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 283
    .local v0, duration:J
    iget-object v3, p0, Lcom/android/phone/CallDurationSetting;->mButtonMO:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/phone/CallDurationSetting;->displayCallDuration(JLandroid/preference/Preference;)V

    .line 285
    const-string v3, "mtCall"

    invoke-interface {v2, v10, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 286
    iget-object v3, p0, Lcom/android/phone/CallDurationSetting;->mButtonMT:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/phone/CallDurationSetting;->displayCallDuration(JLandroid/preference/Preference;)V

    .line 288
    const-string v3, "allCall"

    invoke-interface {v2, v7, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 289
    iget-object v3, p0, Lcom/android/phone/CallDurationSetting;->mButtonAll:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/phone/CallDurationSetting;->displayCallDuration(JLandroid/preference/Preference;)V

    .line 328
    .end local v0           #duration:J
    :cond_49
    :goto_49
    invoke-direct {p0}, Lcom/android/phone/CallDurationSetting;->displayMessage()V

    goto :goto_17

    .line 291
    :cond_4d
    iget-object v3, p0, Lcom/android/phone/CallDurationSetting;->alertAll:Landroid/app/AlertDialog;

    if-ne p1, v3, :cond_82

    .line 293
    const-string v3, "lastCall"

    iget-object v3, p0, Lcom/android/phone/CallDurationSetting;->mButtonLast:Landroid/preference/Preference;

    invoke-direct {p0, v8, v3}, Lcom/android/phone/CallDurationSetting;->clearCallDuration(Ljava/lang/String;Landroid/preference/Preference;)V

    .line 294
    iget-object v3, p0, Lcom/android/phone/CallDurationSetting;->mButtonLast:Landroid/preference/Preference;

    invoke-direct {p0, v5, v6, v3}, Lcom/android/phone/CallDurationSetting;->displayCallDuration(JLandroid/preference/Preference;)V

    .line 295
    const-string v3, "moCall"

    iget-object v3, p0, Lcom/android/phone/CallDurationSetting;->mButtonMO:Landroid/preference/Preference;

    invoke-direct {p0, v9, v3}, Lcom/android/phone/CallDurationSetting;->clearCallDuration(Ljava/lang/String;Landroid/preference/Preference;)V

    .line 296
    iget-object v3, p0, Lcom/android/phone/CallDurationSetting;->mButtonMO:Landroid/preference/Preference;

    invoke-direct {p0, v5, v6, v3}, Lcom/android/phone/CallDurationSetting;->displayCallDuration(JLandroid/preference/Preference;)V

    .line 297
    const-string v3, "mtCall"

    iget-object v3, p0, Lcom/android/phone/CallDurationSetting;->mButtonMT:Landroid/preference/Preference;

    invoke-direct {p0, v10, v3}, Lcom/android/phone/CallDurationSetting;->clearCallDuration(Ljava/lang/String;Landroid/preference/Preference;)V

    .line 298
    iget-object v3, p0, Lcom/android/phone/CallDurationSetting;->mButtonMT:Landroid/preference/Preference;

    invoke-direct {p0, v5, v6, v3}, Lcom/android/phone/CallDurationSetting;->displayCallDuration(JLandroid/preference/Preference;)V

    .line 299
    const-string v3, "allCall"

    iget-object v3, p0, Lcom/android/phone/CallDurationSetting;->mButtonAll:Landroid/preference/Preference;

    invoke-direct {p0, v7, v3}, Lcom/android/phone/CallDurationSetting;->clearCallDuration(Ljava/lang/String;Landroid/preference/Preference;)V

    .line 300
    iget-object v3, p0, Lcom/android/phone/CallDurationSetting;->mButtonAll:Landroid/preference/Preference;

    invoke-direct {p0, v5, v6, v3}, Lcom/android/phone/CallDurationSetting;->displayCallDuration(JLandroid/preference/Preference;)V

    goto :goto_49

    .line 302
    :cond_82
    iget-object v3, p0, Lcom/android/phone/CallDurationSetting;->alertMO:Landroid/app/AlertDialog;

    if-ne p1, v3, :cond_b4

    .line 303
    const-string v3, "moCall"

    iget-object v3, p0, Lcom/android/phone/CallDurationSetting;->mButtonMO:Landroid/preference/Preference;

    invoke-direct {p0, v9, v3}, Lcom/android/phone/CallDurationSetting;->clearCallDuration(Ljava/lang/String;Landroid/preference/Preference;)V

    .line 304
    iget-object v3, p0, Lcom/android/phone/CallDurationSetting;->mButtonMO:Landroid/preference/Preference;

    invoke-direct {p0, v5, v6, v3}, Lcom/android/phone/CallDurationSetting;->displayCallDuration(JLandroid/preference/Preference;)V

    .line 306
    const-string v3, "lastCall"

    invoke-interface {v2, v8, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 307
    .restart local v0       #duration:J
    iget-object v3, p0, Lcom/android/phone/CallDurationSetting;->mButtonLast:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/phone/CallDurationSetting;->displayCallDuration(JLandroid/preference/Preference;)V

    .line 309
    const-string v3, "mtCall"

    invoke-interface {v2, v10, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 310
    iget-object v3, p0, Lcom/android/phone/CallDurationSetting;->mButtonMT:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/phone/CallDurationSetting;->displayCallDuration(JLandroid/preference/Preference;)V

    .line 312
    const-string v3, "allCall"

    invoke-interface {v2, v7, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 313
    iget-object v3, p0, Lcom/android/phone/CallDurationSetting;->mButtonAll:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/phone/CallDurationSetting;->displayCallDuration(JLandroid/preference/Preference;)V

    goto :goto_49

    .line 314
    .end local v0           #duration:J
    :cond_b4
    iget-object v3, p0, Lcom/android/phone/CallDurationSetting;->alertMT:Landroid/app/AlertDialog;

    if-ne p1, v3, :cond_49

    .line 315
    const-string v3, "mtCall"

    iget-object v3, p0, Lcom/android/phone/CallDurationSetting;->mButtonMT:Landroid/preference/Preference;

    invoke-direct {p0, v10, v3}, Lcom/android/phone/CallDurationSetting;->clearCallDuration(Ljava/lang/String;Landroid/preference/Preference;)V

    .line 316
    iget-object v3, p0, Lcom/android/phone/CallDurationSetting;->mButtonMT:Landroid/preference/Preference;

    invoke-direct {p0, v5, v6, v3}, Lcom/android/phone/CallDurationSetting;->displayCallDuration(JLandroid/preference/Preference;)V

    .line 318
    const-string v3, "lastCall"

    invoke-interface {v2, v8, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 319
    .restart local v0       #duration:J
    iget-object v3, p0, Lcom/android/phone/CallDurationSetting;->mButtonLast:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/phone/CallDurationSetting;->displayCallDuration(JLandroid/preference/Preference;)V

    .line 321
    const-string v3, "moCall"

    invoke-interface {v2, v9, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 322
    iget-object v3, p0, Lcom/android/phone/CallDurationSetting;->mButtonMO:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/phone/CallDurationSetting;->displayCallDuration(JLandroid/preference/Preference;)V

    .line 324
    const-string v3, "allCall"

    invoke-interface {v2, v7, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 325
    iget-object v3, p0, Lcom/android/phone/CallDurationSetting;->mButtonAll:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/phone/CallDurationSetting;->displayCallDuration(JLandroid/preference/Preference;)V

    goto/16 :goto_49

    .line 273
    nop

    :pswitch_data_e8
    .packed-switch -0x1
        :pswitch_18
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x0

    const v10, 0x7f0900d0

    const v9, 0x7f0900cf

    const v8, 0x7f0900c8

    const v7, 0x7f030006

    .line 159
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 161
    const v4, 0x7f050002

    invoke-virtual {p0, v4}, Lcom/android/phone/CallDurationSetting;->addPreferencesFromResource(I)V

    .line 163
    invoke-virtual {p0}, Lcom/android/phone/CallDurationSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 164
    .local v2, prefSet:Landroid/preference/PreferenceScreen;
    const-string v4, "button_last_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CallDurationSetting;->mButtonLast:Landroid/preference/Preference;

    .line 165
    const-string v4, "button_all_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CallDurationSetting;->mButtonAll:Landroid/preference/Preference;

    .line 166
    const-string v4, "button_mo_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CallDurationSetting;->mButtonMO:Landroid/preference/Preference;

    .line 167
    const-string v4, "button_mt_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CallDurationSetting;->mButtonMT:Landroid/preference/Preference;

    .line 169
    const-string v4, "PrefCallDuration"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/CallDurationSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 172
    .local v3, settings:Landroid/content/SharedPreferences;
    const-string v4, "lastCall"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 173
    .local v0, duration:J
    iget-object v4, p0, Lcom/android/phone/CallDurationSetting;->mButtonLast:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1, v4}, Lcom/android/phone/CallDurationSetting;->displayCallDuration(JLandroid/preference/Preference;)V

    .line 175
    const-string v4, "CallDurationSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PREF_LAST_CALL:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string v4, "moCall"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 178
    iget-object v4, p0, Lcom/android/phone/CallDurationSetting;->mButtonMO:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1, v4}, Lcom/android/phone/CallDurationSetting;->displayCallDuration(JLandroid/preference/Preference;)V

    .line 180
    const-string v4, "CallDurationSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PREF_MO_CALL:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v4, "mtCall"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 183
    iget-object v4, p0, Lcom/android/phone/CallDurationSetting;->mButtonMT:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1, v4}, Lcom/android/phone/CallDurationSetting;->displayCallDuration(JLandroid/preference/Preference;)V

    .line 185
    const-string v4, "CallDurationSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PREF_MT_CALL:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v4, "allCall"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 188
    iget-object v4, p0, Lcom/android/phone/CallDurationSetting;->mButtonAll:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1, v4}, Lcom/android/phone/CallDurationSetting;->displayCallDuration(JLandroid/preference/Preference;)V

    .line 190
    const-string v4, "CallDurationSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PREF_ALL_CALL:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CallDurationSetting;->inflaterLast:Landroid/view/LayoutInflater;

    .line 193
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CallDurationSetting;->inflaterALL:Landroid/view/LayoutInflater;

    .line 194
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CallDurationSetting;->inflaterMO:Landroid/view/LayoutInflater;

    .line 195
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CallDurationSetting;->inflaterMT:Landroid/view/LayoutInflater;

    .line 198
    iget-object v4, p0, Lcom/android/phone/CallDurationSetting;->inflaterLast:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CallDurationSetting;->viewLast:Landroid/view/View;

    .line 199
    iget-object v4, p0, Lcom/android/phone/CallDurationSetting;->inflaterALL:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CallDurationSetting;->viewALL:Landroid/view/View;

    .line 200
    iget-object v4, p0, Lcom/android/phone/CallDurationSetting;->inflaterMO:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CallDurationSetting;->viewMO:Landroid/view/View;

    .line 201
    iget-object v4, p0, Lcom/android/phone/CallDurationSetting;->inflaterMT:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CallDurationSetting;->viewMT:Landroid/view/View;

    .line 203
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/CallDurationSetting;->builderLast:Landroid/app/AlertDialog$Builder;

    .line 204
    iget-object v4, p0, Lcom/android/phone/CallDurationSetting;->builderLast:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v10, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallDurationSetting;->viewLast:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 210
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/CallDurationSetting;->builderAll:Landroid/app/AlertDialog$Builder;

    .line 211
    iget-object v4, p0, Lcom/android/phone/CallDurationSetting;->builderAll:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v10, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallDurationSetting;->viewALL:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 217
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/CallDurationSetting;->builderMO:Landroid/app/AlertDialog$Builder;

    .line 218
    iget-object v4, p0, Lcom/android/phone/CallDurationSetting;->builderMO:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v10, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallDurationSetting;->viewMO:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 224
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/CallDurationSetting;->builderMT:Landroid/app/AlertDialog$Builder;

    .line 225
    iget-object v4, p0, Lcom/android/phone/CallDurationSetting;->builderMT:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v10, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallDurationSetting;->viewMT:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 232
    iget-object v4, p0, Lcom/android/phone/CallDurationSetting;->builderLast:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CallDurationSetting;->alertLast:Landroid/app/AlertDialog;

    .line 233
    iget-object v4, p0, Lcom/android/phone/CallDurationSetting;->builderAll:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CallDurationSetting;->alertAll:Landroid/app/AlertDialog;

    .line 234
    iget-object v4, p0, Lcom/android/phone/CallDurationSetting;->builderMO:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CallDurationSetting;->alertMO:Landroid/app/AlertDialog;

    .line 235
    iget-object v4, p0, Lcom/android/phone/CallDurationSetting;->builderMT:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CallDurationSetting;->alertMT:Landroid/app/AlertDialog;

    .line 236
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 89
    iget-object v0, p0, Lcom/android/phone/CallDurationSetting;->mButtonLast:Landroid/preference/Preference;

    if-ne p2, v0, :cond_c

    .line 90
    iget-object v0, p0, Lcom/android/phone/CallDurationSetting;->alertLast:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v0, v1

    .line 103
    :goto_b
    return v0

    .line 92
    :cond_c
    iget-object v0, p0, Lcom/android/phone/CallDurationSetting;->mButtonAll:Landroid/preference/Preference;

    if-ne p2, v0, :cond_17

    .line 93
    iget-object v0, p0, Lcom/android/phone/CallDurationSetting;->alertAll:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v0, v1

    .line 94
    goto :goto_b

    .line 95
    :cond_17
    iget-object v0, p0, Lcom/android/phone/CallDurationSetting;->mButtonMO:Landroid/preference/Preference;

    if-ne p2, v0, :cond_22

    .line 96
    iget-object v0, p0, Lcom/android/phone/CallDurationSetting;->alertMO:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v0, v1

    .line 97
    goto :goto_b

    .line 98
    :cond_22
    iget-object v0, p0, Lcom/android/phone/CallDurationSetting;->mButtonMT:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2d

    .line 99
    iget-object v0, p0, Lcom/android/phone/CallDurationSetting;->alertMT:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v0, v1

    .line 100
    goto :goto_b

    .line 103
    :cond_2d
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onResume()V
    .registers 8

    .prologue
    const-wide/16 v5, 0x0

    .line 241
    const-string v3, "PrefCallDuration"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/CallDurationSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 244
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 246
    const-string v3, "lastCall"

    invoke-interface {v2, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 247
    .local v0, duration:J
    iget-object v3, p0, Lcom/android/phone/CallDurationSetting;->mButtonLast:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/phone/CallDurationSetting;->displayCallDuration(JLandroid/preference/Preference;)V

    .line 249
    const-string v3, "moCall"

    invoke-interface {v2, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 250
    iget-object v3, p0, Lcom/android/phone/CallDurationSetting;->mButtonMO:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/phone/CallDurationSetting;->displayCallDuration(JLandroid/preference/Preference;)V

    .line 252
    const-string v3, "mtCall"

    invoke-interface {v2, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 253
    iget-object v3, p0, Lcom/android/phone/CallDurationSetting;->mButtonMT:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/phone/CallDurationSetting;->displayCallDuration(JLandroid/preference/Preference;)V

    .line 255
    const-string v3, "allCall"

    invoke-interface {v2, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 256
    iget-object v3, p0, Lcom/android/phone/CallDurationSetting;->mButtonAll:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/phone/CallDurationSetting;->displayCallDuration(JLandroid/preference/Preference;)V

    .line 257
    return-void
.end method

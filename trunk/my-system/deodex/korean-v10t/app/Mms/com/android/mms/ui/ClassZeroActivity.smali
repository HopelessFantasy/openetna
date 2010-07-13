.class public Lcom/android/mms/ui/ClassZeroActivity;
.super Landroid/app/Activity;
.source "ClassZeroActivity.java"


# static fields
.field private static final LGE_MSGTYPE_SMS:I = 0x6

.field private static final TAG:Ljava/lang/String; = "ClassZeroActivity"

.field private static mAudioManager:Landroid/media/AudioManager;


# instance fields
.field audioStreamType:I

.field private isLGE:Z

.field looping:Z

.field mAddressChars:Ljava/lang/CharSequence;

.field private final mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field mDate:J

.field mMessageChars:Ljava/lang/CharSequence;

.field mPID:I

.field mReplypath:Z

.field mSCAddress:Ljava/lang/String;

.field private final mSaveListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSound:Landroid/media/AsyncPlayer;

.field uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 192
    new-instance v0, Lcom/android/mms/ui/ClassZeroActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ClassZeroActivity$1;-><init>(Lcom/android/mms/ui/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mSaveListener:Landroid/content/DialogInterface$OnClickListener;

    .line 211
    new-instance v0, Lcom/android/mms/ui/ClassZeroActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ClassZeroActivity$2;-><init>(Lcom/android/mms/ui/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/media/AsyncPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mSound:Landroid/media/AsyncPlayer;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 234
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 235
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "icicle"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ClassZeroActivity;->requestWindowFeature(I)Z

    .line 90
    invoke-virtual {p0}, Lcom/android/mms/ui/ClassZeroActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const v7, 0x7f020044

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/mms/ui/ClassZeroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "CLASS_ZERO_BODY"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageChars:Ljava/lang/CharSequence;

    .line 97
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/mms/ui/ClassZeroActivity;->isLGE:Z

    .line 98
    invoke-virtual {p0}, Lcom/android/mms/ui/ClassZeroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "CLASS_ZERO_LGE"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/mms/ui/ClassZeroActivity;->isLGE:Z

    .line 100
    iget-boolean v6, p0, Lcom/android/mms/ui/ClassZeroActivity;->isLGE:Z

    if-eqz v6, :cond_7d

    .line 101
    invoke-virtual {p0}, Lcom/android/mms/ui/ClassZeroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "CLASS_ZERO_ADDRESS"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/ClassZeroActivity;->mAddressChars:Ljava/lang/CharSequence;

    .line 103
    invoke-virtual {p0}, Lcom/android/mms/ui/ClassZeroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "CLASS_ZERO_ADDRESS"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/ClassZeroActivity;->mAddressChars:Ljava/lang/CharSequence;

    .line 105
    invoke-virtual {p0}, Lcom/android/mms/ui/ClassZeroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "CLASS_ZERO_PID"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/mms/ui/ClassZeroActivity;->mPID:I

    .line 107
    invoke-virtual {p0}, Lcom/android/mms/ui/ClassZeroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "CLASS_ZERO_REPLYPATH"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/mms/ui/ClassZeroActivity;->mReplypath:Z

    .line 109
    invoke-virtual {p0}, Lcom/android/mms/ui/ClassZeroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "CLASS_ZERO_SCADRESS"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/ClassZeroActivity;->mSCAddress:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcom/android/mms/ui/ClassZeroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "CLASS_ZERO_DATE"

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/mms/ui/ClassZeroActivity;->mDate:J

    .line 118
    :cond_7d
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ClassZeroActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/media/AudioManager;

    sput-object p1, Lcom/android/mms/ui/ClassZeroActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 119
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 121
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v6, "pref_key_enable_notifications"

    const/4 v7, 0x1

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_95

    .line 190
    :goto_94
    return-void

    .line 126
    :cond_95
    sget-object v6, Lcom/android/mms/ui/ClassZeroActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    .line 128
    .local v4, valueMode:I
    const/4 v6, 0x1

    if-ne v4, v6, :cond_ec

    const-string v6, "pref_key_enable_notifications"

    const/4 v7, 0x1

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_ec

    const-string v6, "pref_key_vibrate"

    const/4 v7, 0x1

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_ec

    .line 132
    const-string v6, "ClassZeroActivity"

    const-string v7, "valueMode is RINGER_MODE_VIBRATE"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v5, Landroid/os/Vibrator;

    invoke-direct {v5}, Landroid/os/Vibrator;-><init>()V

    .line 134
    .local v5, vibrator:Landroid/os/Vibrator;
    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    .line 172
    .end local v5           #vibrator:Landroid/os/Vibrator;
    :cond_c1
    :goto_c1
    iget-boolean v6, p0, Lcom/android/mms/ui/ClassZeroActivity;->isLGE:Z

    if-eqz v6, :cond_16a

    .line 173
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/mms/ui/ClassZeroActivity;->mAddressChars:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageChars:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f070117

    iget-object v8, p0, Lcom/android/mms/ui/ClassZeroActivity;->mSaveListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f070071

    iget-object v8, p0, Lcom/android/mms/ui/ClassZeroActivity;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_94

    .line 136
    :cond_ec
    const/4 v6, 0x2

    if-ne v4, v6, :cond_c1

    const-string v6, "pref_key_enable_notifications"

    const/4 v7, 0x1

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_c1

    .line 139
    const-string v6, "ClassZeroActivity"

    const-string v7, "valueMode is RINGER_MODE_NORMAL"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v6, "pref_key_vibrate"

    const/4 v7, 0x1

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_112

    .line 142
    new-instance v5, Landroid/os/Vibrator;

    invoke-direct {v5}, Landroid/os/Vibrator;-><init>()V

    .line 143
    .restart local v5       #vibrator:Landroid/os/Vibrator;
    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    .line 146
    .end local v5           #vibrator:Landroid/os/Vibrator;
    :cond_112
    new-instance v6, Landroid/media/AsyncPlayer;

    const-string v7, "ClassZeroActivity"

    invoke-direct {v6, v7}, Landroid/media/AsyncPlayer;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/mms/ui/ClassZeroActivity;->mSound:Landroid/media/AsyncPlayer;

    .line 147
    const-string v6, "pref_key_ringtone"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, ringtoneStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 151
    .local v2, ringtoneUri:Landroid/net/Uri;
    const-string v6, "ClassZeroActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "valueMode is ringtoneUri is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v6, "content://media"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_159

    .line 154
    invoke-static {p0, v2}, Lcom/android/mms/ui/MessageUtils;->getFilepathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, filepath:Ljava/lang/String;
    if-nez v0, :cond_159

    .line 158
    const-string v6, "ClassZeroActivity"

    const-string v7, "valueMode is filepath is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v6, "content://settings/system/notification_sound"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 162
    .end local v0           #filepath:Ljava/lang/String;
    :cond_159
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/mms/ui/ClassZeroActivity;->looping:Z

    .line 163
    const/4 v6, 0x5

    iput v6, p0, Lcom/android/mms/ui/ClassZeroActivity;->audioStreamType:I

    .line 164
    iget-object v6, p0, Lcom/android/mms/ui/ClassZeroActivity;->mSound:Landroid/media/AsyncPlayer;

    iget-boolean v7, p0, Lcom/android/mms/ui/ClassZeroActivity;->looping:Z

    iget v8, p0, Lcom/android/mms/ui/ClassZeroActivity;->audioStreamType:I

    invoke-virtual {v6, p0, v2, v7, v8}, Landroid/media/AsyncPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZI)V

    goto/16 :goto_c1

    .line 180
    .end local v1           #ringtoneStr:Ljava/lang/String;
    .end local v2           #ringtoneUri:Landroid/net/Uri;
    :cond_16a
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f07002b

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x108009b

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageChars:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    iget-object v8, p0, Lcom/android/mms/ui/ClassZeroActivity;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_94
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 229
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 230
    return-void
.end method

.class public abstract Landroid/app/ActivityManagerNative;
.super Landroid/os/Binder;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# static fields
.field private static gDefault:Landroid/app/IActivityManager;

.field static sSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 97
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 121
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 122
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ActivityManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 57
    if-nez p0, :cond_4

    .line 58
    const/4 v1, 0x0

    .line 66
    :goto_3
    return-object v1

    .line 60
    :cond_4
    const-string v1, "android.app.IActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    .line 62
    .local v0, in:Landroid/app/IActivityManager;
    if-eqz v0, :cond_10

    move-object v1, v0

    .line 63
    goto :goto_3

    .line 66
    :cond_10
    new-instance v1, Landroid/app/ActivityManagerProxy;

    invoke-direct {v1, p0}, Landroid/app/ActivityManagerProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 13
    .parameter "intent"
    .parameter "permission"

    .prologue
    .line 106
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v2, p0

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 111
    :goto_11
    return-void

    .line 109
    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method public static getDefault()Landroid/app/IActivityManager;
    .registers 2

    .prologue
    .line 74
    sget-object v1, Landroid/app/ActivityManagerNative;->gDefault:Landroid/app/IActivityManager;

    if-eqz v1, :cond_7

    .line 77
    sget-object v1, Landroid/app/ActivityManagerNative;->gDefault:Landroid/app/IActivityManager;

    .line 85
    :goto_6
    return-object v1

    .line 79
    :cond_7
    const-string v1, "activity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 82
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v1

    sput-object v1, Landroid/app/ActivityManagerNative;->gDefault:Landroid/app/IActivityManager;

    .line 85
    sget-object v1, Landroid/app/ActivityManagerNative;->gDefault:Landroid/app/IActivityManager;

    goto :goto_6
.end method

.method public static isSystemReady()Z
    .registers 1

    .prologue
    .line 92
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    if-nez v0, :cond_e

    .line 93
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 95
    :cond_e
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    return v0
.end method

.method public static noteWakeupAlarm(Landroid/app/PendingIntent;)V
    .registers 3
    .parameter "ps"

    .prologue
    .line 115
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 118
    :goto_b
    return-void

    .line 116
    :catch_c
    move-exception v0

    goto :goto_b
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 1120
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 141
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 127
    packed-switch p1, :pswitch_data_f5a

    .line 1115
    :pswitch_3
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .end local p1
    :goto_7
    return v5

    .line 130
    .restart local p1
    :pswitch_8
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v72

    .line 132
    .local v72, b:Landroid/os/IBinder;
    invoke-static/range {v72 .. v72}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 133
    .local v6, app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 134
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 135
    .local v8, resolvedType:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/net/Uri;

    .line 136
    .local v9, grantedUriPermissions:[Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 137
    .local v10, grantedMode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 138
    .local v11, resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 139
    .local v12, resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 140
    .local v13, requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_64

    const/4 v5, 0x1

    move v14, v5

    .line 141
    .local v14, onlyIfNeeded:Z
    :goto_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_67

    const/4 v5, 0x1

    move v15, v5

    .local v15, debug:Z
    :goto_52
    move-object/from16 v5, p0

    .line 142
    invoke-virtual/range {v5 .. v15}, Landroid/app/ActivityManagerNative;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZ)I

    move-result v123

    .line 145
    .local v123, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    move-object/from16 v0, p3

    move/from16 v1, v123

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/4 v5, 0x1

    goto :goto_7

    .line 140
    .end local v14           #onlyIfNeeded:Z
    .end local v15           #debug:Z
    .end local v123           #result:I
    :cond_64
    const/4 v5, 0x0

    move v14, v5

    goto :goto_4a

    .line 141
    .restart local v14       #onlyIfNeeded:Z
    :cond_67
    const/4 v5, 0x0

    move v15, v5

    goto :goto_52

    .line 152
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #grantedUriPermissions:[Landroid/net/Uri;
    .end local v10           #grantedMode:I
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v14           #onlyIfNeeded:Z
    .end local v72           #b:Landroid/os/IBinder;
    :pswitch_6a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v75

    .line 154
    .local v75, callingActivity:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 155
    .restart local v7       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v75

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;)Z

    move-result v123

    .line 156
    .local v123, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v123, :cond_99

    const/4 v5, 0x1

    :goto_90
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 157
    :cond_99
    const/4 v5, 0x0

    goto :goto_90

    .line 162
    .end local v7           #intent:Landroid/content/Intent;
    .end local v75           #callingActivity:Landroid/os/IBinder;
    .end local v123           #result:Z
    :pswitch_9b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v35

    .line 164
    .local v35, token:Landroid/os/IBinder;
    const/16 v22, 0x0

    .line 165
    .local v22, resultData:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 166
    .local v21, resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_be

    .line 167
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .end local v22           #resultData:Landroid/content/Intent;
    check-cast v22, Landroid/content/Intent;

    .line 169
    .restart local v22       #resultData:Landroid/content/Intent;
    :cond_be
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z

    move-result v122

    .line 170
    .local v122, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    if-eqz v122, :cond_d9

    const/4 v5, 0x1

    :goto_d0
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 171
    :cond_d9
    const/4 v5, 0x0

    goto :goto_d0

    .line 176
    .end local v21           #resultCode:I
    .end local v22           #resultData:Landroid/content/Intent;
    .end local v35           #token:Landroid/os/IBinder;
    .end local v122           #res:Z
    :pswitch_db
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v35

    .line 178
    .restart local v35       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 179
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 180
    .restart local v13       #requestCode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object v2, v12

    move v3, v13

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 181
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 187
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v35           #token:Landroid/os/IBinder;
    :pswitch_fe
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v72

    .line 189
    .restart local v72       #b:Landroid/os/IBinder;
    if-eqz v72, :cond_150

    invoke-static/range {v72 .. v72}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v5

    move-object v6, v5

    .line 191
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v72

    .line 192
    if-eqz v72, :cond_153

    invoke-static/range {v72 .. v72}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v5

    move-object/from16 v117, v5

    .line 194
    .local v117, rec:Landroid/content/IIntentReceiver;
    :goto_11d
    sget-object v5, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Landroid/content/IntentFilter;

    .line 195
    .local v84, filter:Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 196
    .local v24, perm:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v117

    move-object/from16 v3, v84

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->registerReceiver(Landroid/app/IApplicationThread;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 197
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v7, :cond_157

    .line 199
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    const/4 v5, 0x0

    move-object v0, v7

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 204
    :goto_14d
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 189
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v24           #perm:Ljava/lang/String;
    .end local v84           #filter:Landroid/content/IntentFilter;
    .end local v117           #rec:Landroid/content/IIntentReceiver;
    :cond_150
    const/4 v5, 0x0

    move-object v6, v5

    goto :goto_111

    .line 192
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :cond_153
    const/4 v5, 0x0

    move-object/from16 v117, v5

    goto :goto_11d

    .line 202
    .restart local v7       #intent:Landroid/content/Intent;
    .restart local v24       #perm:Ljava/lang/String;
    .restart local v84       #filter:Landroid/content/IntentFilter;
    .restart local v117       #rec:Landroid/content/IIntentReceiver;
    :cond_157
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14d

    .line 209
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v24           #perm:Ljava/lang/String;
    .end local v72           #b:Landroid/os/IBinder;
    .end local v84           #filter:Landroid/content/IntentFilter;
    .end local v117           #rec:Landroid/content/IIntentReceiver;
    :pswitch_15f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v72

    .line 211
    .restart local v72       #b:Landroid/os/IBinder;
    if-nez v72, :cond_170

    .line 212
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 214
    :cond_170
    invoke-static/range {v72 .. v72}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v117

    .line 215
    .restart local v117       #rec:Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 222
    .end local v72           #b:Landroid/os/IBinder;
    .end local v117           #rec:Landroid/content/IIntentReceiver;
    :pswitch_181
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v72

    .line 224
    .restart local v72       #b:Landroid/os/IBinder;
    if-eqz v72, :cond_1eb

    invoke-static/range {v72 .. v72}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v5

    move-object v6, v5

    .line 226
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_194
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 227
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 228
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v72

    .line 229
    if-eqz v72, :cond_1ee

    invoke-static/range {v72 .. v72}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v5

    move-object v11, v5

    .line 231
    .local v11, resultTo:Landroid/content/IIntentReceiver;
    :goto_1ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 232
    .restart local v21       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 233
    .local v22, resultData:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v23

    .line 234
    .local v23, resultExtras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 235
    .restart local v24       #perm:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1f1

    const/4 v5, 0x1

    move/from16 v25, v5

    .line 236
    .local v25, serialized:Z
    :goto_1c7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1f5

    const/4 v5, 0x1

    move/from16 v26, v5

    .local v26, sticky:Z
    :goto_1d0
    move-object/from16 v16, p0

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v11

    .line 237
    invoke-virtual/range {v16 .. v26}, Landroid/app/ActivityManagerNative;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I

    move-result v122

    .line 240
    .local v122, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    move-object/from16 v0, p3

    move/from16 v1, v122

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 224
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v11           #resultTo:Landroid/content/IIntentReceiver;
    .end local v21           #resultCode:I
    .end local v22           #resultData:Ljava/lang/String;
    .end local v23           #resultExtras:Landroid/os/Bundle;
    .end local v24           #perm:Ljava/lang/String;
    .end local v25           #serialized:Z
    .end local v26           #sticky:Z
    .end local v122           #res:I
    :cond_1eb
    const/4 v5, 0x0

    move-object v6, v5

    goto :goto_194

    .line 229
    .restart local v6       #app:Landroid/app/IApplicationThread;
    .restart local v7       #intent:Landroid/content/Intent;
    .restart local v8       #resolvedType:Ljava/lang/String;
    :cond_1ee
    const/4 v5, 0x0

    move-object v11, v5

    goto :goto_1ae

    .line 235
    .restart local v11       #resultTo:Landroid/content/IIntentReceiver;
    .restart local v21       #resultCode:I
    .restart local v22       #resultData:Ljava/lang/String;
    .restart local v23       #resultExtras:Landroid/os/Bundle;
    .restart local v24       #perm:Ljava/lang/String;
    :cond_1f1
    const/4 v5, 0x0

    move/from16 v25, v5

    goto :goto_1c7

    .line 236
    .restart local v25       #serialized:Z
    :cond_1f5
    const/4 v5, 0x0

    move/from16 v26, v5

    goto :goto_1d0

    .line 247
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v11           #resultTo:Landroid/content/IIntentReceiver;
    .end local v21           #resultCode:I
    .end local v22           #resultData:Ljava/lang/String;
    .end local v23           #resultExtras:Landroid/os/Bundle;
    .end local v24           #perm:Ljava/lang/String;
    .end local v25           #serialized:Z
    .end local v72           #b:Landroid/os/IBinder;
    :pswitch_1f9
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v72

    .line 249
    .restart local v72       #b:Landroid/os/IBinder;
    if-eqz v72, :cond_224

    invoke-static/range {v72 .. v72}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v5

    move-object v6, v5

    .line 250
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_20c
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 251
    .restart local v7       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;)V

    .line 252
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 249
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    :cond_224
    const/4 v5, 0x0

    move-object v6, v5

    goto :goto_20c

    .line 257
    .end local v72           #b:Landroid/os/IBinder;
    :pswitch_227
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v28

    .line 259
    .local v28, who:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 260
    .restart local v21       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 261
    .restart local v22       #resultData:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v23

    .line 262
    .restart local v23       #resultExtras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_25b

    const/4 v5, 0x1

    move/from16 v32, v5

    .line 263
    .local v32, resultAbort:Z
    :goto_248
    if-eqz v28, :cond_255

    move-object/from16 v27, p0

    move/from16 v29, v21

    move-object/from16 v30, v22

    move-object/from16 v31, v23

    .line 264
    invoke-virtual/range {v27 .. v32}, Landroid/app/ActivityManagerNative;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 266
    :cond_255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 262
    .end local v32           #resultAbort:Z
    :cond_25b
    const/4 v5, 0x0

    move/from16 v32, v5

    goto :goto_248

    .line 271
    .end local v21           #resultCode:I
    .end local v22           #resultData:Ljava/lang/String;
    .end local v23           #resultExtras:Landroid/os/Bundle;
    .end local v28           #who:Landroid/os/IBinder;
    :pswitch_25f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v35

    .line 273
    .restart local v35       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_285

    const/4 v5, 0x1

    move/from16 v90, v5

    .line 274
    .local v90, isPersistent:Z
    :goto_274
    if-eqz v35, :cond_27f

    .line 275
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v90

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPersistent(Landroid/os/IBinder;Z)V

    .line 277
    :cond_27f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 273
    .end local v90           #isPersistent:Z
    :cond_285
    const/4 v5, 0x0

    move/from16 v90, v5

    goto :goto_274

    .line 282
    .end local v35           #token:Landroid/os/IBinder;
    :pswitch_289
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 285
    .restart local v6       #app:Landroid/app/IApplicationThread;
    if-eqz v6, :cond_2a1

    .line 286
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->attachApplication(Landroid/app/IApplicationThread;)V

    .line 288
    :cond_2a1
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 293
    .end local v6           #app:Landroid/app/IApplicationThread;
    :pswitch_2a7
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v35

    .line 295
    .restart local v35       #token:Landroid/os/IBinder;
    if-eqz v35, :cond_2bc

    .line 296
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityIdle(Landroid/os/IBinder;)V

    .line 298
    :cond_2bc
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 303
    .end local v35           #token:Landroid/os/IBinder;
    :pswitch_2c2
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v35

    .line 305
    .restart local v35       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v96

    .line 306
    .local v96, map:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->activityPaused(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 307
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 312
    .end local v35           #token:Landroid/os/IBinder;
    .end local v96           #map:Landroid/os/Bundle;
    :pswitch_2e1
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v35

    .line 314
    .restart local v35       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_31c

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/graphics/Bitmap;

    move-object/from16 v131, p1

    .line 316
    .local v131, thumbnail:Landroid/graphics/Bitmap;
    :goto_300
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Ljava/lang/CharSequence;

    .line 317
    .local v80, description:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v131

    move-object/from16 v3, v80

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->activityStopped(Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 318
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 314
    .end local v80           #description:Ljava/lang/CharSequence;
    .end local v131           #thumbnail:Landroid/graphics/Bitmap;
    .restart local p1
    :cond_31c
    const/4 v5, 0x0

    move-object/from16 v131, v5

    goto :goto_300

    .line 323
    .end local v35           #token:Landroid/os/IBinder;
    :pswitch_320
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v35

    .line 325
    .restart local v35       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityDestroyed(Landroid/os/IBinder;)V

    .line 326
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 331
    .end local v35           #token:Landroid/os/IBinder;
    :pswitch_339
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v35

    .line 333
    .restart local v35       #token:Landroid/os/IBinder;
    if-eqz v35, :cond_35e

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v122, v5

    .line 334
    .local v122, res:Ljava/lang/String;
    :goto_351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    move-object/from16 v0, p3

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 336
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 333
    .end local v122           #res:Ljava/lang/String;
    :cond_35e
    const/4 v5, 0x0

    move-object/from16 v122, v5

    goto :goto_351

    .line 340
    .end local v35           #token:Landroid/os/IBinder;
    :pswitch_362
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v35

    .line 342
    .restart local v35       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v77

    .line 343
    .local v77, cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    move-object/from16 v0, v77

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 345
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 349
    .end local v35           #token:Landroid/os/IBinder;
    .end local v77           #cn:Landroid/content/ComponentName;
    :pswitch_383
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 351
    .local v98, maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .line 352
    .local v39, fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v119

    .line 353
    .local v119, receiverBinder:Landroid/os/IBinder;
    if-eqz v119, :cond_3db

    invoke-static/range {v119 .. v119}, Landroid/app/IThumbnailReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IThumbnailReceiver;

    move-result-object v5

    move-object/from16 v118, v5

    .line 356
    .local v118, receiver:Landroid/app/IThumbnailReceiver;
    :goto_39f
    move-object/from16 v0, p0

    move/from16 v1, v98

    move/from16 v2, v39

    move-object/from16 v3, v118

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v92

    .line 357
    .local v92, list:Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    if-eqz v92, :cond_3df

    invoke-interface/range {v92 .. v92}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v69, v5

    .line 359
    .local v69, N:I
    :goto_3b6
    move-object/from16 v0, p3

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    const/16 v85, 0x0

    .local v85, i:I
    :goto_3bf
    move/from16 v0, v85

    move/from16 v1, v69

    if-ge v0, v1, :cond_3e3

    .line 362
    move-object/from16 v0, v92

    move/from16 v1, v85

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 364
    .local v87, info:Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v87

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 361
    add-int/lit8 v85, v85, 0x1

    goto :goto_3bf

    .line 353
    .end local v69           #N:I
    .end local v85           #i:I
    .end local v87           #info:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v92           #list:Ljava/util/List;
    .end local v118           #receiver:Landroid/app/IThumbnailReceiver;
    :cond_3db
    const/4 v5, 0x0

    move-object/from16 v118, v5

    goto :goto_39f

    .line 358
    .restart local v92       #list:Ljava/util/List;
    .restart local v118       #receiver:Landroid/app/IThumbnailReceiver;
    :cond_3df
    const/4 v5, -0x1

    move/from16 v69, v5

    goto :goto_3b6

    .line 366
    .restart local v69       #N:I
    .restart local v85       #i:I
    :cond_3e3
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 370
    .end local v39           #fl:I
    .end local v69           #N:I
    .end local v85           #i:I
    .end local v92           #list:Ljava/util/List;
    .end local v98           #maxNum:I
    .end local v118           #receiver:Landroid/app/IThumbnailReceiver;
    .end local v119           #receiverBinder:Landroid/os/IBinder;
    :pswitch_3e6
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 372
    .restart local v98       #maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .line 373
    .restart local v39       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v98

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getRecentTasks(II)Ljava/util/List;

    move-result-object v94

    .line 375
    .local v94, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    move-object/from16 v0, p3

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 377
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 381
    .end local v39           #fl:I
    .end local v94           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v98           #maxNum:I
    :pswitch_40d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 383
    .restart local v98       #maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .line 384
    .restart local v39       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v98

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getServices(II)Ljava/util/List;

    move-result-object v92

    .line 385
    .restart local v92       #list:Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    if-eqz v92, :cond_457

    invoke-interface/range {v92 .. v92}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v69, v5

    .line 387
    .restart local v69       #N:I
    :goto_432
    move-object/from16 v0, p3

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    const/16 v85, 0x0

    .restart local v85       #i:I
    :goto_43b
    move/from16 v0, v85

    move/from16 v1, v69

    if-ge v0, v1, :cond_45b

    .line 390
    move-object/from16 v0, v92

    move/from16 v1, v85

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 392
    .local v87, info:Landroid/app/ActivityManager$RunningServiceInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v87

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 389
    add-int/lit8 v85, v85, 0x1

    goto :goto_43b

    .line 386
    .end local v69           #N:I
    .end local v85           #i:I
    .end local v87           #info:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_457
    const/4 v5, -0x1

    move/from16 v69, v5

    goto :goto_432

    .line 394
    .restart local v69       #N:I
    .restart local v85       #i:I
    :cond_45b
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 398
    .end local v39           #fl:I
    .end local v69           #N:I
    .end local v85           #i:I
    .end local v92           #list:Ljava/util/List;
    .end local v98           #maxNum:I
    :pswitch_45e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v93

    .line 400
    .local v93, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    move-object/from16 v0, p3

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 402
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 406
    .end local v93           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :pswitch_477
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v95

    .line 408
    .local v95, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    move-object/from16 v0, p3

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 410
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 414
    .end local v95           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :pswitch_490
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v130

    .line 416
    .local v130, task:I
    move-object/from16 v0, p0

    move/from16 v1, v130

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskToFront(I)V

    .line 417
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 422
    .end local v130           #task:I
    :pswitch_4a9
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v130

    .line 424
    .restart local v130       #task:I
    move-object/from16 v0, p0

    move/from16 v1, v130

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskToBack(I)V

    .line 425
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 430
    .end local v130           #task:I
    :pswitch_4c2
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v35

    .line 432
    .restart local v35       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4f0

    const/4 v5, 0x1

    move/from16 v102, v5

    .line 433
    .local v102, nonRoot:Z
    :goto_4d7
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v102

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v122

    .line 434
    .local v122, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    if-eqz v122, :cond_4f4

    const/4 v5, 0x1

    :goto_4e7
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 432
    .end local v102           #nonRoot:Z
    .end local v122           #res:Z
    :cond_4f0
    const/4 v5, 0x0

    move/from16 v102, v5

    goto :goto_4d7

    .line 435
    .restart local v102       #nonRoot:Z
    .restart local v122       #res:Z
    :cond_4f4
    const/4 v5, 0x0

    goto :goto_4e7

    .line 440
    .end local v35           #token:Landroid/os/IBinder;
    .end local v102           #nonRoot:Z
    .end local v122           #res:Z
    :pswitch_4f6
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v130

    .line 442
    .restart local v130       #task:I
    move-object/from16 v0, p0

    move/from16 v1, v130

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskBackwards(I)V

    .line 443
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 448
    .end local v130           #task:I
    :pswitch_50f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v35

    .line 450
    .restart local v35       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_53f

    const/4 v5, 0x1

    move/from16 v104, v5

    .line 451
    .local v104, onlyRoot:Z
    :goto_524
    if-eqz v35, :cond_543

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v104

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v5

    move/from16 v122, v5

    .line 453
    .local v122, res:I
    :goto_532
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    move-object/from16 v0, p3

    move/from16 v1, v122

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 450
    .end local v104           #onlyRoot:Z
    .end local v122           #res:I
    :cond_53f
    const/4 v5, 0x0

    move/from16 v104, v5

    goto :goto_524

    .line 451
    .restart local v104       #onlyRoot:Z
    :cond_543
    const/4 v5, -0x1

    move/from16 v122, v5

    goto :goto_532

    .line 459
    .end local v35           #token:Landroid/os/IBinder;
    .end local v104           #onlyRoot:Z
    :pswitch_547
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v35

    .line 461
    .restart local v35       #token:Landroid/os/IBinder;
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v41

    .line 462
    .local v41, className:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->finishOtherInstances(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 468
    .end local v35           #token:Landroid/os/IBinder;
    .end local v41           #className:Landroid/content/ComponentName;
    :pswitch_566
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v35

    .line 470
    .restart local v35       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5a1

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/graphics/Bitmap;

    move-object/from16 v131, p1

    .line 472
    .restart local v131       #thumbnail:Landroid/graphics/Bitmap;
    :goto_585
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Ljava/lang/CharSequence;

    .line 473
    .restart local v80       #description:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v131

    move-object/from16 v3, v80

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->reportThumbnail(Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 474
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 470
    .end local v80           #description:Ljava/lang/CharSequence;
    .end local v131           #thumbnail:Landroid/graphics/Bitmap;
    .restart local p1
    :cond_5a1
    const/4 v5, 0x0

    move-object/from16 v131, v5

    goto :goto_585

    .line 479
    .end local v35           #token:Landroid/os/IBinder;
    :pswitch_5a5
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v72

    .line 481
    .restart local v72       #b:Landroid/os/IBinder;
    invoke-static/range {v72 .. v72}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 482
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v101

    .line 483
    .local v101, name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v101

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v79

    .line 484
    .local v79, cph:Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    if-eqz v79, :cond_5da

    .line 486
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    const/4 v5, 0x0

    move-object/from16 v0, v79

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 491
    :goto_5d7
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 489
    :cond_5da
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5d7

    .line 495
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v72           #b:Landroid/os/IBinder;
    .end local v79           #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v101           #name:Ljava/lang/String;
    :pswitch_5e2
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v72

    .line 497
    .restart local v72       #b:Landroid/os/IBinder;
    invoke-static/range {v72 .. v72}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 498
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v113

    .line 500
    .local v113, providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v113

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 501
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 506
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v72           #b:Landroid/os/IBinder;
    .end local v113           #providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    :pswitch_609
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v72

    .line 508
    .restart local v72       #b:Landroid/os/IBinder;
    invoke-static/range {v72 .. v72}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 509
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v101

    .line 510
    .restart local v101       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v101

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 516
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v72           #b:Landroid/os/IBinder;
    .end local v101           #name:Ljava/lang/String;
    :pswitch_62b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v72

    .line 518
    .restart local v72       #b:Landroid/os/IBinder;
    invoke-static/range {v72 .. v72}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 519
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/Intent;

    .line 520
    .local v36, service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 521
    .restart local v8       #resolvedType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v36

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v77

    .line 522
    .restart local v77       #cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    move-object/from16 v0, v77

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 524
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 528
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v36           #service:Landroid/content/Intent;
    .end local v72           #b:Landroid/os/IBinder;
    .end local v77           #cn:Landroid/content/ComponentName;
    :pswitch_661
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v72

    .line 530
    .restart local v72       #b:Landroid/os/IBinder;
    invoke-static/range {v72 .. v72}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 531
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/Intent;

    .line 532
    .restart local v36       #service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 533
    .restart local v8       #resolvedType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v36

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)I

    move-result v122

    .line 534
    .restart local v122       #res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    move-object/from16 v0, p3

    move/from16 v1, v122

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 540
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v36           #service:Landroid/content/Intent;
    .end local v72           #b:Landroid/os/IBinder;
    .end local v122           #res:I
    :pswitch_697
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v41

    .line 542
    .restart local v41       #className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v35

    .line 543
    .restart local v35       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v127

    .line 544
    .local v127, startId:I
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v35

    move/from16 v3, v127

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v122

    .line 545
    .local v122, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    if-eqz v122, :cond_6c6

    const/4 v5, 0x1

    :goto_6bd
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 546
    :cond_6c6
    const/4 v5, 0x0

    goto :goto_6bd

    .line 551
    .end local v35           #token:Landroid/os/IBinder;
    .end local v41           #className:Landroid/content/ComponentName;
    .end local v122           #res:Z
    .end local v127           #startId:I
    :pswitch_6c8
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v41

    .line 553
    .restart local v41       #className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v35

    .line 554
    .restart local v35       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6f2

    const/4 v5, 0x1

    move/from16 v89, v5

    .line 555
    .local v89, isForeground:Z
    :goto_6e1
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v35

    move/from16 v3, v89

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V

    .line 556
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 554
    .end local v89           #isForeground:Z
    :cond_6f2
    const/4 v5, 0x0

    move/from16 v89, v5

    goto :goto_6e1

    .line 561
    .end local v35           #token:Landroid/os/IBinder;
    .end local v41           #className:Landroid/content/ComponentName;
    :pswitch_6f6
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v72

    .line 563
    .restart local v72       #b:Landroid/os/IBinder;
    invoke-static/range {v72 .. v72}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 564
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v35

    .line 565
    .restart local v35       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/Intent;

    .line 566
    .restart local v36       #service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 567
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v72

    .line 568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .line 569
    .restart local v39       #fl:I
    invoke-static/range {v72 .. v72}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v38

    .local v38, conn:Landroid/app/IServiceConnection;
    move-object/from16 v33, p0

    move-object/from16 v34, v6

    move-object/from16 v37, v8

    .line 570
    invoke-virtual/range {v33 .. v39}, Landroid/app/ActivityManagerNative;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;I)I

    move-result v122

    .line 571
    .local v122, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    move-object/from16 v0, p3

    move/from16 v1, v122

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 577
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v35           #token:Landroid/os/IBinder;
    .end local v36           #service:Landroid/content/Intent;
    .end local v38           #conn:Landroid/app/IServiceConnection;
    .end local v39           #fl:I
    .end local v72           #b:Landroid/os/IBinder;
    .end local v122           #res:I
    :pswitch_73c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v72

    .line 579
    .restart local v72       #b:Landroid/os/IBinder;
    invoke-static/range {v72 .. v72}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v38

    .line 580
    .restart local v38       #conn:Landroid/app/IServiceConnection;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v122

    .line 581
    .local v122, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    if-eqz v122, :cond_763

    const/4 v5, 0x1

    :goto_75a
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 582
    :cond_763
    const/4 v5, 0x0

    goto :goto_75a

    .line 587
    .end local v38           #conn:Landroid/app/IServiceConnection;
    .end local v72           #b:Landroid/os/IBinder;
    .end local v122           #res:Z
    :pswitch_765
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v35

    .line 589
    .restart local v35       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 590
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 591
    .local v36, service:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object v2, v7

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 592
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 597
    .end local v7           #intent:Landroid/content/Intent;
    .end local v35           #token:Landroid/os/IBinder;
    .end local v36           #service:Landroid/os/IBinder;
    :pswitch_790
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v35

    .line 599
    .restart local v35       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 600
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7c0

    const/4 v5, 0x1

    move/from16 v81, v5

    .line 601
    .local v81, doRebind:Z
    :goto_7b0
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object v2, v7

    move/from16 v3, v81

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 602
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 600
    .end local v81           #doRebind:Z
    :cond_7c0
    const/4 v5, 0x0

    move/from16 v81, v5

    goto :goto_7b0

    .line 607
    .end local v7           #intent:Landroid/content/Intent;
    .end local v35           #token:Landroid/os/IBinder;
    :pswitch_7c4
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v35

    .line 609
    .restart local v35       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->serviceDoneExecuting(Landroid/os/IBinder;)V

    .line 610
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 615
    .end local v35           #token:Landroid/os/IBinder;
    :pswitch_7dd
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v41

    .line 617
    .restart local v41       #className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v42

    .line 618
    .local v42, profileFile:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .line 619
    .restart local v39       #fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v44

    .line 620
    .local v44, arguments:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v72

    .line 621
    .restart local v72       #b:Landroid/os/IBinder;
    invoke-static/range {v72 .. v72}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v45

    .local v45, w:Landroid/app/IInstrumentationWatcher;
    move-object/from16 v40, p0

    move/from16 v43, v39

    .line 622
    invoke-virtual/range {v40 .. v45}, Landroid/app/ActivityManagerNative;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;)Z

    move-result v122

    .line 623
    .restart local v122       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    if-eqz v122, :cond_814

    const/4 v5, 0x1

    :goto_80b
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 624
    :cond_814
    const/4 v5, 0x0

    goto :goto_80b

    .line 630
    .end local v39           #fl:I
    .end local v41           #className:Landroid/content/ComponentName;
    .end local v42           #profileFile:Ljava/lang/String;
    .end local v44           #arguments:Landroid/os/Bundle;
    .end local v45           #w:Landroid/app/IInstrumentationWatcher;
    .end local v72           #b:Landroid/os/IBinder;
    .end local v122           #res:Z
    :pswitch_816
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 631
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v72

    .line 632
    .restart local v72       #b:Landroid/os/IBinder;
    invoke-static/range {v72 .. v72}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 633
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 634
    .restart local v21       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v124

    .line 635
    .local v124, results:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v21

    move-object/from16 v3, v124

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 636
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 641
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v21           #resultCode:I
    .end local v72           #b:Landroid/os/IBinder;
    .end local v124           #results:Landroid/os/Bundle;
    :pswitch_83e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v78

    .line 643
    .local v78, config:Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    const/4 v5, 0x0

    move-object/from16 v0, v78

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 645
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 649
    .end local v78           #config:Landroid/content/res/Configuration;
    :pswitch_859
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Landroid/content/res/Configuration;

    .line 651
    .restart local v78       #config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 652
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 657
    .end local v78           #config:Landroid/content/res/Configuration;
    :pswitch_879
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v35

    .line 659
    .restart local v35       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v121

    .line 660
    .local v121, requestedOrientation:I
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v121

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 661
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 666
    .end local v35           #token:Landroid/os/IBinder;
    .end local v121           #requestedOrientation:I
    :pswitch_898
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v35

    .line 668
    .restart local v35       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v120

    .line 669
    .local v120, req:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    move-object/from16 v0, p3

    move/from16 v1, v120

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 675
    .end local v35           #token:Landroid/os/IBinder;
    .end local v120           #req:I
    :pswitch_8b9
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v35

    .line 677
    .restart local v35       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v77

    .line 678
    .restart local v77       #cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    move-object/from16 v0, v77

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 680
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 684
    .end local v35           #token:Landroid/os/IBinder;
    .end local v77           #cn:Landroid/content/ComponentName;
    :pswitch_8da
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v35

    .line 686
    .restart local v35       #token:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 688
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 692
    .end local v35           #token:Landroid/os/IBinder;
    :pswitch_8fa
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .line 694
    .local v47, type:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v48

    .line 695
    .local v48, packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v35

    .line 696
    .restart local v35       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 697
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 698
    .restart local v13       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_951

    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/content/Intent;

    move-object/from16 v52, p1

    .line 700
    .local v52, requestIntent:Landroid/content/Intent;
    :goto_929
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 701
    .local v53, requestResolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .restart local v39       #fl:I
    move-object/from16 v46, p0

    move-object/from16 v49, v35

    move-object/from16 v50, v12

    move/from16 v51, v13

    move/from16 v54, v39

    .line 702
    invoke-virtual/range {v46 .. v54}, Landroid/app/ActivityManagerNative;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;I)Landroid/content/IIntentSender;

    move-result-object v122

    .line 705
    .local v122, res:Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    if-eqz v122, :cond_955

    invoke-interface/range {v122 .. v122}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :goto_948
    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 707
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 698
    .end local v39           #fl:I
    .end local v52           #requestIntent:Landroid/content/Intent;
    .end local v53           #requestResolvedType:Ljava/lang/String;
    .end local v122           #res:Landroid/content/IIntentSender;
    .restart local p1
    :cond_951
    const/4 v5, 0x0

    move-object/from16 v52, v5

    goto :goto_929

    .line 706
    .end local p1
    .restart local v39       #fl:I
    .restart local v52       #requestIntent:Landroid/content/Intent;
    .restart local v53       #requestResolvedType:Ljava/lang/String;
    .restart local v122       #res:Landroid/content/IIntentSender;
    :cond_955
    const/4 v5, 0x0

    goto :goto_948

    .line 711
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v35           #token:Landroid/os/IBinder;
    .end local v39           #fl:I
    .end local v47           #type:I
    .end local v48           #packageName:Ljava/lang/String;
    .end local v52           #requestIntent:Landroid/content/Intent;
    .end local v53           #requestResolvedType:Ljava/lang/String;
    .end local v122           #res:Landroid/content/IIntentSender;
    .restart local p1
    :pswitch_957
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v115

    .line 714
    .local v115, r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v115

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 715
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 720
    .end local v115           #r:Landroid/content/IIntentSender;
    :pswitch_974
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v115

    .line 723
    .restart local v115       #r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v115

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v122

    .line 724
    .local v122, res:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    move-object/from16 v0, p3

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 726
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 730
    .end local v115           #r:Landroid/content/IIntentSender;
    .end local v122           #res:Ljava/lang/String;
    :pswitch_999
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v97

    .line 732
    .local v97, max:I
    move-object/from16 v0, p0

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setProcessLimit(I)V

    .line 733
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 738
    .end local v97           #max:I
    :pswitch_9b2
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 739
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessLimit()I

    move-result v91

    .line 740
    .local v91, limit:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    move-object/from16 v0, p3

    move/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 742
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 746
    .end local v91           #limit:I
    :pswitch_9cb
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v35

    .line 748
    .restart local v35       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v108

    .line 749
    .local v108, pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9f5

    const/4 v5, 0x1

    move/from16 v89, v5

    .line 750
    .restart local v89       #isForeground:Z
    :goto_9e4
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v108

    move/from16 v3, v89

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 751
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 749
    .end local v89           #isForeground:Z
    :cond_9f5
    const/4 v5, 0x0

    move/from16 v89, v5

    goto :goto_9e4

    .line 756
    .end local v35           #token:Landroid/os/IBinder;
    .end local v108           #pid:I
    :pswitch_9f9
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 757
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 758
    .restart local v24       #perm:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v108

    .line 759
    .restart local v108       #pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 760
    .local v62, uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v108

    move/from16 v3, v62

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->checkPermission(Ljava/lang/String;II)I

    move-result v122

    .line 761
    .local v122, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    move-object/from16 v0, p3

    move/from16 v1, v122

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 767
    .end local v24           #perm:Ljava/lang/String;
    .end local v62           #uid:I
    .end local v108           #pid:I
    .end local v122           #res:I
    :pswitch_a26
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v132

    check-cast v132, Landroid/net/Uri;

    .line 769
    .local v132, uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v108

    .line 770
    .restart local v108       #pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 771
    .restart local v62       #uid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 772
    .local v100, mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v132

    move/from16 v2, v108

    move/from16 v3, v62

    move/from16 v4, v100

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v122

    .line 773
    .restart local v122       #res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    move-object/from16 v0, p3

    move/from16 v1, v122

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 775
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 779
    .end local v62           #uid:I
    .end local v100           #mode:I
    .end local v108           #pid:I
    .end local v122           #res:I
    .end local v132           #uri:Landroid/net/Uri;
    :pswitch_a60
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v48

    .line 781
    .restart local v48       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v103

    .line 783
    .local v103, observer:Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v103

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v122

    .line 784
    .local v122, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    if-eqz v122, :cond_a8d

    const/4 v5, 0x1

    :goto_a84
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 786
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 785
    :cond_a8d
    const/4 v5, 0x0

    goto :goto_a84

    .line 790
    .end local v48           #packageName:Ljava/lang/String;
    .end local v103           #observer:Landroid/content/pm/IPackageDataObserver;
    .end local v122           #res:Z
    :pswitch_a8f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v72

    .line 792
    .restart local v72       #b:Landroid/os/IBinder;
    invoke-static/range {v72 .. v72}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 793
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v129

    .line 794
    .local v129, targetPkg:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v132

    check-cast v132, Landroid/net/Uri;

    .line 795
    .restart local v132       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 796
    .restart local v100       #mode:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v129

    move-object/from16 v3, v132

    move/from16 v4, v100

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 797
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 802
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v72           #b:Landroid/os/IBinder;
    .end local v100           #mode:I
    .end local v129           #targetPkg:Ljava/lang/String;
    .end local v132           #uri:Landroid/net/Uri;
    :pswitch_ac4
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 803
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v72

    .line 804
    .restart local v72       #b:Landroid/os/IBinder;
    invoke-static/range {v72 .. v72}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 805
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v132

    check-cast v132, Landroid/net/Uri;

    .line 806
    .restart local v132       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 807
    .restart local v100       #mode:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v132

    move/from16 v3, v100

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;I)V

    .line 808
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 813
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v72           #b:Landroid/os/IBinder;
    .end local v100           #mode:I
    .end local v132           #uri:Landroid/net/Uri;
    :pswitch_af3
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 814
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v72

    .line 815
    .restart local v72       #b:Landroid/os/IBinder;
    invoke-static/range {v72 .. v72}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 816
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b1a

    const/4 v5, 0x1

    move/from16 v133, v5

    .line 817
    .local v133, waiting:Z
    :goto_b0c
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v133

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 818
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 819
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 816
    .end local v133           #waiting:Z
    :cond_b1a
    const/4 v5, 0x0

    move/from16 v133, v5

    goto :goto_b0c

    .line 823
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v72           #b:Landroid/os/IBinder;
    :pswitch_b1e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    new-instance v99, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v99 .. v99}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 825
    .local v99, mi:Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 826
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    const/4 v5, 0x0

    move-object/from16 v0, v99

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 828
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 832
    .end local v99           #mi:Landroid/app/ActivityManager$MemoryInfo;
    :pswitch_b41
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 833
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->unhandledBack()V

    .line 834
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 839
    :pswitch_b52
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 840
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v132

    .line 841
    .restart local v132       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v132

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v107

    .line 842
    .local v107, pfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    if-eqz v107, :cond_b82

    .line 844
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 845
    const/4 v5, 0x1

    move-object/from16 v0, v107

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 849
    :goto_b7f
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 847
    :cond_b82
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b7f

    .line 853
    .end local v107           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v132           #uri:Landroid/net/Uri;
    :pswitch_b8a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 854
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->goingToSleep()V

    .line 855
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 860
    :pswitch_b9b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 861
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->wakingUp()V

    .line 862
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 867
    :pswitch_bac
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v111

    .line 869
    .local v111, pn:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_bdb

    const/4 v5, 0x1

    move/from16 v135, v5

    .line 870
    .local v135, wfd:Z
    :goto_bc1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_bdf

    const/4 v5, 0x1

    move/from16 v106, v5

    .line 871
    .local v106, per:Z
    :goto_bca
    move-object/from16 v0, p0

    move-object/from16 v1, v111

    move/from16 v2, v135

    move/from16 v3, v106

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 872
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 869
    .end local v106           #per:Z
    .end local v135           #wfd:Z
    :cond_bdb
    const/4 v5, 0x0

    move/from16 v135, v5

    goto :goto_bc1

    .line 870
    .restart local v135       #wfd:Z
    :cond_bdf
    const/4 v5, 0x0

    move/from16 v106, v5

    goto :goto_bca

    .line 877
    .end local v111           #pn:Ljava/lang/String;
    .end local v135           #wfd:Z
    :pswitch_be3
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c01

    const/4 v5, 0x1

    move/from16 v82, v5

    .line 879
    .local v82, enabled:Z
    :goto_bf4
    move-object/from16 v0, p0

    move/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAlwaysFinish(Z)V

    .line 880
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 881
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 878
    .end local v82           #enabled:Z
    :cond_c01
    const/4 v5, 0x0

    move/from16 v82, v5

    goto :goto_bf4

    .line 885
    :pswitch_c05
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 886
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v134

    .line 888
    .local v134, watcher:Landroid/app/IActivityController;
    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setActivityController(Landroid/app/IActivityController;)V

    .line 889
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 893
    .end local v134           #watcher:Landroid/app/IActivityController;
    :pswitch_c1f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->enterSafeMode()V

    .line 895
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 900
    :pswitch_c30
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 901
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v88

    .line 903
    .local v88, is:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/content/IIntentSender;)V

    .line 904
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 909
    .end local v88           #is:Landroid/content/IIntentSender;
    :pswitch_c4d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 910
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v109

    .line 911
    .local v109, pids:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killPidsForMemory([I)Z

    move-result v122

    .line 912
    .restart local v122       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 913
    if-eqz v122, :cond_c70

    const/4 v5, 0x1

    :goto_c67
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 914
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 913
    :cond_c70
    const/4 v5, 0x0

    goto :goto_c67

    .line 918
    .end local v109           #pids:[I
    .end local v122           #res:Z
    :pswitch_c72
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 919
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v72

    .line 920
    .restart local v72       #b:Landroid/os/IBinder;
    invoke-static/range {v72 .. v72}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 921
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v114

    .line 922
    .local v114, pss:I
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v114

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->reportPss(Landroid/app/IApplicationThread;I)V

    .line 923
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 928
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v72           #b:Landroid/os/IBinder;
    .end local v114           #pss:I
    :pswitch_c94
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 929
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v110

    .line 930
    .local v110, pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v76

    .line 931
    .local v76, cls:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v70

    .line 932
    .local v70, action:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v86

    .line 933
    .local v86, indata:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move-object/from16 v2, v76

    move-object/from16 v3, v70

    move-object/from16 v4, v86

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->startRunning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 935
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 939
    .end local v70           #action:Ljava/lang/String;
    .end local v76           #cls:Ljava/lang/String;
    .end local v86           #indata:Ljava/lang/String;
    .end local v110           #pkg:Ljava/lang/String;
    :pswitch_cbf
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 940
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->systemReady()V

    .line 941
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 946
    :pswitch_cd0
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 948
    .local v6, app:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .line 949
    .restart local v39       #fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v57

    .line 950
    .local v57, tag:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v58

    .line 951
    .local v58, shortMsg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v59

    .line 952
    .local v59, longMsg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v60

    .local v60, crashData:[B
    move-object/from16 v54, p0

    move-object/from16 v55, v6

    move/from16 v56, v39

    .line 953
    invoke-virtual/range {v54 .. v60}, Landroid/app/ActivityManagerNative;->handleApplicationError(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v122

    .line 955
    .local v122, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 956
    move-object/from16 v0, p3

    move/from16 v1, v122

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 957
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 961
    .end local v6           #app:Landroid/os/IBinder;
    .end local v39           #fl:I
    .end local v57           #tag:Ljava/lang/String;
    .end local v58           #shortMsg:Ljava/lang/String;
    .end local v59           #longMsg:Ljava/lang/String;
    .end local v60           #crashData:[B
    .end local v122           #res:I
    :pswitch_d07
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 962
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v125

    .line 963
    .local v125, sig:I
    move-object/from16 v0, p0

    move/from16 v1, v125

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->signalPersistentProcesses(I)V

    .line 964
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 969
    .end local v125           #sig:I
    :pswitch_d20
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 970
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v48

    .line 971
    .restart local v48       #packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->restartPackage(Ljava/lang/String;)V

    .line 972
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 973
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 977
    .end local v48           #packageName:Ljava/lang/String;
    :pswitch_d39
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 978
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v78

    .line 979
    .local v78, config:Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 980
    const/4 v5, 0x0

    move-object/from16 v0, v78

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 981
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 985
    .end local v78           #config:Landroid/content/pm/ConfigurationInfo;
    :pswitch_d54
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 986
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v112

    .line 987
    .local v112, process:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d96

    const/4 v5, 0x1

    move/from16 v126, v5

    .line 988
    .local v126, start:Z
    :goto_d69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v105

    .line 989
    .local v105, path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d9a

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    move-object/from16 v83, v5

    .line 991
    .local v83, fd:Landroid/os/ParcelFileDescriptor;
    :goto_d79
    move-object/from16 v0, p0

    move-object/from16 v1, v112

    move/from16 v2, v126

    move-object/from16 v3, v105

    move-object/from16 v4, v83

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->profileControl(Ljava/lang/String;ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v122

    .line 992
    .local v122, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 993
    if-eqz v122, :cond_d9e

    const/4 v5, 0x1

    :goto_d8d
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 994
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 987
    .end local v83           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v105           #path:Ljava/lang/String;
    .end local v122           #res:Z
    .end local v126           #start:Z
    :cond_d96
    const/4 v5, 0x0

    move/from16 v126, v5

    goto :goto_d69

    .line 989
    .restart local v105       #path:Ljava/lang/String;
    .restart local v126       #start:Z
    :cond_d9a
    const/4 v5, 0x0

    move-object/from16 v83, v5

    goto :goto_d79

    .line 993
    .restart local v83       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v122       #res:Z
    :cond_d9e
    const/4 v5, 0x0

    goto :goto_d8d

    .line 998
    .end local v83           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v105           #path:Ljava/lang/String;
    .end local v112           #process:Ljava/lang/String;
    .end local v122           #res:Z
    .end local v126           #start:Z
    :pswitch_da0
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 999
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->shutdown(I)Z

    move-result v122

    .line 1000
    .restart local v122       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    if-eqz v122, :cond_dc2

    const/4 v5, 0x1

    :goto_db9
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1002
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1001
    :cond_dc2
    const/4 v5, 0x0

    goto :goto_db9

    .line 1006
    .end local v122           #res:Z
    :pswitch_dc4
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1007
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopAppSwitches()V

    .line 1008
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1009
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1013
    :pswitch_dd5
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->resumeAppSwitches()V

    .line 1015
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1016
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1020
    :pswitch_de6
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1021
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/Intent;

    .line 1022
    .local v36, service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1023
    .restart local v8       #resolvedType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->peekService(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v74

    .line 1024
    .local v74, binder:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    move-object/from16 v0, p3

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1026
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1030
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v36           #service:Landroid/content/Intent;
    .end local v74           #binder:Landroid/os/IBinder;
    :pswitch_e13
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1031
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Landroid/content/pm/ApplicationInfo;

    .line 1032
    .local v87, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v73

    .line 1033
    .local v73, backupRestoreMode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v128

    .line 1034
    .local v128, success:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    if-eqz v128, :cond_e43

    const/4 v5, 0x1

    :goto_e3a
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1036
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1035
    :cond_e43
    const/4 v5, 0x0

    goto :goto_e3a

    .line 1040
    .end local v73           #backupRestoreMode:I
    .end local v87           #info:Landroid/content/pm/ApplicationInfo;
    .end local v128           #success:Z
    :pswitch_e45
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1041
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v48

    .line 1042
    .restart local v48       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v71

    .line 1043
    .local v71, agent:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v71

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1044
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1045
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1049
    .end local v48           #packageName:Ljava/lang/String;
    .end local v71           #agent:Landroid/os/IBinder;
    :pswitch_e64
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1050
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Landroid/content/pm/ApplicationInfo;

    .line 1051
    .restart local v87       #info:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1052
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1053
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1057
    .end local v87           #info:Landroid/content/pm/ApplicationInfo;
    :pswitch_e84
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1058
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IActivityWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityWatcher;

    move-result-object v134

    .line 1060
    .local v134, watcher:Landroid/app/IActivityWatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerActivityWatcher(Landroid/app/IActivityWatcher;)V

    .line 1061
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1065
    .end local v134           #watcher:Landroid/app/IActivityWatcher;
    :pswitch_e9e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1066
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IActivityWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityWatcher;

    move-result-object v134

    .line 1068
    .restart local v134       #watcher:Landroid/app/IActivityWatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterActivityWatcher(Landroid/app/IActivityWatcher;)V

    .line 1069
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1074
    .end local v134           #watcher:Landroid/app/IActivityWatcher;
    :pswitch_eb8
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1075
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 1076
    .restart local v62       #uid:I
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 1077
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1078
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 1079
    .local v11, resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1080
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1081
    .restart local v13       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f06

    const/4 v5, 0x1

    move v14, v5

    .restart local v14       #onlyIfNeeded:Z
    :goto_ee7
    move-object/from16 v61, p0

    move-object/from16 v63, v7

    move-object/from16 v64, v8

    move-object/from16 v65, v11

    move-object/from16 v66, v12

    move/from16 v67, v13

    move/from16 v68, v14

    .line 1082
    invoke-virtual/range {v61 .. v68}, Landroid/app/ActivityManagerNative;->startActivityInPackage(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IZ)I

    move-result v123

    .line 1084
    .local v123, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1085
    move-object/from16 v0, p3

    move/from16 v1, v123

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1086
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1081
    .end local v14           #onlyIfNeeded:Z
    .end local v123           #result:I
    :cond_f06
    const/4 v5, 0x0

    move v14, v5

    goto :goto_ee7

    .line 1090
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v62           #uid:I
    :pswitch_f09
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1091
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v110

    .line 1092
    .restart local v110       #pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 1093
    .restart local v62       #uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationWithUid(Ljava/lang/String;I)V

    .line 1094
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1099
    .end local v62           #uid:I
    .end local v110           #pkg:Ljava/lang/String;
    :pswitch_f28
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v116

    .line 1101
    .local v116, reason:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v116

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->closeSystemDialogs(Ljava/lang/String;)V

    .line 1102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1103
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1107
    .end local v116           #reason:Ljava/lang/String;
    :pswitch_f41
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v125

    .line 1109
    .restart local v125       #sig:I
    move-object/from16 v0, p0

    move/from16 v1, v125

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->signalAllProcesses(I)V

    .line 1110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1111
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 127
    :pswitch_data_f5a
    .packed-switch 0x1
        :pswitch_c94
        :pswitch_cd0
        :pswitch_8
        :pswitch_b41
        :pswitch_b52
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_9b
        :pswitch_fe
        :pswitch_15f
        :pswitch_181
        :pswitch_1f9
        :pswitch_227
        :pswitch_289
        :pswitch_2a7
        :pswitch_2c2
        :pswitch_2e1
        :pswitch_339
        :pswitch_362
        :pswitch_383
        :pswitch_490
        :pswitch_4a9
        :pswitch_4f6
        :pswitch_50f
        :pswitch_566
        :pswitch_5a5
        :pswitch_5e2
        :pswitch_25f
        :pswitch_db
        :pswitch_cbf
        :pswitch_62b
        :pswitch_661
        :pswitch_6f6
        :pswitch_73c
        :pswitch_765
        :pswitch_547
        :pswitch_b8a
        :pswitch_b9b
        :pswitch_bac
        :pswitch_be3
        :pswitch_7dd
        :pswitch_816
        :pswitch_83e
        :pswitch_859
        :pswitch_697
        :pswitch_8b9
        :pswitch_8da
        :pswitch_999
        :pswitch_9b2
        :pswitch_9f9
        :pswitch_a26
        :pswitch_a8f
        :pswitch_ac4
        :pswitch_c05
        :pswitch_af3
        :pswitch_d07
        :pswitch_3e6
        :pswitch_7c4
        :pswitch_320
        :pswitch_8fa
        :pswitch_957
        :pswitch_974
        :pswitch_c1f
        :pswitch_6a
        :pswitch_c30
        :pswitch_609
        :pswitch_879
        :pswitch_898
        :pswitch_790
        :pswitch_9cb
        :pswitch_6c8
        :pswitch_4c2
        :pswitch_b1e
        :pswitch_45e
        :pswitch_a60
        :pswitch_d20
        :pswitch_c4d
        :pswitch_40d
        :pswitch_c72
        :pswitch_477
        :pswitch_d39
        :pswitch_de6
        :pswitch_d54
        :pswitch_da0
        :pswitch_dc4
        :pswitch_dd5
        :pswitch_e13
        :pswitch_e45
        :pswitch_e64
        :pswitch_e84
        :pswitch_e9e
        :pswitch_eb8
        :pswitch_f09
        :pswitch_f28
        :pswitch_f41
    .end packed-switch
.end method

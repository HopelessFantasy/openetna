.class public abstract Landroid/app/ApplicationThreadNative;
.super Landroid/os/Binder;
.source "ApplicationThreadNative.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 62
    const-string v0, "android.app.IApplicationThread"

    invoke-virtual {p0, p0, v0}, Landroid/app/ApplicationThreadNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;
    .registers 3
    .parameter "obj"

    .prologue
    .line 49
    if-nez p0, :cond_4

    .line 50
    const/4 v1, 0x0

    .line 58
    :goto_3
    return-object v1

    .line 52
    :cond_4
    const-string v1, "android.app.IApplicationThread"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IApplicationThread;

    .line 54
    .local v0, in:Landroid/app/IApplicationThread;
    if-eqz v0, :cond_10

    move-object v1, v0

    .line 55
    goto :goto_3

    .line 58
    :cond_10
    new-instance v1, Landroid/app/ApplicationThreadProxy;

    invoke-direct {v1, p0}, Landroid/app/ApplicationThreadProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 374
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 67
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
    .line 68
    packed-switch p1, :pswitch_data_494

    .line 369
    :pswitch_3
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_7
    return v5

    .line 71
    :pswitch_8
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 73
    .local v7, b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_38

    const/4 v5, 0x1

    move/from16 v51, v5

    .line 74
    .local v51, finished:Z
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3c

    const/4 v5, 0x1

    move/from16 v61, v5

    .line 75
    .local v61, userLeaving:Z
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 76
    .local v19, configChanges:I
    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v51

    move/from16 v3, v61

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->schedulePauseActivity(Landroid/os/IBinder;ZZI)V

    .line 77
    const/4 v5, 0x1

    goto :goto_7

    .line 73
    .end local v19           #configChanges:I
    .end local v51           #finished:Z
    .end local v61           #userLeaving:Z
    :cond_38
    const/4 v5, 0x0

    move/from16 v51, v5

    goto :goto_1d

    .line 74
    .restart local v51       #finished:Z
    :cond_3c
    const/4 v5, 0x0

    move/from16 v61, v5

    goto :goto_26

    .line 82
    .end local v7           #b:Landroid/os/IBinder;
    .end local v51           #finished:Z
    :pswitch_40
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 84
    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_65

    const/4 v5, 0x1

    move/from16 v57, v5

    .line 85
    .local v57, show:Z
    :goto_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 86
    .restart local v19       #configChanges:I
    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v57

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    .line 87
    const/4 v5, 0x1

    goto :goto_7

    .line 84
    .end local v19           #configChanges:I
    .end local v57           #show:Z
    :cond_65
    const/4 v5, 0x0

    move/from16 v57, v5

    goto :goto_55

    .line 92
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_69
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 94
    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_88

    const/4 v5, 0x1

    move/from16 v57, v5

    .line 95
    .restart local v57       #show:Z
    :goto_7e
    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 96
    const/4 v5, 0x1

    goto :goto_7

    .line 94
    .end local v57           #show:Z
    :cond_88
    const/4 v5, 0x0

    move/from16 v57, v5

    goto :goto_7e

    .line 101
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_8c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 103
    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_aa

    const/4 v5, 0x1

    move v14, v5

    .line 104
    .local v14, isForward:Z
    :goto_a0
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleResumeActivity(Landroid/os/IBinder;Z)V

    .line 105
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 103
    .end local v14           #isForward:Z
    :cond_aa
    const/4 v5, 0x0

    move v14, v5

    goto :goto_a0

    .line 110
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_ad
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 112
    .restart local v7       #b:Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v11

    .line 113
    .local v11, ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 114
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 119
    .end local v7           #b:Landroid/os/IBinder;
    .end local v11           #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    :pswitch_cc
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 121
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 122
    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 123
    .local v8, ident:I
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ActivityInfo;

    .line 124
    .local v9, info:Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v10

    .line 125
    .local v10, state:Landroid/os/Bundle;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v11

    .line 126
    .restart local v11       #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v12

    .line 127
    .local v12, pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_120

    const/4 v5, 0x1

    move v13, v5

    .line 128
    .local v13, notResumed:Z
    :goto_110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_123

    const/4 v5, 0x1

    move v14, v5

    .restart local v14       #isForward:Z
    :goto_118
    move-object/from16 v5, p0

    .line 129
    invoke-virtual/range {v5 .. v14}, Landroid/app/ApplicationThreadNative;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZ)V

    .line 131
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 127
    .end local v13           #notResumed:Z
    .end local v14           #isForward:Z
    :cond_120
    const/4 v5, 0x0

    move v13, v5

    goto :goto_110

    .line 128
    .restart local v13       #notResumed:Z
    :cond_123
    const/4 v5, 0x0

    move v14, v5

    goto :goto_118

    .line 136
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #b:Landroid/os/IBinder;
    .end local v8           #ident:I
    .end local v9           #info:Landroid/content/pm/ActivityInfo;
    .end local v10           #state:Landroid/os/Bundle;
    .end local v11           #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v12           #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .end local v13           #notResumed:Z
    :pswitch_126
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 138
    .restart local v7       #b:Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v11

    .line 139
    .restart local v11       #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v12

    .line 140
    .restart local v12       #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 141
    .restart local v19       #configChanges:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_160

    const/4 v5, 0x1

    move v13, v5

    .restart local v13       #notResumed:Z
    :goto_150
    move-object/from16 v15, p0

    move-object/from16 v16, v7

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move/from16 v20, v13

    .line 142
    invoke-virtual/range {v15 .. v20}, Landroid/app/ApplicationThreadNative;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZ)V

    .line 143
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 141
    .end local v13           #notResumed:Z
    :cond_160
    const/4 v5, 0x0

    move v13, v5

    goto :goto_150

    .line 148
    .end local v7           #b:Landroid/os/IBinder;
    .end local v11           #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v12           #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .end local v19           #configChanges:I
    :pswitch_163
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v12

    .line 150
    .restart local v12       #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 151
    .restart local v7       #b:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    .line 152
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 157
    .end local v7           #b:Landroid/os/IBinder;
    .end local v12           #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    :pswitch_182
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 159
    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1a8

    const/4 v5, 0x1

    move/from16 v52, v5

    .line 160
    .local v52, finishing:Z
    :goto_197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 161
    .restart local v19       #configChanges:I
    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v52

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V

    .line 162
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 159
    .end local v19           #configChanges:I
    .end local v52           #finishing:Z
    :cond_1a8
    const/4 v5, 0x0

    move/from16 v52, v5

    goto :goto_197

    .line 167
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_1ac
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 169
    .restart local v6       #intent:Landroid/content/Intent;
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ActivityInfo;

    .line 170
    .restart local v9       #info:Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 171
    .local v23, resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 172
    .local v24, resultData:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v25

    .line 173
    .local v25, resultExtras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1eb

    const/4 v5, 0x1

    move/from16 v26, v5

    .local v26, sync:Z
    :goto_1df
    move-object/from16 v20, p0

    move-object/from16 v21, v6

    move-object/from16 v22, v9

    .line 174
    invoke-virtual/range {v20 .. v26}, Landroid/app/ApplicationThreadNative;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;ILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 176
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 173
    .end local v26           #sync:Z
    :cond_1eb
    const/4 v5, 0x0

    move/from16 v26, v5

    goto :goto_1df

    .line 180
    .end local v6           #intent:Landroid/content/Intent;
    .end local v9           #info:Landroid/content/pm/ActivityInfo;
    .end local v23           #resultCode:I
    .end local v24           #resultData:Ljava/lang/String;
    .end local v25           #resultExtras:Landroid/os/Bundle;
    :pswitch_1ef
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 182
    .local v60, token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ServiceInfo;

    .line 183
    .local v9, info:Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;)V

    .line 184
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 188
    .end local v9           #info:Landroid/content/pm/ServiceInfo;
    .end local v60           #token:Landroid/os/IBinder;
    :pswitch_211
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 190
    .restart local v60       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 191
    .restart local v6       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_23e

    const/4 v5, 0x1

    move/from16 v55, v5

    .line 192
    .local v55, rebind:Z
    :goto_231
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object v2, v6

    move/from16 v3, v55

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 193
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 191
    .end local v55           #rebind:Z
    :cond_23e
    const/4 v5, 0x0

    move/from16 v55, v5

    goto :goto_231

    .line 197
    .end local v6           #intent:Landroid/content/Intent;
    .end local v60           #token:Landroid/os/IBinder;
    :pswitch_242
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 199
    .restart local v60       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 200
    .restart local v6       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 201
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 206
    .end local v6           #intent:Landroid/content/Intent;
    .end local v60           #token:Landroid/os/IBinder;
    :pswitch_264
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 208
    .restart local v60       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .line 209
    .local v59, startId:I
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/content/Intent;

    .line 210
    .local v47, args:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v59

    move-object/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleServiceArgs(Landroid/os/IBinder;ILandroid/content/Intent;)V

    .line 211
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 216
    .end local v47           #args:Landroid/content/Intent;
    .end local v59           #startId:I
    .end local v60           #token:Landroid/os/IBinder;
    :pswitch_28d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 218
    .restart local v60       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleStopService(Landroid/os/IBinder;)V

    .line 219
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 224
    .end local v60           #token:Landroid/os/IBinder;
    :pswitch_2a3
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 226
    .local v28, packageName:Ljava/lang/String;
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 228
    .local v9, info:Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v30

    .line 230
    .local v30, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_30d

    new-instance v5, Landroid/content/ComponentName;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    move-object/from16 v31, v5

    .line 232
    .local v31, testName:Landroid/content/ComponentName;
    :goto_2d3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 233
    .local v32, profileName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v33

    .line 234
    .local v33, testArgs:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 235
    .local v49, binder:Landroid/os/IBinder;
    invoke-static/range {v49 .. v49}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v34

    .line 236
    .local v34, testWatcher:Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    .line 237
    .local v35, testMode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_311

    const/4 v5, 0x1

    move/from16 v36, v5

    .line 238
    .local v36, restrictedBackupMode:Z
    :goto_2f0
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/content/res/Configuration;

    .line 239
    .local v37, config:Landroid/content/res/Configuration;
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v38

    .local v38, services:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    move-object/from16 v27, p0

    move-object/from16 v29, v9

    .line 240
    invoke-virtual/range {v27 .. v38}, Landroid/app/ApplicationThreadNative;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;IZLandroid/content/res/Configuration;Ljava/util/Map;)V

    .line 244
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 230
    .end local v31           #testName:Landroid/content/ComponentName;
    .end local v32           #profileName:Ljava/lang/String;
    .end local v33           #testArgs:Landroid/os/Bundle;
    .end local v34           #testWatcher:Landroid/app/IInstrumentationWatcher;
    .end local v35           #testMode:I
    .end local v36           #restrictedBackupMode:Z
    .end local v37           #config:Landroid/content/res/Configuration;
    .end local v38           #services:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    .end local v49           #binder:Landroid/os/IBinder;
    :cond_30d
    const/4 v5, 0x0

    move-object/from16 v31, v5

    goto :goto_2d3

    .line 237
    .restart local v31       #testName:Landroid/content/ComponentName;
    .restart local v32       #profileName:Ljava/lang/String;
    .restart local v33       #testArgs:Landroid/os/Bundle;
    .restart local v34       #testWatcher:Landroid/app/IInstrumentationWatcher;
    .restart local v35       #testMode:I
    .restart local v49       #binder:Landroid/os/IBinder;
    :cond_311
    const/4 v5, 0x0

    move/from16 v36, v5

    goto :goto_2f0

    .line 249
    .end local v9           #info:Landroid/content/pm/ApplicationInfo;
    .end local v28           #packageName:Ljava/lang/String;
    .end local v30           #providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .end local v31           #testName:Landroid/content/ComponentName;
    .end local v32           #profileName:Ljava/lang/String;
    .end local v33           #testArgs:Landroid/os/Bundle;
    .end local v34           #testWatcher:Landroid/app/IInstrumentationWatcher;
    .end local v35           #testMode:I
    .end local v49           #binder:Landroid/os/IBinder;
    :pswitch_315
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleExit()V

    .line 251
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 256
    :pswitch_323
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 258
    .restart local v7       #b:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->requestThumbnail(Landroid/os/IBinder;)V

    .line 259
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 264
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_338
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/content/res/Configuration;

    .line 266
    .restart local v37       #config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 267
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 271
    .end local v37           #config:Landroid/content/res/Configuration;
    :pswitch_355
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->updateTimeZone()V

    .line 273
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 277
    :pswitch_363
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->processInBackground()V

    .line 279
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 283
    :pswitch_371
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v50

    .line 285
    .local v50, fd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v56

    .line 286
    .local v56, service:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v47

    .line 287
    .local v47, args:[Ljava/lang/String;
    if-eqz v50, :cond_398

    .line 288
    invoke-virtual/range {v50 .. v50}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v56

    move-object/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 290
    :try_start_395
    invoke-virtual/range {v50 .. v50}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_398
    .catch Ljava/io/IOException; {:try_start_395 .. :try_end_398} :catch_491

    .line 294
    :cond_398
    :goto_398
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 298
    .end local v47           #args:[Ljava/lang/String;
    .end local v50           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v56           #service:Landroid/os/IBinder;
    :pswitch_39b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v40

    .line 301
    .local v40, receiver:Landroid/content/IIntentReceiver;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 302
    .restart local v6       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 303
    .restart local v23       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    .line 304
    .local v43, dataStr:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v44

    .line 305
    .local v44, extras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3d7

    const/4 v5, 0x1

    move/from16 v45, v5

    .local v45, ordered:Z
    :goto_3cb
    move-object/from16 v39, p0

    move-object/from16 v41, v6

    move/from16 v42, v23

    .line 306
    invoke-virtual/range {v39 .. v45}, Landroid/app/ApplicationThreadNative;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 308
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 305
    .end local v45           #ordered:Z
    :cond_3d7
    const/4 v5, 0x0

    move/from16 v45, v5

    goto :goto_3cb

    .line 313
    .end local v6           #intent:Landroid/content/Intent;
    .end local v23           #resultCode:I
    .end local v40           #receiver:Landroid/content/IIntentReceiver;
    .end local v43           #dataStr:Ljava/lang/String;
    .end local v44           #extras:Landroid/os/Bundle;
    :pswitch_3db
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleLowMemory()V

    .line 314
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 319
    :pswitch_3e1
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 321
    .restart local v7       #b:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V

    .line 322
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 327
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_3f6
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->requestPss()V

    .line 329
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 334
    :pswitch_404
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_433

    const/4 v5, 0x1

    move/from16 v58, v5

    .line 336
    .local v58, start:Z
    :goto_415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v54

    .line 337
    .local v54, path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_437

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    move-object/from16 v50, v5

    .line 339
    .restart local v50       #fd:Landroid/os/ParcelFileDescriptor;
    :goto_425
    move-object/from16 v0, p0

    move/from16 v1, v58

    move-object/from16 v2, v54

    move-object/from16 v3, v50

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->profilerControl(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 340
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 335
    .end local v50           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v54           #path:Ljava/lang/String;
    .end local v58           #start:Z
    :cond_433
    const/4 v5, 0x0

    move/from16 v58, v5

    goto :goto_415

    .line 337
    .restart local v54       #path:Ljava/lang/String;
    .restart local v58       #start:Z
    :cond_437
    const/4 v5, 0x0

    move-object/from16 v50, v5

    goto :goto_425

    .line 345
    .end local v54           #path:Ljava/lang/String;
    .end local v58           #start:Z
    :pswitch_43b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 347
    .local v53, group:I
    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setSchedulingGroup(I)V

    .line 348
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 353
    .end local v53           #group:I
    :pswitch_451
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/content/pm/ApplicationInfo;

    .line 355
    .local v46, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v48

    .line 356
    .local v48, backupMode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;I)V

    .line 357
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 362
    .end local v46           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v48           #backupMode:I
    :pswitch_474
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/content/pm/ApplicationInfo;

    .line 364
    .restart local v46       #appInfo:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 365
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 291
    .end local v46           #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v47       #args:[Ljava/lang/String;
    .restart local v50       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v56       #service:Landroid/os/IBinder;
    :catch_491
    move-exception v5

    goto/16 :goto_398

    .line 68
    :pswitch_data_494
    .packed-switch 0x1
        :pswitch_8
        :pswitch_3
        :pswitch_40
        :pswitch_69
        :pswitch_8c
        :pswitch_ad
        :pswitch_cc
        :pswitch_163
        :pswitch_182
        :pswitch_1ac
        :pswitch_1ef
        :pswitch_28d
        :pswitch_2a3
        :pswitch_315
        :pswitch_323
        :pswitch_338
        :pswitch_264
        :pswitch_355
        :pswitch_363
        :pswitch_211
        :pswitch_242
        :pswitch_371
        :pswitch_39b
        :pswitch_3db
        :pswitch_3e1
        :pswitch_126
        :pswitch_3f6
        :pswitch_404
        :pswitch_43b
        :pswitch_451
        :pswitch_474
    .end packed-switch
.end method

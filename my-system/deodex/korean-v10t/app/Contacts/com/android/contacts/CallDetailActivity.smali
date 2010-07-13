.class public Lcom/android/contacts/CallDetailActivity;
.super Landroid/app/ListActivity;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/CallDetailActivity$ViewAdapter;,
        Lcom/android/contacts/CallDetailActivity$ViewEntry;
    }
.end annotation


# static fields
.field static final CALLER_NAME_COLUMN_INDEX:I = 0x4

.field static final CALLER_NUMBERTYPE_COLUMN_INDEX:I = 0x5

.field static final CALL_LOG_PROJECTION:[Ljava/lang/String; = null

.field static final CALL_TYPE_COLUMN_INDEX:I = 0x3

.field static final COLUMN_INDEX_ID:I = 0x0

.field static final COLUMN_INDEX_LABEL:I = 0x3

.field static final COLUMN_INDEX_NAME:I = 0x1

.field static final COLUMN_INDEX_NUMBER:I = 0x4

.field static final COLUMN_INDEX_TYPE:I = 0x2

.field static final DATE_COLUMN_INDEX:I = 0x0

.field static final DURATION_COLUMN_INDEX:I = 0x1

.field static final NUMBER_COLUMN_INDEX:I = 0x2

.field static final PHONES_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "CallDetail"


# instance fields
.field private mCallDuration:Landroid/widget/TextView;

.field private mCallTime:Landroid/widget/TextView;

.field private mCallType:Landroid/widget/TextView;

.field private mCallTypeIcon:Landroid/widget/ImageView;

.field mInflater:Landroid/view/LayoutInflater;

.field private mNumber:Ljava/lang/String;

.field mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "date"

    aput-object v1, v0, v3

    const-string v1, "duration"

    aput-object v1, v0, v4

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/CallDetailActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 91
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "person"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "label"

    aput-object v1, v0, v6

    const-string v1, "number"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/contacts/CallDetailActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    .line 388
    return-void
.end method

.method private formatDuration(J)Ljava/lang/String;
    .registers 11
    .parameter "elapsedSeconds"

    .prologue
    const-wide/16 v5, 0x3c

    .line 362
    const-wide/16 v0, 0x0

    .line 363
    .local v0, minutes:J
    const-wide/16 v2, 0x0

    .line 365
    .local v2, seconds:J
    cmp-long v4, p1, v5

    if-ltz v4, :cond_f

    .line 366
    div-long v0, p1, v5

    .line 367
    mul-long v4, v0, v5

    sub-long/2addr p1, v4

    .line 369
    :cond_f
    move-wide v2, p1

    .line 371
    const v4, 0x7f060097

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/contacts/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private updateData(Landroid/net/Uri;)V
    .registers 37
    .parameter "callUri"

    .prologue
    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 153
    .local v4, resolver:Landroid/content/ContentResolver;
    sget-object v6, Lcom/android/contacts/CallDetailActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 155
    .local v16, callCursor:Landroid/database/Cursor;
    if-eqz v16, :cond_43e

    :try_start_11
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_43e

    .line 157
    const/4 v5, 0x2

    move-object/from16 v0, v16

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    .line 158
    const/4 v5, 0x0

    move-object/from16 v0, v16

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 159
    .local v6, date:J
    const/4 v5, 0x1

    move-object/from16 v0, v16

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 160
    .local v23, duration:J
    const/4 v5, 0x3

    move-object/from16 v0, v16

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 162
    .local v20, callType:I
    const/4 v5, 0x4

    move-object/from16 v0, v16

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 163
    .local v27, name:Ljava/lang/String;
    const/4 v5, 0x5

    move-object/from16 v0, v16

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 167
    .local v28, numberType:I
    const/16 v10, 0x17

    move-object/from16 v5, p0

    move-wide v8, v6

    invoke-static/range {v5 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v22

    .line 170
    .local v22, dateClause:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mCallTime:Landroid/widget/TextView;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    const/4 v5, 0x3

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_db

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mCallDuration:Landroid/widget/TextView;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    .end local v6           #date:J
    :goto_70
    const/16 v19, 0x0

    .line 182
    .local v19, callText:Ljava/lang/String;
    packed-switch v20, :pswitch_data_452

    .line 204
    :goto_75
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_163

    .line 205
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v14, actions:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/CallDetailActivity$ViewEntry;>;"
    new-instance v17, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    const-string v6, "tel"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object v7, v0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 209
    .local v17, callIntent:Landroid/content/Intent;
    new-instance v26, Lcom/android/contacts/CallDetailActivity$ViewEntry;

    const v5, 0x108008d

    move-object/from16 v0, v26

    move v1, v5

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/CallDetailActivity$ViewEntry;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    .line 211
    .local v26, entry:Lcom/android/contacts/CallDetailActivity$ViewEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->number:Ljava/lang/String;

    .line 212
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->label:Ljava/lang/String;

    .line 213
    move-object v0, v14

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v15, Lcom/android/contacts/CallDetailActivity$ViewAdapter;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/CallDetailActivity$ViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 216
    .local v15, adapter:Lcom/android/contacts/CallDetailActivity$ViewAdapter;
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/contacts/CallDetailActivity;->setListAdapter(Landroid/widget/ListAdapter;)V
    :try_end_d5
    .catchall {:try_start_11 .. :try_end_d5} :catchall_f6

    .line 355
    if-eqz v16, :cond_da

    .line 356
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 359
    .end local v14           #actions:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/CallDetailActivity$ViewEntry;>;"
    .end local v15           #adapter:Lcom/android/contacts/CallDetailActivity$ViewAdapter;
    .end local v17           #callIntent:Landroid/content/Intent;
    .end local v19           #callText:Ljava/lang/String;
    .end local v20           #callType:I
    .end local v22           #dateClause:Ljava/lang/CharSequence;
    .end local v23           #duration:J
    .end local v26           #entry:Lcom/android/contacts/CallDetailActivity$ViewEntry;
    .end local v27           #name:Ljava/lang/String;
    .end local v28           #numberType:I
    :cond_da
    :goto_da
    return-void

    .line 176
    .restart local v6       #date:J
    .restart local v20       #callType:I
    .restart local v22       #dateClause:Ljava/lang/CharSequence;
    .restart local v23       #duration:J
    .restart local v27       #name:Ljava/lang/String;
    .restart local v28       #numberType:I
    :cond_db
    :try_start_db
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mCallDuration:Landroid/widget/TextView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    .end local v6           #date:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mCallDuration:Landroid/widget/TextView;

    move-object v5, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/CallDetailActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_f4
    .catchall {:try_start_db .. :try_end_f4} :catchall_f6

    goto/16 :goto_70

    .line 355
    .end local v20           #callType:I
    .end local v22           #dateClause:Ljava/lang/CharSequence;
    .end local v23           #duration:J
    .end local v27           #name:Ljava/lang/String;
    .end local v28           #numberType:I
    :catchall_f6
    move-exception v5

    if-eqz v16, :cond_fc

    .line 356
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_fc
    throw v5

    .line 184
    .restart local v19       #callText:Ljava/lang/String;
    .restart local v20       #callType:I
    .restart local v22       #dateClause:Ljava/lang/CharSequence;
    .restart local v23       #duration:J
    .restart local v27       #name:Ljava/lang/String;
    .restart local v28       #numberType:I
    :pswitch_fd
    :try_start_fd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mCallTypeIcon:Landroid/widget/ImageView;

    move-object v5, v0

    const v6, 0x7f0200a0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mCallType:Landroid/widget/TextView;

    move-object v5, v0

    const v6, 0x7f060083

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 186
    const v5, 0x7f060094

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/contacts/CallDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 187
    goto/16 :goto_75

    .line 190
    :pswitch_11f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mCallTypeIcon:Landroid/widget/ImageView;

    move-object v5, v0

    const v6, 0x7f0200a2

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mCallType:Landroid/widget/TextView;

    move-object v5, v0

    const v6, 0x7f060084

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 192
    const v5, 0x7f060095

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/contacts/CallDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 193
    goto/16 :goto_75

    .line 196
    :pswitch_141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mCallTypeIcon:Landroid/widget/ImageView;

    move-object v5, v0

    const v6, 0x7f0200a1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mCallType:Landroid/widget/TextView;

    move-object v5, v0

    const v6, 0x7f060085

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 198
    const v5, 0x7f060096

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/contacts/CallDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_75

    .line 226
    :cond_163
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "KTF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1e7

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object v5, v0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/PhoneNumberUtils;->compareEx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_190

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "*88"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_251

    .line 235
    :cond_190
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .restart local v14       #actions:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/CallDetailActivity$ViewEntry;>;"
    new-instance v17, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    const-string v6, "tel"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object v7, v0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 238
    .restart local v17       #callIntent:Landroid/content/Intent;
    new-instance v26, Lcom/android/contacts/CallDetailActivity$ViewEntry;

    const v5, 0x108008d

    move-object/from16 v0, v26

    move v1, v5

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/CallDetailActivity$ViewEntry;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    .line 239
    .restart local v26       #entry:Lcom/android/contacts/CallDetailActivity$ViewEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->number:Ljava/lang/String;

    .line 240
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->label:Ljava/lang/String;

    .line 241
    move-object v0, v14

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v15, Lcom/android/contacts/CallDetailActivity$ViewAdapter;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/CallDetailActivity$ViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 245
    .restart local v15       #adapter:Lcom/android/contacts/CallDetailActivity$ViewAdapter;
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/contacts/CallDetailActivity;->setListAdapter(Landroid/widget/ListAdapter;)V
    :try_end_1e0
    .catchall {:try_start_fd .. :try_end_1e0} :catchall_f6

    .line 355
    if-eqz v16, :cond_da

    .line 356
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_da

    .line 252
    .end local v14           #actions:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/CallDetailActivity$ViewEntry;>;"
    .end local v15           #adapter:Lcom/android/contacts/CallDetailActivity$ViewAdapter;
    .end local v17           #callIntent:Landroid/content/Intent;
    .end local v26           #entry:Lcom/android/contacts/CallDetailActivity$ViewEntry;
    :cond_1e7
    :try_start_1e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object v5, v0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_251

    .line 254
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .restart local v14       #actions:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/CallDetailActivity$ViewEntry;>;"
    new-instance v17, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    const-string v6, "tel"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object v7, v0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 259
    .restart local v17       #callIntent:Landroid/content/Intent;
    new-instance v26, Lcom/android/contacts/CallDetailActivity$ViewEntry;

    const v5, 0x108008d

    move-object/from16 v0, v26

    move v1, v5

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/CallDetailActivity$ViewEntry;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    .line 260
    .restart local v26       #entry:Lcom/android/contacts/CallDetailActivity$ViewEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->number:Ljava/lang/String;

    .line 261
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->label:Ljava/lang/String;

    .line 262
    move-object v0, v14

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v15, Lcom/android/contacts/CallDetailActivity$ViewAdapter;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/CallDetailActivity$ViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 265
    .restart local v15       #adapter:Lcom/android/contacts/CallDetailActivity$ViewAdapter;
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/contacts/CallDetailActivity;->setListAdapter(Landroid/widget/ListAdapter;)V
    :try_end_24a
    .catchall {:try_start_1e7 .. :try_end_24a} :catchall_f6

    .line 355
    if-eqz v16, :cond_da

    .line 356
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_da

    .line 274
    .end local v14           #actions:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/CallDetailActivity$ViewEntry;>;"
    .end local v15           #adapter:Lcom/android/contacts/CallDetailActivity$ViewAdapter;
    .end local v17           #callIntent:Landroid/content/Intent;
    .end local v26           #entry:Lcom/android/contacts/CallDetailActivity$ViewEntry;
    :cond_251
    :try_start_251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "-2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29a

    .line 277
    :cond_26b
    const v5, 0x7f050005

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 278
    .local v25, emptyText:Landroid/widget/TextView;
    if-eqz v25, :cond_28f

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "-2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_296

    const v5, 0x7f060070

    :goto_289
    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
    :try_end_28f
    .catchall {:try_start_251 .. :try_end_28f} :catchall_f6

    .line 355
    .end local v19           #callText:Ljava/lang/String;
    .end local v20           #callType:I
    .end local v22           #dateClause:Ljava/lang/CharSequence;
    .end local v23           #duration:J
    .end local v25           #emptyText:Landroid/widget/TextView;
    .end local v27           #name:Ljava/lang/String;
    .end local v28           #numberType:I
    :cond_28f
    :goto_28f
    if-eqz v16, :cond_da

    .line 356
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_da

    .line 279
    .restart local v19       #callText:Ljava/lang/String;
    .restart local v20       #callType:I
    .restart local v22       #dateClause:Ljava/lang/CharSequence;
    .restart local v23       #duration:J
    .restart local v25       #emptyText:Landroid/widget/TextView;
    .restart local v27       #name:Ljava/lang/String;
    .restart local v28       #numberType:I
    :cond_296
    const v5, 0x7f06006f

    goto :goto_289

    .line 284
    .end local v25           #emptyText:Landroid/widget/TextView;
    :cond_29a
    const/16 v18, 0x0

    .line 285
    .local v18, callLabel:Ljava/lang/String;
    const/16 v31, 0x0

    .line 286
    .local v31, personUri:Landroid/net/Uri;
    :try_start_29e
    sget-object v5, Landroid/provider/Contacts$Phones;->CONTENT_FILTER_URL:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 287
    .local v9, phoneUri:Landroid/net/Uri;
    sget-object v10, Lcom/android/contacts/CallDetailActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v4

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2b6
    .catchall {:try_start_29e .. :try_end_2b6} :catchall_f6

    move-result-object v32

    .line 289
    .local v32, phonesCursor:Landroid/database/Cursor;
    if-eqz v32, :cond_3c2

    :try_start_2b9
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3c2

    .line 290
    const/4 v5, 0x0

    move-object/from16 v0, v32

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 291
    .local v29, personId:J
    sget-object v5, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-wide/from16 v1, v29

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v31

    .line 293
    const v5, 0x7f060067

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, v32

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 295
    const/4 v5, 0x4

    move-object/from16 v0, v32

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    .line 296
    const/4 v5, 0x2

    move-object/from16 v0, v32

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x3

    move-object/from16 v0, v32

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/provider/Contacts$Phones;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_311
    .catchall {:try_start_2b9 .. :try_end_311} :catchall_3ea

    move-result-object v18

    .line 307
    .end local v29           #personId:J
    :goto_312
    if-eqz v32, :cond_317

    :try_start_314
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 311
    :cond_317
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .restart local v14       #actions:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/CallDetailActivity$ViewEntry;>;"
    new-instance v17, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    const-string v6, "tel"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object v7, v0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 315
    .restart local v17       #callIntent:Landroid/content/Intent;
    new-instance v26, Lcom/android/contacts/CallDetailActivity$ViewEntry;

    const v5, 0x108008d

    move-object/from16 v0, v26

    move v1, v5

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/CallDetailActivity$ViewEntry;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    .line 317
    .restart local v26       #entry:Lcom/android/contacts/CallDetailActivity$ViewEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->number:Ljava/lang/String;

    .line 318
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->label:Ljava/lang/String;

    .line 319
    move-object v0, v14

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    new-instance v33, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    const-string v6, "sms"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object v7, v0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v33

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 323
    .local v33, smsIntent:Landroid/content/Intent;
    new-instance v5, Lcom/android/contacts/CallDetailActivity$ViewEntry;

    const v6, 0x7f020151

    const v7, 0x7f060066

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/contacts/CallDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v5

    move v1, v6

    move-object v2, v7

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/CallDetailActivity$ViewEntry;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    if-eqz v31, :cond_3f1

    .line 329
    new-instance v34, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    move-object/from16 v0, v34

    move-object v1, v5

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 330
    .local v34, viewIntent:Landroid/content/Intent;
    new-instance v5, Lcom/android/contacts/CallDetailActivity$ViewEntry;

    const v6, 0x7f020152

    const v7, 0x7f06000d

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/contacts/CallDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v5

    move v1, v6

    move-object v2, v7

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/CallDetailActivity$ViewEntry;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    .end local v34           #viewIntent:Landroid/content/Intent;
    :goto_3b1
    new-instance v15, Lcom/android/contacts/CallDetailActivity$ViewAdapter;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/CallDetailActivity$ViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 345
    .restart local v15       #adapter:Lcom/android/contacts/CallDetailActivity$ViewAdapter;
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/contacts/CallDetailActivity;->setListAdapter(Landroid/widget/ListAdapter;)V
    :try_end_3c0
    .catchall {:try_start_314 .. :try_end_3c0} :catchall_f6

    goto/16 :goto_28f

    .line 301
    .end local v14           #actions:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/CallDetailActivity$ViewEntry;>;"
    .end local v15           #adapter:Lcom/android/contacts/CallDetailActivity$ViewAdapter;
    .end local v17           #callIntent:Landroid/content/Intent;
    .end local v26           #entry:Lcom/android/contacts/CallDetailActivity$ViewEntry;
    .end local v33           #smsIntent:Landroid/content/Intent;
    :cond_3c2
    const/16 v5, 0x3e7

    move/from16 v0, v28

    move v1, v5

    if-ne v0, v1, :cond_3da

    .line 302
    const v5, 0x7f060067

    const/4 v6, 0x1

    :try_start_3cd
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v27, v6, v7

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 304
    :cond_3da
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;
    :try_end_3e8
    .catchall {:try_start_3cd .. :try_end_3e8} :catchall_3ea

    goto/16 :goto_312

    .line 307
    :catchall_3ea
    move-exception v5

    if-eqz v32, :cond_3f0

    :try_start_3ed
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    :cond_3f0
    throw v5

    .line 333
    .restart local v14       #actions:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/CallDetailActivity$ViewEntry;>;"
    .restart local v17       #callIntent:Landroid/content/Intent;
    .restart local v26       #entry:Lcom/android/contacts/CallDetailActivity$ViewEntry;
    .restart local v33       #smsIntent:Landroid/content/Intent;
    :cond_3f1
    new-instance v21, Landroid/content/Intent;

    const-string v5, "android.intent.action.INSERT_OR_EDIT"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    .local v21, createIntent:Landroid/content/Intent;
    const-string v5, "vnd.android.cursor.item/person"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    const-string v5, "phone"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const/16 v5, 0x3e7

    move/from16 v0, v28

    move v1, v5

    if-ne v0, v1, :cond_422

    .line 338
    const-string v5, "name"

    move-object/from16 v0, v21

    move-object v1, v5

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    :cond_422
    new-instance v5, Lcom/android/contacts/CallDetailActivity$ViewEntry;

    const v6, 0x7f020148

    const v7, 0x7f060069

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/contacts/CallDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v5

    move v1, v6

    move-object v2, v7

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/CallDetailActivity$ViewEntry;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3b1

    .line 350
    .end local v9           #phoneUri:Landroid/net/Uri;
    .end local v14           #actions:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/CallDetailActivity$ViewEntry;>;"
    .end local v17           #callIntent:Landroid/content/Intent;
    .end local v18           #callLabel:Ljava/lang/String;
    .end local v19           #callText:Ljava/lang/String;
    .end local v20           #callType:I
    .end local v21           #createIntent:Landroid/content/Intent;
    .end local v22           #dateClause:Ljava/lang/CharSequence;
    .end local v23           #duration:J
    .end local v26           #entry:Lcom/android/contacts/CallDetailActivity$ViewEntry;
    .end local v27           #name:Ljava/lang/String;
    .end local v28           #numberType:I
    .end local v31           #personUri:Landroid/net/Uri;
    .end local v32           #phonesCursor:Landroid/database/Cursor;
    .end local v33           #smsIntent:Landroid/content/Intent;
    :cond_43e
    const v5, 0x7f060081

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/CallDetailActivity;->finish()V
    :try_end_450
    .catchall {:try_start_3ed .. :try_end_450} :catchall_f6

    goto/16 :goto_28f

    .line 182
    :pswitch_data_452
    .packed-switch 0x1
        :pswitch_fd
        :pswitch_11f
        :pswitch_141
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->setContentView(I)V

    .line 110
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 111
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    .line 113
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mCallType:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mCallTypeIcon:Landroid/widget/ImageView;

    .line 115
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mCallTime:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mCallDuration:Landroid/widget/TextView;

    .line 118
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 119
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 453
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/CallDetailActivity$ViewEntry;

    if-eqz v1, :cond_17

    .line 454
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;

    .line 455
    .local v0, entry:Lcom/android/contacts/CallDetailActivity$ViewEntry;
    iget-object v1, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_17

    .line 456
    iget-object v1, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/contacts/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 459
    .end local v0           #entry:Lcom/android/contacts/CallDetailActivity$ViewEntry;
    :cond_17
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 129
    packed-switch p1, :pswitch_data_2c

    .line 143
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_7
    return v2

    .line 132
    :pswitch_8
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/contacts/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 134
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-nez v2, :cond_3

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    iget-object v4, p0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 137
    .local v0, callIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 138
    const/4 v2, 0x1

    goto :goto_7

    .line 129
    nop

    :pswitch_data_2c
    .packed-switch 0x5
        :pswitch_8
    .end packed-switch
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 124
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/CallDetailActivity;->updateData(Landroid/net/Uri;)V

    .line 125
    return-void
.end method

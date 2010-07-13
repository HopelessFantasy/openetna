.class Lcom/android/mms/ui/ManageCBchannelMarkActivity$1;
.super Ljava/lang/Object;
.source "ManageCBchannelMarkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageCBchannelMarkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageCBchannelMarkActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageCBchannelMarkActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/mms/ui/ManageCBchannelMarkActivity$1;->this$0:Lcom/android/mms/ui/ManageCBchannelMarkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 33
    .parameter "v"

    .prologue
    .line 176
    const/16 v24, 0x0

    .line 177
    .local v24, selectedArray_size:I
    const/16 v19, 0x0

    .line 178
    .local v19, listCount:I
    const-wide/16 v28, -0x1

    .line 179
    .local v28, thID:J
    const/16 v21, 0x0

    .line 180
    .local v21, mDeleteUri:Landroid/net/Uri;
    const/16 v22, 0x0

    .line 184
    .local v22, mRemainUri:Landroid/net/Uri;
    const/16 v23, 0x0

    .line 185
    .local v23, rowsNumber_SimIO:I
    const/4 v15, 0x0

    .line 192
    .local v15, entrySize:I
    const/16 v30, 0x0

    .line 193
    .local v30, updateCbmi_result:Z
    const/16 v26, 0x0

    .line 195
    .local v26, setBcConfig_result:Z
    const/4 v13, 0x0

    .line 197
    .local v13, channel_count:I
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v27

    .line 199
    .local v27, smsManager:Landroid/telephony/SmsManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ManageCBchannelMarkActivity$1;->this$0:Lcom/android/mms/ui/ManageCBchannelMarkActivity;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ManageCBchannelMarkActivity$1;->this$0:Lcom/android/mms/ui/ManageCBchannelMarkActivity;

    move-object v4, v0

    sget-object v5, Lcom/android/mms/Cbmi$Cbmis;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->access$100()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "created ASC"

    invoke-virtual/range {v4 .. v9}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->access$002(Lcom/android/mms/ui/ManageCBchannelMarkActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ManageCBchannelMarkActivity$1;->this$0:Lcom/android/mms/ui/ManageCBchannelMarkActivity;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->access$000(Lcom/android/mms/ui/ManageCBchannelMarkActivity;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v23

    .line 205
    invoke-static {}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->access$200()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    new-array v12, v4, [B

    .line 206
    .local v12, channel_byte:[B
    invoke-static {}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->access$200()I

    move-result v4

    new-array v14, v4, [I

    .line 208
    .local v14, channel_int:[I
    const/16 v18, 0x0

    .local v18, k:I
    :goto_4e
    invoke-static {}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->access$200()I

    move-result v4

    move/from16 v0, v18

    move v1, v4

    if-ge v0, v1, :cond_69

    .line 209
    mul-int/lit8 v4, v18, 0x2

    const/4 v5, -0x1

    aput-byte v5, v12, v4

    .line 210
    mul-int/lit8 v4, v18, 0x2

    add-int/lit8 v4, v4, 0x1

    const/4 v5, -0x1

    aput-byte v5, v12, v4

    .line 212
    const/4 v4, -0x1

    aput v4, v14, v18

    .line 208
    add-int/lit8 v18, v18, 0x1

    goto :goto_4e

    .line 215
    :cond_69
    invoke-static {}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->access$300()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v19

    .line 216
    const-string v4, "ManageCBchannelMarkActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " List count for intro:: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-static {}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->access$300()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v25

    .line 218
    .local v25, selected_array:Landroid/util/SparseBooleanArray;
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseBooleanArray;->size()I

    move-result v24

    .line 219
    const-string v4, "ManageCBchannelMarkActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "list numbers on deleting mode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v4, "ManageCBchannelMarkActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectedArray_size for SparseBoolean :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/16 v17, 0x0

    .local v17, j:I
    move-object/from16 v5, v22

    .end local v22           #mRemainUri:Landroid/net/Uri;
    .local v5, mRemainUri:Landroid/net/Uri;
    :goto_d2
    invoke-static {}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->access$300()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    move/from16 v0, v17

    move v1, v4

    if-ge v0, v1, :cond_1f4

    .line 223
    const-string v4, "ManageCBchannelMarkActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick() for statement j :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " select boolean :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_13a

    .line 226
    const-string v4, "ManageCBchannelMarkActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "th line is checked for delete : start from 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_137
    :goto_137
    add-int/lit8 v17, v17, 0x1

    goto :goto_d2

    .line 228
    :cond_13a
    invoke-static {}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->access$300()Landroid/widget/ListView;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v28

    .line 229
    const-string v4, "ManageCBchannelMarkActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "At position "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Remain Item Id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-wide/16 v6, -0x1

    cmp-long v4, v28, v6

    if-eqz v4, :cond_137

    .line 231
    sget-object v4, Lcom/android/mms/Cbmi$Cbmis;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v4

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ManageCBchannelMarkActivity$1;->this$0:Lcom/android/mms/ui/ManageCBchannelMarkActivity;

    move-object v4, v0

    invoke-static {}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->access$100()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "created ASC"

    invoke-virtual/range {v4 .. v9}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 234
    .local v20, mCursor_remain:Landroid/database/Cursor;
    if-eqz v20, :cond_137

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_137

    .line 235
    const-string v4, "channelid"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 236
    .local v10, channelIdIndex:I
    move-object/from16 v0, v20

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 237
    .local v11, channelInSim:I
    const-string v4, "ManageCBchannelMarkActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #mRemainUri:Landroid/net/Uri;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick remain channel() remain channel_count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v4, "ManageCBchannelMarkActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick remain channel() channel in SIM previously: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    mul-int/lit8 v4, v13, 0x2

    const v5, 0xff00

    and-int/2addr v5, v11

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v12, v4

    .line 241
    mul-int/lit8 v4, v13, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit16 v5, v11, 0xff

    int-to-byte v5, v5

    aput-byte v5, v12, v4

    .line 242
    aput v11, v14, v13

    .line 244
    add-int/lit8 v13, v13, 0x1

    .line 245
    const/4 v5, 0x0

    .line 246
    .restart local v5       #mRemainUri:Landroid/net/Uri;
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_137

    .line 253
    .end local v10           #channelIdIndex:I
    .end local v11           #channelInSim:I
    .end local v20           #mCursor_remain:Landroid/database/Cursor;
    :cond_1f4
    move v15, v13

    .line 254
    const-string v4, "ManageCBchannelMarkActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #mRemainUri:Landroid/net/Uri;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick Final remain channel() Final remain channel_count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "For WMS"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ManageCBchannelMarkActivity$1;->this$0:Lcom/android/mms/ui/ManageCBchannelMarkActivity;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->access$000(Lcom/android/mms/ui/ManageCBchannelMarkActivity;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_33c

    .line 257
    const/16 v16, 0x0

    .local v16, i:I
    :goto_224
    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_327

    .line 258
    const-string v4, "ManageCBchannelMarkActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick() for statement i: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " select boolean :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2e7

    .line 260
    invoke-static {}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->access$300()Landroid/widget/ListView;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v28

    .line 261
    const-string v4, "ManageCBchannelMarkActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "At position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Selected Item Id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-wide/16 v6, -0x1

    cmp-long v4, v28, v6

    if-eqz v4, :cond_2e3

    .line 263
    sget-object v4, Lcom/android/mms/Cbmi$Cbmis;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v4

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ManageCBchannelMarkActivity$1;->this$0:Lcom/android/mms/ui/ManageCBchannelMarkActivity;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v4

    move-object/from16 v1, v21

    move-object v2, v5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 265
    const-string v4, "ManageCBchannelMarkActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SQLite]content://cbs/channels/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is deleted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ManageCBchannelMarkActivity$1;->this$0:Lcom/android/mms/ui/ManageCBchannelMarkActivity;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->access$000(Lcom/android/mms/ui/ManageCBchannelMarkActivity;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 257
    :cond_2e3
    :goto_2e3
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_224

    .line 270
    :cond_2e7
    invoke-static {}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->access$300()Landroid/widget/ListView;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v28

    .line 271
    const-string v4, "ManageCBchannelMarkActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "At position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " UnSelected Item Id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ManageCBchannelMarkActivity$1;->this$0:Lcom/android/mms/ui/ManageCBchannelMarkActivity;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->access$000(Lcom/android/mms/ui/ManageCBchannelMarkActivity;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2e3

    .line 275
    :cond_327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ManageCBchannelMarkActivity$1;->this$0:Lcom/android/mms/ui/ManageCBchannelMarkActivity;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->access$000(Lcom/android/mms/ui/ManageCBchannelMarkActivity;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ManageCBchannelMarkActivity$1;->this$0:Lcom/android/mms/ui/ManageCBchannelMarkActivity;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->access$002(Lcom/android/mms/ui/ManageCBchannelMarkActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 280
    .end local v16           #i:I
    :cond_33c
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseBooleanArray;->clear()V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ManageCBchannelMarkActivity$1;->this$0:Lcom/android/mms/ui/ManageCBchannelMarkActivity;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->access$400(Lcom/android/mms/ui/ManageCBchannelMarkActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "VIVO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ManageCBchannelMarkActivity$1;->this$0:Lcom/android/mms/ui/ManageCBchannelMarkActivity;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->access$500(Lcom/android/mms/ui/ManageCBchannelMarkActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "BR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b1

    .line 283
    move-object/from16 v0, v27

    move v1, v15

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/telephony/SmsManager;->setBroadcastConfig(I[I)Z

    move-result v26

    .line 284
    const/4 v4, 0x1

    move/from16 v0, v26

    move v1, v4

    if-ne v0, v1, :cond_3a9

    .line 285
    const-string v4, "ManageCBchannelMarkActivity"

    const-string v5, "[Delete All][VIVO]Success to delete CBMIs Config to WMS"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :goto_376
    const-string v4, "ManageCBchannelMarkActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "List count for finish:: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->access$300()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-static {}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->access$300()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-nez v4, :cond_3a8

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ManageCBchannelMarkActivity$1;->this$0:Lcom/android/mms/ui/ManageCBchannelMarkActivity;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->finish()V

    .line 308
    :cond_3a8
    return-void

    .line 287
    :cond_3a9
    const-string v4, "ManageCBchannelMarkActivity"

    const-string v5, "[Delete All][VIVO]Fail to delete CBMIs Config to WMS"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_376

    .line 291
    :cond_3b1
    move-object/from16 v0, v27

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->updateCBMIToSim([B)Z

    move-result v30

    .line 293
    move-object/from16 v0, v27

    move v1, v15

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/telephony/SmsManager;->setBroadcastConfig(I[I)Z

    move-result v26

    .line 295
    const/4 v4, 0x1

    move/from16 v0, v30

    move v1, v4

    if-ne v0, v1, :cond_3db

    const/4 v4, 0x1

    move/from16 v0, v26

    move v1, v4

    if-ne v0, v1, :cond_3db

    .line 296
    const-string v4, "ManageCBchannelMarkActivity"

    const-string v5, "[Delete All]Success to delete CBMIs selected in SIM"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string v4, "ManageCBchannelMarkActivity"

    const-string v5, "[Delete All]Success to delete CBMIs Config to WMS"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_376

    .line 299
    :cond_3db
    const-string v4, "ManageCBchannelMarkActivity"

    const-string v5, "[Delete All]Fail to delete CBMIs selected in SIM"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v4, "ManageCBchannelMarkActivity"

    const-string v5, "[Delete All]Fail to delete CBMIs Config to WMS"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_376
.end method

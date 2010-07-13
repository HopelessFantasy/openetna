.class public Lcom/android/mms/ui/UndeliveredMessagesListAdapter;
.super Landroid/widget/CursorAdapter;
.source "UndeliveredMessagesListAdapter.java"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "UndeliveredMessagesListAdapter  "

.field private static final TAG:Ljava/lang/String; = "[MMS]"


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;)V
    .registers 5
    .parameter "context"
    .parameter "c"
    .parameter "listView"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 71
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 73
    iput-object p3, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mListView:Landroid/widget/ListView;

    .line 74
    return-void
.end method

.method private bindMmsView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 22
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 144
    const/16 v13, 0xd

    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/16 v14, 0x80

    if-eq v13, v14, :cond_e

    .line 175
    :goto_d
    return-void

    .line 149
    :cond_e
    const/4 v13, 0x1

    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 150
    .local v7, msgId:J
    sget-object v13, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 153
    .local v12, uri:Landroid/net/Uri;
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mContext:Landroid/content/Context;

    move-object v13, v0

    invoke-static {v13}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v6

    check-cast v6, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_2b
    .catch Lcom/google/android/mms/MmsException; {:try_start_1c .. :try_end_2b} :catch_ab

    .line 160
    .local v6, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    const v13, 0x7f090014

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 161
    .local v3, bodyView:Landroid/widget/TextView;
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v9

    .line 162
    .local v9, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v9, :cond_c7

    const-string v13, ""

    :goto_3f
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-static {}, Lcom/android/mms/util/ContactInfoCache;->getInstance()Lcom/android/mms/util/ContactInfoCache;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mContext:Landroid/content/Context;

    move-object v14, v0

    move-object v0, v6

    check-cast v0, Lcom/google/android/mms/pdu/SendReq;

    move-object v7, v0

    .end local v7           #msgId:J
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/SendReq;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v15

    invoke-static {v15}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/mms/util/ContactInfoCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, contact:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mContext:Landroid/content/Context;

    move-object v14, v0

    const v15, 0x7f07009f

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 168
    const v13, 0x7f090029

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 169
    .local v2, addrView:Landroid/widget/TextView;
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mContext:Landroid/content/Context;

    move-object v13, v0

    check-cast v6, Lcom/google/android/mms/pdu/SendReq;

    .end local v6           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/SendReq;->getDate()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    invoke-static {v13, v14, v15}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    .line 173
    .local v10, timeStamp:Ljava/lang/String;
    const v13, 0x7f09002a

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 174
    .local v11, timeStampView:Landroid/widget/TextView;
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 155
    .end local v2           #addrView:Landroid/widget/TextView;
    .end local v3           #bodyView:Landroid/widget/TextView;
    .end local v4           #contact:Ljava/lang/String;
    .end local v9           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v10           #timeStamp:Ljava/lang/String;
    .end local v11           #timeStampView:Landroid/widget/TextView;
    .restart local v7       #msgId:J
    :catch_ab
    move-exception v13

    move-object v5, v13

    .line 156
    .local v5, e:Lcom/google/android/mms/MmsException;
    const-string v13, "[MMS]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "UndeliveredMessagesListAdapter  Cannot load: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 162
    .end local v5           #e:Lcom/google/android/mms/MmsException;
    .restart local v3       #bodyView:Landroid/widget/TextView;
    .restart local v6       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .restart local v9       #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_c7
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_3f
.end method

.method private bindSmsView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 126
    invoke-static {}, Lcom/android/mms/util/ContactInfoCache;->getInstance()Lcom/android/mms/util/ContactInfoCache;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mContext:Landroid/content/Context;

    const/4 v10, 0x3

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/mms/util/ContactInfoCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, contact:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f07009f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    const v8, 0x7f090029

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 130
    .local v0, addrView:Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const/4 v8, 0x4

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, body:Ljava/lang/String;
    const v8, 0x7f090014

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 134
    .local v2, bodyView:Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    const v8, 0x7f09002a

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 138
    .local v7, timeStamp:Landroid/widget/TextView;
    const/4 v8, 0x5

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 139
    .local v4, date:J
    invoke-static {p2, v4, v5}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 140
    .local v6, time:Ljava/lang/String;
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v8, 0x0

    const-string v10, "sms"

    const-string v9, "mms"

    .line 78
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 79
    .local v6, type:Ljava/lang/String;
    const/16 v7, 0xf

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 80
    .local v1, errorType:I
    const/16 v7, 0x8

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 81
    .local v5, status:I
    const-string v7, "mms"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_73

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->bindMmsView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 88
    :cond_20
    :goto_20
    const v7, 0x7f09002b

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 89
    .local v0, errIcon:Landroid/widget/ImageView;
    const-string v7, "mms"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_35

    const/16 v7, 0xa

    if-lt v1, v7, :cond_41

    :cond_35
    const-string v7, "sms"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7f

    const/16 v7, 0x40

    if-ne v5, v7, :cond_7f

    .line 91
    :cond_41
    const v7, 0x7f020006

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    :goto_47
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    instance-of v7, p2, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;

    if-eqz v7, :cond_72

    .line 99
    const v7, 0x7f090025

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    .line 100
    .local v3, mCheckButton:Landroid/widget/CheckedTextView;
    check-cast p2, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;

    .end local p2
    invoke-virtual {p2}, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 101
    .local v2, lv:Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v4

    .line 103
    .local v4, sba:Landroid/util/SparseBooleanArray;
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_86

    .line 104
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 108
    :goto_6f
    invoke-virtual {v3, v8}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 111
    .end local v2           #lv:Landroid/widget/ListView;
    .end local v3           #mCheckButton:Landroid/widget/CheckedTextView;
    .end local v4           #sba:Landroid/util/SparseBooleanArray;
    :cond_72
    return-void

    .line 83
    .end local v0           #errIcon:Landroid/widget/ImageView;
    .restart local p2
    :cond_73
    const-string v7, "sms"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->bindSmsView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_20

    .line 93
    .restart local v0       #errIcon:Landroid/widget/ImageView;
    :cond_7f
    const v7, 0x7f020032

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_47

    .line 106
    .end local p2
    .restart local v2       #lv:Landroid/widget/ListView;
    .restart local v3       #mCheckButton:Landroid/widget/CheckedTextView;
    .restart local v4       #sba:Landroid/util/SparseBooleanArray;
    :cond_86
    invoke-virtual {v3, v8}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_6f
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03000c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .registers 1

    .prologue
    .line 120
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 122
    return-void
.end method

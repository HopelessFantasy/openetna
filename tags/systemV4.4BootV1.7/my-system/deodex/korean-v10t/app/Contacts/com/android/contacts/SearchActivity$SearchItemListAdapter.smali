.class final Lcom/android/contacts/SearchActivity$SearchItemListAdapter;
.super Landroid/widget/CursorAdapter;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SearchItemListAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private mLoading:Z

.field private mLocalizedLabels:[Ljava/lang/CharSequence;

.field private mUnknownNameText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/contacts/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/SearchActivity;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 1061
    iput-object p1, p0, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;->this$0:Lcom/android/contacts/SearchActivity;

    .line 1062
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1059
    iput-boolean v1, p0, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;->mLoading:Z

    .line 1063
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1064
    const v0, 0x104000e

    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 1065
    const/4 v0, 0x5

    invoke-static {p2, v0}, Lcom/android/contacts/EditContactActivity;->getLabelsForKind(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;->mLocalizedLabels:[Ljava/lang/CharSequence;

    .line 1067
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 20
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1106
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/SearchActivity$SearchListItemCache;

    .line 1108
    .local v3, cache:Lcom/android/contacts/SearchActivity$SearchListItemCache;
    iget-object v12, v3, Lcom/android/contacts/SearchActivity$SearchListItemCache;->nameView:Landroid/widget/TextView;

    if-eqz v12, :cond_2c

    .line 1109
    const/4 v8, 0x0

    .line 1110
    .local v8, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;->this$0:Lcom/android/contacts/SearchActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/android/contacts/SearchActivity;->access$1000(Lcom/android/contacts/SearchActivity;)I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_e6

    .line 1111
    const/4 v12, 0x1

    move-object/from16 v0, p3

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1115
    :goto_1f
    if-eqz v8, :cond_f0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_f0

    .line 1116
    iget-object v12, v3, Lcom/android/contacts/SearchActivity$SearchListItemCache;->nameView:Landroid/widget/TextView;

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1122
    .end local v8           #name:Ljava/lang/String;
    :cond_2c
    :goto_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;->this$0:Lcom/android/contacts/SearchActivity;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/contacts/SearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v7

    .line 1123
    .local v7, lv:Landroid/widget/ListView;
    invoke-virtual {v7}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v10

    .line 1125
    .local v10, sba:Landroid/util/SparseBooleanArray;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v12

    if-eqz v12, :cond_fc

    .line 1126
    iget-object v12, v3, Lcom/android/contacts/SearchActivity$SearchListItemCache;->choiceView:Landroid/widget/CheckedTextView;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1130
    :goto_49
    iget-object v12, v3, Lcom/android/contacts/SearchActivity$SearchListItemCache;->choiceView:Landroid/widget/CheckedTextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 1133
    iget-object v12, v3, Lcom/android/contacts/SearchActivity$SearchListItemCache;->numberView:Landroid/widget/TextView;

    if-eqz v12, :cond_6d

    .line 1134
    iget-object v12, v3, Lcom/android/contacts/SearchActivity$SearchListItemCache;->numberView:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1135
    iget-object v12, v3, Lcom/android/contacts/SearchActivity$SearchListItemCache;->numberView:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1136
    iget-object v12, v3, Lcom/android/contacts/SearchActivity$SearchListItemCache;->labelView:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1137
    iget-object v12, v3, Lcom/android/contacts/SearchActivity$SearchListItemCache;->labelView:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1141
    :cond_6d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;->this$0:Lcom/android/contacts/SearchActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/android/contacts/SearchActivity;->access$1000(Lcom/android/contacts/SearchActivity;)I

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v13, :cond_e5

    .line 1142
    const/4 v9, 0x0

    .line 1143
    .local v9, number:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1144
    .local v5, email:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;->this$0:Lcom/android/contacts/SearchActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/android/contacts/SearchActivity;->access$1000(Lcom/android/contacts/SearchActivity;)I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_97

    .line 1146
    :try_start_87
    const-string v12, "number"

    move-object/from16 v0, p3

    move-object v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 1147
    .local v6, index:I
    move-object/from16 v0, p3

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_96
    .catch Ljava/lang/IllegalArgumentException; {:try_start_87 .. :try_end_96} :catch_104

    move-result-object v9

    .line 1153
    .end local v6           #index:I
    :cond_97
    :goto_97
    :try_start_97
    const-string v12, "email_data"

    move-object/from16 v0, p3

    move-object v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 1154
    .restart local v6       #index:I
    move-object/from16 v0, p3

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_a6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_97 .. :try_end_a6} :catch_108

    move-result-object v5

    .line 1158
    .end local v6           #index:I
    :goto_a7
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_135

    .line 1159
    iget-object v12, v3, Lcom/android/contacts/SearchActivity$SearchListItemCache;->numberView:Landroid/widget/TextView;

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1160
    iget-object v12, v3, Lcom/android/contacts/SearchActivity$SearchListItemCache;->numberView:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1162
    const/4 v12, 0x3

    move-object/from16 v0, p3

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_e5

    .line 1163
    const/4 v12, 0x3

    move-object/from16 v0, p3

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1164
    .local v11, type:I
    if-eqz v11, :cond_11c

    .line 1166
    :try_start_d0
    iget-object v12, v3, Lcom/android/contacts/SearchActivity$SearchListItemCache;->labelView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;->mLocalizedLabels:[Ljava/lang/CharSequence;

    move-object v13, v0

    const/4 v14, 0x1

    sub-int v14, v11, v14

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_df
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d0 .. :try_end_df} :catch_10c

    .line 1175
    :goto_df
    iget-object v12, v3, Lcom/android/contacts/SearchActivity$SearchListItemCache;->labelView:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1183
    .end local v5           #email:Ljava/lang/String;
    .end local v9           #number:Ljava/lang/String;
    .end local v11           #type:I
    :cond_e5
    :goto_e5
    return-void

    .line 1113
    .end local v7           #lv:Landroid/widget/ListView;
    .end local v10           #sba:Landroid/util/SparseBooleanArray;
    .restart local v8       #name:Ljava/lang/String;
    :cond_e6
    const/4 v12, 0x1

    move-object/from16 v0, p3

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1f

    .line 1118
    :cond_f0
    iget-object v12, v3, Lcom/android/contacts/SearchActivity$SearchListItemCache;->nameView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    move-object v13, v0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c

    .line 1128
    .end local v8           #name:Ljava/lang/String;
    .restart local v7       #lv:Landroid/widget/ListView;
    .restart local v10       #sba:Landroid/util/SparseBooleanArray;
    :cond_fc
    iget-object v12, v3, Lcom/android/contacts/SearchActivity$SearchListItemCache;->choiceView:Landroid/widget/CheckedTextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_49

    .line 1148
    .restart local v5       #email:Ljava/lang/String;
    .restart local v9       #number:Ljava/lang/String;
    :catch_104
    move-exception v12

    move-object v4, v12

    .line 1149
    .local v4, e:Ljava/lang/IllegalArgumentException;
    const/4 v9, 0x0

    goto :goto_97

    .line 1155
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :catch_108
    move-exception v12

    move-object v4, v12

    .line 1156
    .restart local v4       #e:Ljava/lang/IllegalArgumentException;
    const/4 v5, 0x0

    goto :goto_a7

    .line 1167
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    .restart local v11       #type:I
    :catch_10c
    move-exception v12

    move-object v4, v12

    .line 1168
    .local v4, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    iget-object v12, v3, Lcom/android/contacts/SearchActivity$SearchListItemCache;->labelView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;->mLocalizedLabels:[Ljava/lang/CharSequence;

    move-object v13, v0

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_df

    .line 1171
    .end local v4           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_11c
    const/4 v12, 0x4

    iget-object v13, v3, Lcom/android/contacts/SearchActivity$SearchListItemCache;->labelBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p3

    move v1, v12

    move-object v2, v13

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1173
    iget-object v12, v3, Lcom/android/contacts/SearchActivity$SearchListItemCache;->labelView:Landroid/widget/TextView;

    iget-object v13, v3, Lcom/android/contacts/SearchActivity$SearchListItemCache;->labelBuffer:Landroid/database/CharArrayBuffer;

    iget-object v13, v13, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v14, 0x0

    iget-object v15, v3, Lcom/android/contacts/SearchActivity$SearchListItemCache;->labelBuffer:Landroid/database/CharArrayBuffer;

    iget v15, v15, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {v12, v13, v14, v15}, Landroid/widget/TextView;->setText([CII)V

    goto :goto_df

    .line 1177
    .end local v11           #type:I
    :cond_135
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_e5

    .line 1178
    iget-object v12, v3, Lcom/android/contacts/SearchActivity$SearchListItemCache;->numberView:Landroid/widget/TextView;

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1179
    iget-object v12, v3, Lcom/android/contacts/SearchActivity$SearchListItemCache;->numberView:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_e5
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 2
    .parameter "cursor"

    .prologue
    .line 1201
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1204
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1071
    iget-object v2, p0, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_21

    .line 1072
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t move cursor to position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1078
    :cond_21
    if-nez p2, :cond_67

    .line 1079
    iget-object v2, p0, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v2, v3, p3}, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1081
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/android/contacts/SearchActivity$SearchListItemCache;

    invoke-direct {v0}, Lcom/android/contacts/SearchActivity$SearchListItemCache;-><init>()V

    .line 1082
    .local v0, cache:Lcom/android/contacts/SearchActivity$SearchListItemCache;
    const v2, 0x7f05000e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/contacts/SearchActivity$SearchListItemCache;->nameView:Landroid/widget/TextView;

    .line 1083
    const v2, 0x7f050008

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/contacts/SearchActivity$SearchListItemCache;->numberView:Landroid/widget/TextView;

    .line 1084
    const v2, 0x7f050007

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/contacts/SearchActivity$SearchListItemCache;->labelView:Landroid/widget/TextView;

    .line 1085
    const v2, 0x7f050048

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iput-object v2, v0, Lcom/android/contacts/SearchActivity$SearchListItemCache;->choiceView:Landroid/widget/CheckedTextView;

    .line 1090
    :goto_5c
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1091
    iget-object v2, p0, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 1092
    return-object v1

    .line 1087
    .end local v0           #cache:Lcom/android/contacts/SearchActivity$SearchListItemCache;
    .end local v1           #view:Landroid/view/View;
    :cond_67
    move-object v1, p2

    .line 1088
    .restart local v1       #view:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/SearchActivity$SearchListItemCache;

    .restart local v0       #cache:Lcom/android/contacts/SearchActivity$SearchListItemCache;
    goto :goto_5c
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 1188
    iget-boolean v0, p0, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;->mLoading:Z

    if-eqz v0, :cond_6

    .line 1190
    const/4 v0, 0x0

    .line 1192
    :goto_5
    return v0

    :cond_6
    invoke-super {p0}, Landroid/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    goto :goto_5
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 1097
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0}, Lcom/android/contacts/SearchActivity;->access$1000(Lcom/android/contacts/SearchActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 1098
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03002d

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1100
    :goto_13
    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03002c

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_13
.end method

.method public setLoading(Z)V
    .registers 2
    .parameter "loading"

    .prologue
    .line 1197
    iput-boolean p1, p0, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;->mLoading:Z

    .line 1198
    return-void
.end method

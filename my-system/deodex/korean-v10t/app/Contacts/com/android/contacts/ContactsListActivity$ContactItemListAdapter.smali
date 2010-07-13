.class final Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "ContactsListActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactItemListAdapter"
.end annotation


# instance fields
.field private mAlphabet:Ljava/lang/String;

.field private mBitmapCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDisplayPhotos:Z

.field private mFrequentSeparatorPos:I

.field private mIndexer:Landroid/widget/SectionIndexer;

.field private mLoading:Z

.field private mLocalizedLabels:[Ljava/lang/CharSequence;

.field private mUnknownNameText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/contacts/ContactsListActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/ContactsListActivity;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2566
    iput-object p1, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    .line 2567
    const v0, 0x7f030003

    invoke-direct {p0, p2, v0, v2, v1}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 2546
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mLoading:Z

    .line 2549
    iput-boolean v1, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mDisplayPhotos:Z

    .line 2550
    iput-object v2, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mBitmapCache:Landroid/util/SparseArray;

    .line 2551
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mFrequentSeparatorPos:I

    .line 2569
    const v0, 0x10402e4

    invoke-virtual {p1, v0}, Lcom/android/contacts/ContactsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mAlphabet:Ljava/lang/String;

    .line 2570
    const v0, 0x104000e

    invoke-virtual {p1, v0}, Lcom/android/contacts/ContactsListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 2572
    invoke-static {p1}, Lcom/android/contacts/ContactsListActivity;->access$1100(Lcom/android/contacts/ContactsListActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_40

    .line 2578
    const/4 v0, 0x5

    invoke-static {p2, v0}, Lcom/android/contacts/EditContactActivity;->getLabelsForKind(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mLocalizedLabels:[Ljava/lang/CharSequence;

    .line 2582
    :goto_34
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->setViewResourceByMode()V

    .line 2583
    return-void

    .line 2574
    :pswitch_38
    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/android/contacts/EditContactActivity;->getLabelsForKind(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mLocalizedLabels:[Ljava/lang/CharSequence;

    goto :goto_34

    .line 2572
    :pswitch_data_40
    .packed-switch -0x1fffffc4
        :pswitch_38
    .end packed-switch
.end method

.method private getNewIndexer(Landroid/database/Cursor;)Landroid/widget/SectionIndexer;
    .registers 5
    .parameter "cursor"

    .prologue
    .line 2605
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2606
    new-instance v0, Lcom/android/contacts/JapaneseContactListIndexer;

    const/16 v1, 0x9

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/JapaneseContactListIndexer;-><init>(Landroid/database/Cursor;I)V

    .line 2608
    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Landroid/widget/AlphabetIndexer;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mAlphabet:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    goto :goto_13
.end method

.method private getRealPosition(I)I
    .registers 4
    .parameter "pos"

    .prologue
    .line 3019
    iget v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mFrequentSeparatorPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    move v0, p1

    .line 3027
    :goto_6
    return v0

    .line 3022
    :cond_7
    iget v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mFrequentSeparatorPos:I

    if-gt p1, v0, :cond_d

    move v0, p1

    .line 3024
    goto :goto_6

    .line 3027
    :cond_d
    const/4 v0, 0x1

    sub-int v0, p1, v0

    goto :goto_6
.end method

.method private setViewResourceByMode()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x800

    const/high16 v1, 0x100

    .line 2586
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->access$1100(Lcom/android/contacts/ContactsListActivity;)I

    move-result v0

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_28

    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->access$1100(Lcom/android/contacts/ContactsListActivity;)I

    move-result v0

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_28

    .line 2588
    iput-boolean v4, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mDisplayPhotos:Z

    .line 2589
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->setViewResource(I)V

    .line 2590
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mBitmapCache:Landroid/util/SparseArray;

    .line 2602
    :goto_27
    return-void

    .line 2591
    :cond_28
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->access$1100(Lcom/android/contacts/ContactsListActivity;)I

    move-result v0

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_41

    .line 2592
    iput-boolean v4, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mDisplayPhotos:Z

    .line 2593
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->setViewResource(I)V

    .line 2594
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mBitmapCache:Landroid/util/SparseArray;

    goto :goto_27

    .line 2595
    :cond_41
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->access$1100(Lcom/android/contacts/ContactsListActivity;)I

    move-result v0

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_53

    .line 2596
    iput-boolean v3, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mDisplayPhotos:Z

    .line 2597
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->setViewResource(I)V

    goto :goto_27

    .line 2599
    :cond_53
    iput-boolean v3, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mDisplayPhotos:Z

    .line 2600
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->setViewResource(I)V

    goto :goto_27
.end method

.method private updateIndexer(Landroid/database/Cursor;)V
    .registers 4
    .parameter "cursor"

    .prologue
    .line 2939
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_b

    .line 2940
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->getNewIndexer(Landroid/database/Cursor;)Landroid/widget/SectionIndexer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    .line 2956
    .end local p0
    :goto_a
    return-void

    .line 2942
    .restart local p0
    :cond_b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2943
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    instance-of v0, v0, Lcom/android/contacts/JapaneseContactListIndexer;

    if-eqz v0, :cond_25

    .line 2944
    iget-object p0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    .end local p0
    check-cast p0, Lcom/android/contacts/JapaneseContactListIndexer;

    invoke-virtual {p0, p1}, Lcom/android/contacts/JapaneseContactListIndexer;->setCursor(Landroid/database/Cursor;)V

    goto :goto_a

    .line 2946
    .restart local p0
    :cond_25
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->getNewIndexer(Landroid/database/Cursor;)Landroid/widget/SectionIndexer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    goto :goto_a

    .line 2949
    :cond_2c
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    instance-of v0, v0, Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_3a

    .line 2950
    iget-object p0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    .end local p0
    check-cast p0, Landroid/widget/AlphabetIndexer;

    invoke-virtual {p0, p1}, Landroid/widget/AlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    goto :goto_a

    .line 2952
    .restart local p0
    :cond_3a
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->getNewIndexer(Landroid/database/Cursor;)Landroid/widget/SectionIndexer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    goto :goto_a
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 3

    .prologue
    .line 3001
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->access$1100(Lcom/android/contacts/ContactsListActivity;)I

    move-result v0

    const v1, 0x100001e

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 33
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 2723
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;

    .line 2725
    .local v12, cache:Lcom/android/contacts/ContactsListActivity$ContactListItemCache;
    const/4 v4, 0x1

    iget-object v5, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->nameBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p3

    move v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 2726
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->nameBuffer:Landroid/database/CharArrayBuffer;

    move-object v0, v4

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v24, v0

    .line 2729
    .local v24, size:I
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->numberView:Landroid/widget/TextView;

    if-eqz v4, :cond_33

    .line 2730
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->numberView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2731
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->numberView:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2732
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->labelView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2733
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->labelView:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2735
    :cond_33
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->presenceView:Landroid/widget/ImageView;

    if-eqz v4, :cond_43

    .line 2736
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->presenceView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2737
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->presenceView:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2739
    :cond_43
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->callView:Landroid/widget/ImageView;

    if-eqz v4, :cond_59

    .line 2740
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->callView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2741
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->callView:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2742
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->callView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2746
    :cond_59
    if-eqz v24, :cond_77

    .line 2747
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->nameView:Landroid/widget/TextView;

    iget-object v5, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->nameBuffer:Landroid/database/CharArrayBuffer;

    iget-object v5, v5, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v6, 0x0

    move-object v0, v4

    move-object v1, v5

    move v2, v6

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->setText([CII)V

    .line 2756
    :goto_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/contacts/ContactsListActivity;->access$1300(Lcom/android/contacts/ContactsListActivity;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_82

    .line 2909
    :cond_76
    :goto_76
    return-void

    .line 2749
    :cond_77
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->nameView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6a

    .line 2761
    :cond_82
    const/4 v4, 0x2

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 2762
    .local v16, number:Ljava/lang/String;
    const/4 v14, 0x0

    .line 2764
    .local v14, email:Ljava/lang/String;
    :try_start_8b
    const-string v4, "email_data"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 2765
    .local v15, index:I
    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_9a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8b .. :try_end_9a} :catch_226

    move-result-object v14

    .line 2769
    .end local v15           #index:I
    :goto_9b
    if-eqz v16, :cond_256

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_256

    .line 2770
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->numberView:Landroid/widget/TextView;

    invoke-static/range {v16 .. v16}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2771
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->numberView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2773
    const/4 v4, 0x3

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_db

    .line 2774
    const/4 v4, 0x3

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 2775
    .local v28, type:I
    if-eqz v28, :cond_23c

    .line 2777
    :try_start_c6
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->labelView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mLocalizedLabels:[Ljava/lang/CharSequence;

    move-object v5, v0

    const/4 v6, 0x1

    sub-int v6, v28, v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_d5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c6 .. :try_end_d5} :catch_22b

    .line 2786
    :goto_d5
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->labelView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2794
    .end local v28           #type:I
    :cond_db
    :goto_db
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/contacts/ContactsListActivity;->access$1100(Lcom/android/contacts/ContactsListActivity;)I

    move-result v4

    const/high16 v5, 0x800

    and-int/2addr v4, v5

    const/high16 v5, 0x800

    if-ne v4, v5, :cond_10b

    .line 2795
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->callView:Landroid/widget/ImageView;

    if-eqz v4, :cond_10b

    .line 2796
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10b

    .line 2797
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->callView:Landroid/widget/ImageView;

    const v5, 0x7f020004

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2798
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->callView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2799
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->callView:Landroid/widget/ImageView;

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2805
    :cond_10b
    move-object v0, v12

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->presenceView:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    .line 2806
    .local v21, presenceView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/contacts/ContactsListActivity;->access$1100(Lcom/android/contacts/ContactsListActivity;)I

    move-result v4

    const/high16 v5, 0x4000

    and-int/2addr v4, v5

    if-nez v4, :cond_143

    .line 2808
    const/16 v4, 0x8

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_143

    .line 2809
    const/16 v4, 0x8

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 2810
    .local v23, serverStatus:I
    invoke-static/range {v23 .. v23}, Landroid/provider/Contacts$Presence;->getPresenceIconResourceId(I)I

    move-result v4

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2812
    const/4 v4, 0x0

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2817
    .end local v23           #serverStatus:I
    :cond_143
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mDisplayPhotos:Z

    move v4, v0

    if-eqz v4, :cond_76

    .line 2818
    const/16 v18, 0x0

    .line 2820
    .local v18, photo:Landroid/graphics/Bitmap;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v20

    .line 2821
    .local v20, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mBitmapCache:Landroid/util/SparseArray;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/ref/SoftReference;

    .line 2822
    .local v22, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v22, :cond_166

    .line 2823
    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v18

    .end local v18           #photo:Landroid/graphics/Bitmap;
    check-cast v18, Landroid/graphics/Bitmap;

    .line 2826
    .restart local v18       #photo:Landroid/graphics/Bitmap;
    :cond_166
    if-nez v18, :cond_19d

    .line 2828
    const/16 v4, 0xa

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_271

    .line 2830
    const/16 v4, 0xa

    :try_start_175
    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v19

    .line 2831
    .local v19, photoData:[B
    const/4 v4, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, v19

    move v1, v4

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 2833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mBitmapCache:Landroid/util/SparseArray;

    move-object v4, v0

    new-instance v5, Ljava/lang/ref/SoftReference;

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object v0, v4

    move/from16 v1, v20

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_19d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_175 .. :try_end_19d} :catch_26b

    .line 2856
    .end local v19           #photoData:[B
    :cond_19d
    :goto_19d
    if-eqz v18, :cond_2d1

    .line 2857
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->photoView:Landroid/widget/ImageView;

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2863
    :goto_1a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/contacts/ContactsListActivity;->access$1200(Lcom/android/contacts/ContactsListActivity;)Z

    move-result v4

    if-eqz v4, :cond_76

    sget-object v4, Lcom/android/contacts/LinkbookAsyncHelper;->mSNAccounts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_76

    .line 2864
    sget-object v4, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, p3

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "sns_ids"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 2866
    .local v5, snsIdsUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/contacts/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/android/contacts/ContactsListActivity;->SNSIDS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 2869
    .local v25, snsCursor:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 2870
    .local v11, addedIcon:I
    if-eqz v25, :cond_2ec

    .line 2871
    .end local v5           #snsIdsUri:Landroid/net/Uri;
    :cond_1f6
    :goto_1f6
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2e9

    .line 2872
    const/4 v4, 0x1

    move-object/from16 v0, v25

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 2874
    .local v26, snsId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/contacts/LinkbookAsyncHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;

    move-result-object v10

    .line 2876
    .local v10, account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    if-eqz v10, :cond_1f6

    .line 2878
    iget-object v4, v10, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1f6

    .line 2879
    iget-object v4, v10, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2dc

    if-nez v11, :cond_2dc

    .line 2880
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->iconSn1:Landroid/widget/ImageView;

    iget-object v5, v10, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2881
    add-int/lit8 v11, v11, 0x1

    goto :goto_1f6

    .line 2766
    .end local v10           #account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    .end local v11           #addedIcon:I
    .end local v18           #photo:Landroid/graphics/Bitmap;
    .end local v20           #pos:I
    .end local v21           #presenceView:Landroid/widget/ImageView;
    .end local v22           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v25           #snsCursor:Landroid/database/Cursor;
    .end local v26           #snsId:Ljava/lang/String;
    :catch_226
    move-exception v4

    move-object v13, v4

    .line 2767
    .local v13, e:Ljava/lang/IllegalArgumentException;
    const/4 v14, 0x0

    goto/16 :goto_9b

    .line 2778
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    .restart local v28       #type:I
    :catch_22b
    move-exception v4

    move-object v13, v4

    .line 2779
    .local v13, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->labelView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mLocalizedLabels:[Ljava/lang/CharSequence;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d5

    .line 2782
    .end local v13           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_23c
    const/4 v4, 0x4

    iget-object v5, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->labelBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p3

    move v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 2784
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->labelView:Landroid/widget/TextView;

    iget-object v5, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->labelBuffer:Landroid/database/CharArrayBuffer;

    iget-object v5, v5, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v6, 0x0

    iget-object v7, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->labelBuffer:Landroid/database/CharArrayBuffer;

    iget v7, v7, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/TextView;->setText([CII)V

    goto/16 :goto_d5

    .line 2788
    .end local v28           #type:I
    :cond_256
    if-eqz v14, :cond_db

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_db

    .line 2789
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->numberView:Landroid/widget/TextView;

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2790
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->numberView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_db

    .line 2834
    .restart local v18       #photo:Landroid/graphics/Bitmap;
    .restart local v20       #pos:I
    .restart local v21       #presenceView:Landroid/widget/ImageView;
    .restart local v22       #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :catch_26b
    move-exception v4

    move-object v13, v4

    .line 2836
    .local v13, e:Ljava/lang/OutOfMemoryError;
    const/16 v18, 0x0

    .line 2837
    goto/16 :goto_19d

    .line 2840
    .end local v13           #e:Ljava/lang/OutOfMemoryError;
    :cond_271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/contacts/ContactsListActivity;->access$1400(Lcom/android/contacts/ContactsListActivity;)Z

    move-result v4

    if-eqz v4, :cond_19d

    const/16 v4, 0xb

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_19d

    .line 2841
    sget-object v4, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    .line 2842
    .local v17, personUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/provider/Contacts$DrmPhotoManager;->openDrmPhotoInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v27

    .line 2844
    .local v27, stream:Ljava/io/InputStream;
    if-eqz v27, :cond_2cd

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_2a5
    move-object/from16 v0, v27

    move-object v1, v4

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v18, v4

    .line 2845
    :goto_2af
    if-eqz v18, :cond_19d

    .line 2846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mBitmapCache:Landroid/util/SparseArray;

    move-object v4, v0

    new-instance v5, Ljava/lang/ref/SoftReference;

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object v0, v4

    move/from16 v1, v20

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2c5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2a5 .. :try_end_2c5} :catch_2c7

    goto/16 :goto_19d

    .line 2848
    :catch_2c7
    move-exception v4

    move-object v13, v4

    .line 2850
    .restart local v13       #e:Ljava/lang/OutOfMemoryError;
    const/16 v18, 0x0

    goto/16 :goto_19d

    .line 2844
    .end local v13           #e:Ljava/lang/OutOfMemoryError;
    :cond_2cd
    const/4 v4, 0x0

    move-object/from16 v18, v4

    goto :goto_2af

    .line 2859
    .end local v17           #personUri:Landroid/net/Uri;
    .end local v27           #stream:Ljava/io/InputStream;
    :cond_2d1
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->photoView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/contacts/ContactsListActivity;->access$1500()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1a7

    .line 2882
    .restart local v10       #account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    .restart local v11       #addedIcon:I
    .restart local v25       #snsCursor:Landroid/database/Cursor;
    .restart local v26       #snsId:Ljava/lang/String;
    :cond_2dc
    iget-object v4, v10, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1f6

    .line 2883
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->iconSn2:Landroid/widget/ImageView;

    iget-object v5, v10, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2884
    add-int/lit8 v11, v11, 0x1

    .line 2891
    .end local v10           #account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    .end local v26           #snsId:Ljava/lang/String;
    :cond_2e9
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 2893
    :cond_2ec
    if-nez v11, :cond_308

    .line 2894
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->iconSn1:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2895
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->iconSn1:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2896
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->iconSn2:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2897
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->iconSn2:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_76

    .line 2898
    :cond_308
    const/4 v4, 0x1

    if-ne v11, v4, :cond_31f

    .line 2899
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->iconSn1:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2900
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->iconSn2:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2901
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->iconSn2:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_76

    .line 2903
    :cond_31f
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->iconSn1:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2904
    iget-object v4, v12, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->iconSn2:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_76
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 7
    .parameter "cursor"

    .prologue
    const/4 v4, -0x1

    .line 2914
    iput v4, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mFrequentSeparatorPos:I

    .line 2915
    if-eqz p1, :cond_2b

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2b

    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-static {v2}, Lcom/android/contacts/ContactsListActivity;->access$1100(Lcom/android/contacts/ContactsListActivity;)I

    move-result v2

    const v3, 0x100001e

    if-ne v2, v3, :cond_2b

    .line 2916
    invoke-interface {p1, v4}, Landroid/database/Cursor;->move(I)Z

    .line 2917
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1a
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 2918
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2919
    .local v1, starred:I
    if-nez v1, :cond_35

    .line 2920
    if-lez v0, :cond_2b

    .line 2922
    iput v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mFrequentSeparatorPos:I

    .line 2929
    .end local v0           #i:I
    .end local v1           #starred:I
    :cond_2b
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2932
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->updateIndexer(Landroid/database/Cursor;)V

    .line 2935
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->clearBitmapCache()V

    .line 2936
    return-void

    .line 2917
    .restart local v0       #i:I
    .restart local v1       #starred:I
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a
.end method

.method public clearBitmapCache()V
    .registers 2

    .prologue
    .line 3042
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mBitmapCache:Landroid/util/SparseArray;

    if-eqz v0, :cond_9

    .line 3043
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3045
    :cond_9
    return-void
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 3011
    iget v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mFrequentSeparatorPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 3012
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 3014
    :goto_b
    return v0

    :cond_c
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getCount()I

    move-result v0

    goto :goto_b
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "pos"

    .prologue
    .line 3033
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->getRealPosition(I)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/ResourceCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "pos"

    .prologue
    .line 3038
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->getRealPosition(I)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/ResourceCursorAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 2656
    iget v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mFrequentSeparatorPos:I

    if-ne p1, v0, :cond_6

    .line 2658
    const/4 v0, -0x1

    .line 2660
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_5
.end method

.method public getPositionForSection(I)I
    .registers 6
    .parameter "sectionIndex"

    .prologue
    const/4 v3, 0x0

    .line 2976
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-static {v1}, Lcom/android/contacts/ContactsListActivity;->access$1100(Lcom/android/contacts/ContactsListActivity;)I

    move-result v1

    const v2, 0x100001e

    if-ne v1, v2, :cond_e

    move v1, v3

    .line 2989
    :goto_d
    return v1

    .line 2980
    :cond_e
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v1, :cond_24

    .line 2981
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    iget-object v1, v1, Lcom/android/contacts/ContactsListActivity;->mAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2982
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_1e

    move v1, v3

    .line 2984
    goto :goto_d

    .line 2986
    :cond_1e
    invoke-direct {p0, v0}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->getNewIndexer(Landroid/database/Cursor;)Landroid/widget/SectionIndexer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    .line 2989
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_24
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v1, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v1

    goto :goto_d
.end method

.method public getSectionForPosition(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 2996
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 4

    .prologue
    .line 2968
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->access$1100(Lcom/android/contacts/ContactsListActivity;)I

    move-result v0

    const v1, 0x100001e

    if-ne v0, v1, :cond_14

    .line 2969
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    .line 2971
    :goto_13
    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_13
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2665
    iget-boolean v3, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mDataValid:Z

    if-nez v3, :cond_c

    .line 2666
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "this should only be called when the cursor is valid"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2670
    :cond_c
    iget v3, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mFrequentSeparatorPos:I

    if-ne p1, v3, :cond_32

    .line 2671
    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2673
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030025

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2674
    .local v2, view:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    const v4, 0x7f060098

    invoke-virtual {v3, v4}, Lcom/android/contacts/ContactsListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v3, v2

    .line 2688
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #view:Landroid/widget/TextView;
    :goto_31
    return-object v3

    .line 2678
    :cond_32
    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->getRealPosition(I)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-nez v3, :cond_57

    .line 2679
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t move cursor to position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2682
    :cond_57
    if-nez p2, :cond_6a

    .line 2683
    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3, v4, p3}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2687
    .local v1, v:Landroid/view/View;
    :goto_61
    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    move-object v3, v1

    .line 2688
    goto :goto_31

    .line 2685
    .end local v1           #v:Landroid/view/View;
    :cond_6a
    move-object v1, p2

    .restart local v1       #v:Landroid/view/View;
    goto :goto_61
.end method

.method public isEmpty()Z
    .registers 5

    .prologue
    const/high16 v3, 0x200

    const/high16 v2, 0x100

    const/4 v1, 0x0

    .line 2636
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->access$1100(Lcom/android/contacts/ContactsListActivity;)I

    move-result v0

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_10

    move v0, v1

    .line 2649
    :goto_f
    return v0

    .line 2640
    :cond_10
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->access$1100(Lcom/android/contacts/ContactsListActivity;)I

    move-result v0

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1b

    move v0, v1

    .line 2643
    goto :goto_f

    .line 2645
    :cond_1b
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mLoading:Z

    if-eqz v0, :cond_21

    move v0, v1

    .line 2647
    goto :goto_f

    .line 2649
    :cond_21
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->isEmpty()Z

    move-result v0

    goto :goto_f
.end method

.method public isEnabled(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 3006
    iget v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mFrequentSeparatorPos:I

    if-eq p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/high16 v3, 0x800

    .line 2693
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2694
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;

    invoke-direct {v0}, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;-><init>()V

    .line 2696
    .local v0, cache:Lcom/android/contacts/ContactsListActivity$ContactListItemCache;
    const v2, 0x7f05000e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->nameView:Landroid/widget/TextView;

    .line 2697
    const v2, 0x7f050007

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->labelView:Landroid/widget/TextView;

    .line 2698
    const v2, 0x7f050008

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->numberView:Landroid/widget/TextView;

    .line 2699
    const v2, 0x7f05000d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->presenceView:Landroid/widget/ImageView;

    .line 2700
    const v2, 0x7f05000f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->callView:Landroid/widget/ImageView;

    .line 2701
    const v2, 0x7f050013

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->photoView:Landroid/widget/ImageView;

    .line 2702
    const v2, 0x7f05005f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iput-object v2, v0, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->choiceView:Landroid/widget/CheckedTextView;

    .line 2704
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-static {v2}, Lcom/android/contacts/ContactsListActivity;->access$1200(Lcom/android/contacts/ContactsListActivity;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 2705
    const v2, 0x7f050014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->iconSn1:Landroid/widget/ImageView;

    .line 2706
    const v2, 0x7f050015

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->iconSn2:Landroid/widget/ImageView;

    .line 2707
    const v2, 0x7f050016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->iconSnNew:Landroid/widget/ImageView;

    .line 2711
    :cond_81
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-static {v2}, Lcom/android/contacts/ContactsListActivity;->access$1100(Lcom/android/contacts/ContactsListActivity;)I

    move-result v2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_93

    .line 2712
    iget-object v2, v0, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->callView:Landroid/widget/ImageView;

    if-eqz v2, :cond_93

    .line 2713
    iget-object v2, v0, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->callView:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2717
    :cond_93
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2718
    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    .line 2554
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_28

    .line 2564
    :cond_7
    :goto_7
    return-void

    .line 2556
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2557
    .local v0, tagData:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2558
    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2559
    .local v1, telUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    .line 2554
    :pswitch_data_28
    .packed-switch 0x7f05000f
        :pswitch_8
    .end packed-switch
.end method

.method protected onContentChanged()V
    .registers 4

    .prologue
    .line 2619
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-virtual {v2}, Lcom/android/contacts/ContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getTextFilter()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2620
    .local v0, constraint:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 2622
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    .line 2623
    .local v1, filter:Landroid/widget/Filter;
    invoke-virtual {v1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 2628
    .end local v1           #filter:Landroid/widget/Filter;
    :goto_17
    return-void

    .line 2626
    :cond_18
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-virtual {v2}, Lcom/android/contacts/ContactsListActivity;->startQuery()V

    goto :goto_17
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 4
    .parameter "constraint"

    .prologue
    .line 2964
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactsListActivity;->doFilter(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setLoading(Z)V
    .registers 2
    .parameter "loading"

    .prologue
    .line 2631
    iput-boolean p1, p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mLoading:Z

    .line 2632
    return-void
.end method

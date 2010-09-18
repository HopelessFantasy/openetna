.class public final Lcom/lge/favoritecontacts/FavoritePopup;
.super Landroid/app/Activity;
.source "FavoritePopup.java"


# static fields
.field static final CONTACTS_PHOTO_PROJECTION:[Ljava/lang/String; = null

.field static final DRMPHOTO_COLUMN_INDEX:I = 0x4

.field static final ID_COLUMN_INDEX:I = 0x0

.field public static final KEY_ISLOADED:Ljava/lang/String; = "loaded"

.field public static final KEY_NAME:Ljava/lang/String; = "people_name"

.field public static final KEY_PEOPLE_ID:Ljava/lang/String; = "people_id"

.field public static final KEY_PHOTO:Ljava/lang/String; = "photo"

.field private static final L_BTN_LIM_BOTTOM:I = 0xfd

.field private static final L_BTN_LIM_LEFT:I = 0xb

.field private static final L_BTN_LIM_RIGHT:I = 0xf5

.field private static final L_BTN_TOP_HEGIHT:I = 0x2a

.field private static final L_BTN_TOTAL_WIDTH:I = 0xea

.field static final NAME_COLUMN_INDEX:I = 0x1

.field static final PHOTO_COLUMN_INDEX:I = 0x3

.field private static final POPUP_IMAGE_CHANGE:I = 0x2328

.field public static final POPUP_RES_NOTHING:I = -0x12c

.field private static final P_BTN_LIM_BOTTOM:I = 0x134

.field private static final P_BTN_LIM_LEFT:I = 0xc

.field private static final P_BTN_LIM_RIGHT:I = 0x126

.field private static final P_BTN_TOP_HEGIHT:I = 0x33

.field private static final P_BTN_TOTAL_WIDTH:I = 0x11a

.field static final STARRED_COLUMN_INDEX:I = 0x2

.field private static final STATEKEY_DETAIL_NEEDFINISH:Ljava/lang/String; = "need_finish"


# instance fields
.field private IMAGE_CHANGE_STRINGS:[Ljava/lang/String;

.field private NeedFinish:Z

.field private final mDBSyncReceiver:Landroid/content/BroadcastReceiver;

.field private m_LeftInAnim:Landroid/view/animation/Animation;

.field private m_LeftOutAnim:Landroid/view/animation/Animation;

.field private m_NumberTextSwitcher:Landroid/widget/TextSwitcher;

.field private m_Photo:Landroid/graphics/Bitmap;

.field private m_RightInAnim:Landroid/view/animation/Animation;

.field private m_RightOutAnim:Landroid/view/animation/Animation;

.field private m_aszEmails:[Ljava/lang/String;

.field private m_aszNumbers:[Ljava/lang/String;

.field private m_btnCall:Landroid/widget/Button;

.field private m_btnEdit:Landroid/widget/Button;

.field private m_btnEmail:Landroid/widget/Button;

.field private m_btnMsg:Landroid/widget/Button;

.field private m_iEmailsCnt:I

.field private m_iNumberIdx:I

.field private m_iNumbersCnt:I

.field private m_lPeopleID:J

.field private m_szName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 82
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "photo_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "drmphoto_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/favoritecontacts/FavoritePopup;->CONTACTS_PHOTO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/favoritecontacts/FavoritePopup;->NeedFinish:Z

    .line 117
    new-instance v0, Lcom/lge/favoritecontacts/FavoritePopup$1;

    invoke-direct {v0, p0}, Lcom/lge/favoritecontacts/FavoritePopup$1;-><init>(Lcom/lge/favoritecontacts/FavoritePopup;)V

    iput-object v0, p0, Lcom/lge/favoritecontacts/FavoritePopup;->mDBSyncReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/favoritecontacts/FavoritePopup;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iNumberIdx:I

    return v0
.end method

.method static synthetic access$002(Lcom/lge/favoritecontacts/FavoritePopup;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iNumberIdx:I

    return p1
.end method

.method static synthetic access$008(Lcom/lge/favoritecontacts/FavoritePopup;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iNumberIdx:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iNumberIdx:I

    return v0
.end method

.method static synthetic access$010(Lcom/lge/favoritecontacts/FavoritePopup;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iNumberIdx:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iNumberIdx:I

    return v0
.end method

.method static synthetic access$100(Lcom/lge/favoritecontacts/FavoritePopup;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iNumbersCnt:I

    return v0
.end method

.method static synthetic access$1000(Lcom/lge/favoritecontacts/FavoritePopup;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_lPeopleID:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/lge/favoritecontacts/FavoritePopup;)Landroid/widget/TextSwitcher;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_NumberTextSwitcher:Landroid/widget/TextSwitcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/favoritecontacts/FavoritePopup;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_aszNumbers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/favoritecontacts/FavoritePopup;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_aszEmails:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/favoritecontacts/FavoritePopup;)Landroid/view/animation/Animation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_LeftInAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/favoritecontacts/FavoritePopup;)Landroid/view/animation/Animation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_LeftOutAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/favoritecontacts/FavoritePopup;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iEmailsCnt:I

    return v0
.end method

.method static synthetic access$800(Lcom/lge/favoritecontacts/FavoritePopup;)Landroid/view/animation/Animation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_RightInAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/favoritecontacts/FavoritePopup;)Landroid/view/animation/Animation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_RightOutAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private getContactInform()V
    .registers 13

    .prologue
    .line 312
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_lPeopleID:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "phones"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 315
    .local v1, phonesUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoritePopup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "number"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "isprimary DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 318
    .local v11, phonesCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_4b

    .line 319
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iNumbersCnt:I

    .line 320
    iget v0, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iNumbersCnt:I

    if-lez v0, :cond_48

    .line 321
    const/4 v8, 0x0

    .line 322
    .local v8, i:I
    iget v0, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iNumbersCnt:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_aszNumbers:[Ljava/lang/String;

    .line 323
    .end local v1           #phonesUri:Landroid/net/Uri;
    :goto_35
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 324
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_aszNumbers:[Ljava/lang/String;

    add-int/lit8 v9, v8, 0x1

    .end local v8           #i:I
    .local v9, i:I
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    move v8, v9

    .end local v9           #i:I
    .restart local v8       #i:I
    goto :goto_35

    .line 327
    .end local v8           #i:I
    :cond_48
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 330
    :cond_4b
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_lPeopleID:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "contact_methods"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 333
    .local v3, methodsUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoritePopup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "data"

    aput-object v1, v4, v0

    const-string v5, "kind=1"

    const/4 v6, 0x0

    const-string v7, "isprimary DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 338
    .local v10, methodsCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_97

    .line 339
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iEmailsCnt:I

    .line 340
    iget v0, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iEmailsCnt:I

    if-lez v0, :cond_94

    .line 341
    const/4 v8, 0x0

    .line 342
    .restart local v8       #i:I
    iget v0, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iEmailsCnt:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_aszEmails:[Ljava/lang/String;

    .line 343
    :goto_81
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 344
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_aszEmails:[Ljava/lang/String;

    add-int/lit8 v9, v8, 0x1

    .end local v8           #i:I
    .restart local v9       #i:I
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    move v8, v9

    .end local v9           #i:I
    .restart local v8       #i:I
    goto :goto_81

    .line 347
    .end local v8           #i:I
    :cond_94
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 350
    :cond_97
    return-void
.end method

.method private setArrowBtnOperation()V
    .registers 4

    .prologue
    .line 697
    const v2, 0x7f070007

    invoke-virtual {p0, v2}, Lcom/lge/favoritecontacts/FavoritePopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 698
    .local v1, rightArrow:Landroid/widget/Button;
    new-instance v2, Lcom/lge/favoritecontacts/FavoritePopup$8;

    invoke-direct {v2, p0}, Lcom/lge/favoritecontacts/FavoritePopup$8;-><init>(Lcom/lge/favoritecontacts/FavoritePopup;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 725
    const v2, 0x7f070006

    invoke-virtual {p0, v2}, Lcom/lge/favoritecontacts/FavoritePopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 726
    .local v0, leftArrow:Landroid/widget/Button;
    new-instance v2, Lcom/lge/favoritecontacts/FavoritePopup$9;

    invoke-direct {v2, p0}, Lcom/lge/favoritecontacts/FavoritePopup$9;-><init>(Lcom/lge/favoritecontacts/FavoritePopup;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 750
    return-void
.end method

.method private setCallBtnOperation()V
    .registers 3

    .prologue
    .line 619
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnCall:Landroid/widget/Button;

    new-instance v1, Lcom/lge/favoritecontacts/FavoritePopup$4;

    invoke-direct {v1, p0}, Lcom/lge/favoritecontacts/FavoritePopup$4;-><init>(Lcom/lge/favoritecontacts/FavoritePopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 639
    return-void
.end method

.method private setContactsInform()Z
    .registers 25

    .prologue
    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/lge/favoritecontacts/FavoritePopup;->getIntent()Landroid/content/Intent;

    move-result-object v16

    .line 220
    .local v16, intent:Landroid/content/Intent;
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 222
    .local v12, bundle:Landroid/os/Bundle;
    if-nez v12, :cond_c

    .line 223
    const/4 v5, 0x0

    .line 307
    :goto_b
    return v5

    .line 226
    :cond_c
    const-string v5, "loaded"

    invoke-virtual {v12, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 227
    .local v17, loaded:Z
    const-string v5, "people_id"

    invoke-virtual {v12, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    move-wide v0, v7

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/favoritecontacts/FavoritePopup;->m_lPeopleID:J

    .line 231
    sget-object v5, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/favoritecontacts/FavoritePopup;->m_lPeopleID:J

    move-wide v7, v0

    invoke-static {v5, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 233
    .local v6, personUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/favoritecontacts/FavoritePopup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Lcom/lge/favoritecontacts/FavoritePopup;->CONTACTS_PHOTO_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 236
    .local v18, personCursor:Landroid/database/Cursor;
    if-nez v18, :cond_39

    .line 237
    const/4 v5, 0x0

    goto :goto_b

    .line 239
    :cond_39
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_41

    .line 240
    const/4 v5, 0x0

    goto :goto_b

    .line 243
    :cond_41
    const/4 v5, 0x2

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_51

    .line 244
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 245
    const/4 v5, 0x0

    goto :goto_b

    .line 248
    :cond_51
    if-eqz v17, :cond_e0

    .line 249
    const-string v5, "photo"

    invoke-virtual {v12, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/graphics/Bitmap;

    .line 250
    .local v11, b:Landroid/graphics/Bitmap;
    const-string v5, "people_name"

    invoke-virtual {v12, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/favoritecontacts/FavoritePopup;->m_szName:Ljava/lang/String;

    .line 289
    .end local v6           #personUri:Landroid/net/Uri;
    :goto_66
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 292
    const v5, 0x7f070002

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/favoritecontacts/FavoritePopup;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 293
    .local v23, tv:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/favoritecontacts/FavoritePopup;->m_szName:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    const/4 v5, 0x1

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 295
    const/4 v5, 0x1

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 297
    invoke-static {}, Lcom/lge/render/FCImageFactory;->getPopupFrameImg()Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/favoritecontacts/FavoritePopup;->m_Photo:Landroid/graphics/Bitmap;

    .line 299
    new-instance v13, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/favoritecontacts/FavoritePopup;->m_Photo:Landroid/graphics/Bitmap;

    move-object v5, v0

    invoke-direct {v13, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 301
    .local v13, c:Landroid/graphics/Canvas;
    new-instance v21, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object/from16 v0, v21

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 302
    .local v21, src:Landroid/graphics/Rect;
    new-instance v14, Landroid/graphics/Rect;

    const/4 v5, 0x5

    const/4 v6, 0x5

    invoke-virtual {v13}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    const/4 v8, 0x5

    sub-int/2addr v7, v8

    invoke-virtual {v13}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    const/4 v9, 0x5

    sub-int/2addr v8, v9

    invoke-direct {v14, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 303
    .local v14, dst:Landroid/graphics/Rect;
    const/4 v5, 0x0

    move-object v0, v13

    move-object v1, v11

    move-object/from16 v2, v21

    move-object v3, v14

    move-object v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 305
    invoke-direct/range {p0 .. p0}, Lcom/lge/favoritecontacts/FavoritePopup;->getContactInform()V

    .line 307
    const/4 v5, 0x1

    goto/16 :goto_b

    .line 253
    .end local v11           #b:Landroid/graphics/Bitmap;
    .end local v13           #c:Landroid/graphics/Canvas;
    .end local v14           #dst:Landroid/graphics/Rect;
    .end local v21           #src:Landroid/graphics/Rect;
    .end local v23           #tv:Landroid/widget/TextView;
    .restart local v6       #personUri:Landroid/net/Uri;
    :cond_e0
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/favoritecontacts/FavoritePopup;->m_szName:Ljava/lang/String;

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/favoritecontacts/FavoritePopup;->m_szName:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_107

    .line 255
    const v5, 0x104000e

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/favoritecontacts/FavoritePopup;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/favoritecontacts/FavoritePopup;->m_szName:Ljava/lang/String;

    .line 259
    :cond_107
    const/16 v19, 0x0

    .line 260
    .local v19, photo:Landroid/graphics/Bitmap;
    const/4 v5, 0x3

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_133

    .line 262
    const/4 v5, 0x3

    :try_start_114
    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v20

    .line 263
    .local v20, photoData:[B
    const/4 v5, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move v6, v0

    .end local v6           #personUri:Landroid/net/Uri;
    move-object/from16 v0, v20

    move v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_127
    .catch Ljava/lang/OutOfMemoryError; {:try_start_114 .. :try_end_127} :catch_12e

    move-result-object v19

    .line 282
    .end local v20           #photoData:[B
    :cond_128
    :goto_128
    if-eqz v19, :cond_15b

    .line 283
    move-object/from16 v11, v19

    .restart local v11       #b:Landroid/graphics/Bitmap;
    goto/16 :goto_66

    .line 265
    .end local v11           #b:Landroid/graphics/Bitmap;
    :catch_12e
    move-exception v5

    move-object v15, v5

    .line 268
    .local v15, e:Ljava/lang/OutOfMemoryError;
    const/16 v19, 0x0

    .line 269
    goto :goto_128

    .line 270
    .end local v15           #e:Ljava/lang/OutOfMemoryError;
    .restart local v6       #personUri:Landroid/net/Uri;
    :cond_133
    const/4 v5, 0x4

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_128

    .line 271
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-static {v0, v1}, Landroid/provider/Contacts$DrmPhotoManager;->openDrmPhotoInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v22

    .line 274
    .local v22, stream:Ljava/io/InputStream;
    if-eqz v22, :cond_153

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_148
    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_14f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_148 .. :try_end_14f} :catch_157

    .end local v6           #personUri:Landroid/net/Uri;
    move-result-object v5

    move-object/from16 v19, v5

    :goto_152
    goto :goto_128

    .restart local v6       #personUri:Landroid/net/Uri;
    :cond_153
    const/4 v5, 0x0

    move-object/from16 v19, v5

    goto :goto_152

    .line 276
    .end local v6           #personUri:Landroid/net/Uri;
    :catch_157
    move-exception v15

    .line 279
    .restart local v15       #e:Ljava/lang/OutOfMemoryError;
    const/16 v19, 0x0

    goto :goto_128

    .line 285
    .end local v15           #e:Ljava/lang/OutOfMemoryError;
    .end local v22           #stream:Ljava/io/InputStream;
    :cond_15b
    invoke-virtual/range {p0 .. p0}, Lcom/lge/favoritecontacts/FavoritePopup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02001e

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .restart local v11       #b:Landroid/graphics/Bitmap;
    goto/16 :goto_66
.end method

.method private setEditBtnOperation()V
    .registers 5

    .prologue
    .line 681
    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_lPeopleID:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 683
    .local v0, personUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnEdit:Landroid/widget/Button;

    new-instance v2, Lcom/lge/favoritecontacts/FavoritePopup$7;

    invoke-direct {v2, p0, v0}, Lcom/lge/favoritecontacts/FavoritePopup$7;-><init>(Lcom/lge/favoritecontacts/FavoritePopup;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 693
    return-void
.end method

.method private setEmailBtnOperation()V
    .registers 3

    .prologue
    .line 662
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnEmail:Landroid/widget/Button;

    new-instance v1, Lcom/lge/favoritecontacts/FavoritePopup$6;

    invoke-direct {v1, p0}, Lcom/lge/favoritecontacts/FavoritePopup$6;-><init>(Lcom/lge/favoritecontacts/FavoritePopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 678
    return-void
.end method

.method private setLandPopupDisplay()V
    .registers 15

    .prologue
    const/16 v13, 0xb

    const/16 v12, 0x2a

    const/16 v11, 0x75

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 489
    const v7, 0x7f070003

    invoke-virtual {p0, v7}, Lcom/lge/favoritecontacts/FavoritePopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 490
    .local v0, iv:Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_Photo:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 492
    iget v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iNumbersCnt:I

    if-gtz v7, :cond_37

    .line 493
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 494
    .local v3, lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    iget v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    const/16 v8, 0xc

    sub-int/2addr v7, v8

    iput v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 495
    iget v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    add-int/lit8 v7, v7, 0x18

    iput v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 496
    iget v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    add-int/lit8 v7, v7, 0x18

    iput v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 497
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    .end local v3           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_37
    iget v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iNumbersCnt:I

    if-lez v7, :cond_c1

    .line 502
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_NumberTextSwitcher:Landroid/widget/TextSwitcher;

    iget-object v8, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_aszNumbers:[Ljava/lang/String;

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 508
    :cond_44
    :goto_44
    iget v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iNumbersCnt:I

    iget v8, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iEmailsCnt:I

    add-int/2addr v7, v8

    const/4 v8, 0x1

    if-gt v7, v8, :cond_d0

    .line 509
    const v7, 0x7f070006

    invoke-virtual {p0, v7}, Lcom/lge/favoritecontacts/FavoritePopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 510
    .local v1, leftArrow:Landroid/widget/Button;
    invoke-virtual {v1, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 512
    const v7, 0x7f070007

    invoke-virtual {p0, v7}, Lcom/lge/favoritecontacts/FavoritePopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 513
    .local v4, rightArrow:Landroid/widget/Button;
    invoke-virtual {v4, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 515
    iget v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iNumbersCnt:I

    if-gtz v7, :cond_80

    .line 516
    const v7, 0x7f070004

    invoke-virtual {p0, v7}, Lcom/lge/favoritecontacts/FavoritePopup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextSwitcher;

    .line 518
    .local v6, ts:Landroid/widget/TextSwitcher;
    invoke-virtual {v6}, Landroid/widget/TextSwitcher;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 520
    .restart local v3       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    iget v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    add-int/lit8 v7, v7, 0x23

    iput v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 521
    invoke-virtual {v6, v3}, Landroid/widget/TextSwitcher;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    .end local v3           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    .end local v6           #ts:Landroid/widget/TextSwitcher;
    :cond_80
    :goto_80
    iget v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iNumbersCnt:I

    if-gtz v7, :cond_127

    .line 549
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnCall:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 550
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnMsg:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 568
    :cond_8e
    :goto_8e
    iget v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iEmailsCnt:I

    if-gtz v7, :cond_14c

    .line 569
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnEmail:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 585
    :cond_97
    :goto_97
    iget v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iNumbersCnt:I

    if-gtz v7, :cond_175

    iget v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iEmailsCnt:I

    if-gtz v7, :cond_175

    .line 586
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnEdit:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 587
    .restart local v3       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnEdit:Landroid/widget/Button;

    const v8, 0x7f020012

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 588
    iput v13, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 589
    const/16 v7, 0xd3

    iput v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 590
    const/16 v7, 0xea

    iput v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 591
    iput v12, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 592
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnEdit:Landroid/widget/Button;

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 606
    .end local v3           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_c0
    :goto_c0
    return-void

    .line 503
    .end local v1           #leftArrow:Landroid/widget/Button;
    .end local v4           #rightArrow:Landroid/widget/Button;
    :cond_c1
    iget v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iEmailsCnt:I

    if-lez v7, :cond_44

    .line 504
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_NumberTextSwitcher:Landroid/widget/TextSwitcher;

    iget-object v8, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_aszEmails:[Ljava/lang/String;

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_44

    .line 524
    :cond_d0
    const v7, 0x7f070006

    invoke-virtual {p0, v7}, Lcom/lge/favoritecontacts/FavoritePopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 525
    .restart local v1       #leftArrow:Landroid/widget/Button;
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 527
    const v7, 0x7f070007

    invoke-virtual {p0, v7}, Lcom/lge/favoritecontacts/FavoritePopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 528
    .restart local v4       #rightArrow:Landroid/widget/Button;
    invoke-virtual {v4, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 529
    invoke-direct {p0}, Lcom/lge/favoritecontacts/FavoritePopup;->setArrowBtnOperation()V

    .line 531
    iget v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iNumbersCnt:I

    if-gtz v7, :cond_80

    .line 532
    const v7, 0x7f070004

    invoke-virtual {p0, v7}, Lcom/lge/favoritecontacts/FavoritePopup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextSwitcher;

    .line 534
    .restart local v6       #ts:Landroid/widget/TextSwitcher;
    invoke-virtual {v6}, Landroid/widget/TextSwitcher;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 535
    .restart local v3       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 536
    .local v2, llp:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 538
    .local v5, rlp:Landroid/widget/AbsoluteLayout$LayoutParams;
    iget v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    add-int/lit8 v7, v7, 0x23

    iput v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 539
    iget v7, v2, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    add-int/lit8 v7, v7, 0x23

    iput v7, v2, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 540
    iget v7, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    add-int/lit8 v7, v7, 0x23

    iput v7, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 541
    invoke-virtual {v6, v3}, Landroid/widget/TextSwitcher;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 542
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 543
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_80

    .line 552
    .end local v2           #llp:Landroid/widget/AbsoluteLayout$LayoutParams;
    .end local v3           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    .end local v5           #rlp:Landroid/widget/AbsoluteLayout$LayoutParams;
    .end local v6           #ts:Landroid/widget/TextSwitcher;
    :cond_127
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnCall:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 553
    invoke-direct {p0}, Lcom/lge/favoritecontacts/FavoritePopup;->setCallBtnOperation()V

    .line 555
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnMsg:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 556
    invoke-direct {p0}, Lcom/lge/favoritecontacts/FavoritePopup;->setMessageBtnOperation()V

    .line 559
    iget v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iEmailsCnt:I

    if-gtz v7, :cond_8e

    .line 561
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnMsg:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 562
    .restart local v3       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    iput v11, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 563
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnMsg:Landroid/widget/Button;

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_8e

    .line 571
    .end local v3           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_14c
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnEmail:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 572
    invoke-direct {p0}, Lcom/lge/favoritecontacts/FavoritePopup;->setEmailBtnOperation()V

    .line 574
    iget v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iNumbersCnt:I

    if-gtz v7, :cond_97

    .line 575
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnEmail:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 576
    .restart local v3       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    iput v11, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 577
    iput v12, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 578
    iput v13, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 579
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnEmail:Landroid/widget/Button;

    const v8, 0x7f020017

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 580
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnEmail:Landroid/widget/Button;

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_97

    .line 593
    .end local v3           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_175
    iget v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iNumbersCnt:I

    if-lez v7, :cond_192

    iget v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iEmailsCnt:I

    if-gtz v7, :cond_192

    .line 594
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnEdit:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 595
    .restart local v3       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    const/16 v7, 0x80

    iput v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 596
    iput v11, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 597
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnEdit:Landroid/widget/Button;

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_c0

    .line 598
    .end local v3           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_192
    iget v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iEmailsCnt:I

    if-lez v7, :cond_c0

    iget v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iNumbersCnt:I

    if-gtz v7, :cond_c0

    .line 599
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnEdit:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 600
    .restart local v3       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    iput v11, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 601
    iput v12, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 602
    const/16 v7, 0x80

    iput v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 603
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnEdit:Landroid/widget/Button;

    const v8, 0x7f02001b

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 604
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnEdit:Landroid/widget/Button;

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_c0
.end method

.method private setMessageBtnOperation()V
    .registers 3

    .prologue
    .line 642
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnMsg:Landroid/widget/Button;

    new-instance v1, Lcom/lge/favoritecontacts/FavoritePopup$5;

    invoke-direct {v1, p0}, Lcom/lge/favoritecontacts/FavoritePopup$5;-><init>(Lcom/lge/favoritecontacts/FavoritePopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 659
    return-void
.end method

.method private setMinusBtnOperation()V
    .registers 8

    .prologue
    .line 753
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 754
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "people_id"

    iget-wide v5, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_lPeopleID:J

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 756
    const v4, 0x7f070001

    invoke-virtual {p0, v4}, Lcom/lge/favoritecontacts/FavoritePopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsoluteLayout;

    .line 757
    .local v1, ablImg:Landroid/widget/AbsoluteLayout;
    new-instance v4, Lcom/lge/favoritecontacts/FavoritePopup$10;

    invoke-direct {v4, p0}, Lcom/lge/favoritecontacts/FavoritePopup$10;-><init>(Lcom/lge/favoritecontacts/FavoritePopup;)V

    invoke-virtual {v1, v4}, Landroid/widget/AbsoluteLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 762
    const/high16 v4, 0x7f07

    invoke-virtual {p0, v4}, Lcom/lge/favoritecontacts/FavoritePopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout;

    .line 763
    .local v0, abl:Landroid/widget/AbsoluteLayout;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/AbsoluteLayout;->setClickable(Z)V

    .line 764
    new-instance v4, Lcom/lge/favoritecontacts/FavoritePopup$11;

    invoke-direct {v4, p0, v2}, Lcom/lge/favoritecontacts/FavoritePopup$11;-><init>(Lcom/lge/favoritecontacts/FavoritePopup;Landroid/content/Intent;)V

    invoke-virtual {v0, v4}, Landroid/widget/AbsoluteLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 772
    const v4, 0x7f070005

    invoke-virtual {p0, v4}, Lcom/lge/favoritecontacts/FavoritePopup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 773
    .local v3, mbtn:Landroid/widget/Button;
    new-instance v4, Lcom/lge/favoritecontacts/FavoritePopup$12;

    invoke-direct {v4, p0, v2}, Lcom/lge/favoritecontacts/FavoritePopup$12;-><init>(Lcom/lge/favoritecontacts/FavoritePopup;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 780
    return-void
.end method

.method private setPhotoImageOperation()V
    .registers 3

    .prologue
    .line 609
    const v1, 0x7f070003

    invoke-virtual {p0, v1}, Lcom/lge/favoritecontacts/FavoritePopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 611
    .local v0, iv:Landroid/widget/ImageView;
    new-instance v1, Lcom/lge/favoritecontacts/FavoritePopup$3;

    invoke-direct {v1, p0}, Lcom/lge/favoritecontacts/FavoritePopup$3;-><init>(Lcom/lge/favoritecontacts/FavoritePopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 616
    return-void
.end method

.method private setPortPopupDisplay()V
    .registers 15

    .prologue
    const/16 v13, 0xc

    const/16 v12, 0x33

    const/16 v11, 0x8d

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 363
    const v7, 0x7f070003

    invoke-virtual {p0, v7}, Lcom/lge/favoritecontacts/FavoritePopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 364
    .local v0, iv:Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_Photo:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 366
    iget v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iNumbersCnt:I

    if-gtz v7, :cond_37

    .line 367
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 368
    .local v3, lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    iget v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    const/16 v8, 0xf

    sub-int/2addr v7, v8

    iput v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 369
    iget v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    add-int/lit8 v7, v7, 0x1f

    iput v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 370
    iget v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    add-int/lit8 v7, v7, 0x1f

    iput v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 371
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    .end local v3           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_37
    iget v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iNumbersCnt:I

    if-lez v7, :cond_c1

    .line 376
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_NumberTextSwitcher:Landroid/widget/TextSwitcher;

    iget-object v8, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_aszNumbers:[Ljava/lang/String;

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 382
    :cond_44
    :goto_44
    iget v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iNumbersCnt:I

    iget v8, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iEmailsCnt:I

    add-int/2addr v7, v8

    const/4 v8, 0x1

    if-gt v7, v8, :cond_d0

    .line 383
    const v7, 0x7f070006

    invoke-virtual {p0, v7}, Lcom/lge/favoritecontacts/FavoritePopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 384
    .local v1, leftArrow:Landroid/widget/Button;
    invoke-virtual {v1, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 386
    const v7, 0x7f070007

    invoke-virtual {p0, v7}, Lcom/lge/favoritecontacts/FavoritePopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 387
    .local v4, rightArrow:Landroid/widget/Button;
    invoke-virtual {v4, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 389
    iget v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iNumbersCnt:I

    if-gtz v7, :cond_80

    .line 390
    const v7, 0x7f070004

    invoke-virtual {p0, v7}, Lcom/lge/favoritecontacts/FavoritePopup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextSwitcher;

    .line 392
    .local v6, ts:Landroid/widget/TextSwitcher;
    invoke-virtual {v6}, Landroid/widget/TextSwitcher;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 394
    .restart local v3       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    iget v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    add-int/lit8 v7, v7, 0x2b

    iput v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 395
    invoke-virtual {v6, v3}, Landroid/widget/TextSwitcher;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    .end local v3           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    .end local v6           #ts:Landroid/widget/TextSwitcher;
    :cond_80
    :goto_80
    iget v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iNumbersCnt:I

    if-gtz v7, :cond_127

    .line 423
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnCall:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 424
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnMsg:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 442
    :cond_8e
    :goto_8e
    iget v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iEmailsCnt:I

    if-gtz v7, :cond_14c

    .line 443
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnEmail:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 459
    :cond_97
    :goto_97
    iget v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iNumbersCnt:I

    if-gtz v7, :cond_175

    iget v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iEmailsCnt:I

    if-gtz v7, :cond_175

    .line 460
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnEdit:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 461
    .restart local v3       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnEdit:Landroid/widget/Button;

    const v8, 0x7f020012

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 462
    iput v13, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 463
    const/16 v7, 0x101

    iput v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 464
    const/16 v7, 0x11a

    iput v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 465
    iput v12, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 466
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnEdit:Landroid/widget/Button;

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    .end local v3           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_c0
    :goto_c0
    return-void

    .line 377
    .end local v1           #leftArrow:Landroid/widget/Button;
    .end local v4           #rightArrow:Landroid/widget/Button;
    :cond_c1
    iget v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iEmailsCnt:I

    if-lez v7, :cond_44

    .line 378
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_NumberTextSwitcher:Landroid/widget/TextSwitcher;

    iget-object v8, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_aszEmails:[Ljava/lang/String;

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_44

    .line 398
    :cond_d0
    const v7, 0x7f070006

    invoke-virtual {p0, v7}, Lcom/lge/favoritecontacts/FavoritePopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 399
    .restart local v1       #leftArrow:Landroid/widget/Button;
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 401
    const v7, 0x7f070007

    invoke-virtual {p0, v7}, Lcom/lge/favoritecontacts/FavoritePopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 402
    .restart local v4       #rightArrow:Landroid/widget/Button;
    invoke-virtual {v4, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 403
    invoke-direct {p0}, Lcom/lge/favoritecontacts/FavoritePopup;->setArrowBtnOperation()V

    .line 405
    iget v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iNumbersCnt:I

    if-gtz v7, :cond_80

    .line 406
    const v7, 0x7f070004

    invoke-virtual {p0, v7}, Lcom/lge/favoritecontacts/FavoritePopup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextSwitcher;

    .line 408
    .restart local v6       #ts:Landroid/widget/TextSwitcher;
    invoke-virtual {v6}, Landroid/widget/TextSwitcher;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 409
    .restart local v3       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 410
    .local v2, llp:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 412
    .local v5, rlp:Landroid/widget/AbsoluteLayout$LayoutParams;
    iget v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    add-int/lit8 v7, v7, 0x2b

    iput v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 413
    iget v7, v2, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    add-int/lit8 v7, v7, 0x2b

    iput v7, v2, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 414
    iget v7, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    add-int/lit8 v7, v7, 0x2b

    iput v7, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 415
    invoke-virtual {v6, v3}, Landroid/widget/TextSwitcher;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_80

    .line 426
    .end local v2           #llp:Landroid/widget/AbsoluteLayout$LayoutParams;
    .end local v3           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    .end local v5           #rlp:Landroid/widget/AbsoluteLayout$LayoutParams;
    .end local v6           #ts:Landroid/widget/TextSwitcher;
    :cond_127
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnCall:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 427
    invoke-direct {p0}, Lcom/lge/favoritecontacts/FavoritePopup;->setCallBtnOperation()V

    .line 429
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnMsg:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 430
    invoke-direct {p0}, Lcom/lge/favoritecontacts/FavoritePopup;->setMessageBtnOperation()V

    .line 433
    iget v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iEmailsCnt:I

    if-gtz v7, :cond_8e

    .line 435
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnMsg:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 436
    .restart local v3       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    iput v11, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 437
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnMsg:Landroid/widget/Button;

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_8e

    .line 445
    .end local v3           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_14c
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnEmail:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 446
    invoke-direct {p0}, Lcom/lge/favoritecontacts/FavoritePopup;->setEmailBtnOperation()V

    .line 448
    iget v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iNumbersCnt:I

    if-gtz v7, :cond_97

    .line 449
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnEmail:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 450
    .restart local v3       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    iput v11, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 451
    iput v12, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 452
    iput v13, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 453
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnEmail:Landroid/widget/Button;

    const v8, 0x7f020017

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 454
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnEmail:Landroid/widget/Button;

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_97

    .line 467
    .end local v3           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_175
    iget v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iNumbersCnt:I

    if-lez v7, :cond_192

    iget v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iEmailsCnt:I

    if-gtz v7, :cond_192

    .line 468
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnEdit:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 469
    .restart local v3       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    const/16 v7, 0x99

    iput v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 470
    iput v11, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 471
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnEdit:Landroid/widget/Button;

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_c0

    .line 472
    .end local v3           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_192
    iget v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iEmailsCnt:I

    if-lez v7, :cond_c0

    iget v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_iNumbersCnt:I

    if-gtz v7, :cond_c0

    .line 473
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnEdit:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 474
    .restart local v3       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    iput v11, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 475
    iput v12, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 476
    const/16 v7, 0x99

    iput v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 477
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnEdit:Landroid/widget/Button;

    const v8, 0x7f02001b

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 478
    iget-object v7, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnEdit:Landroid/widget/Button;

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_c0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "icicle"

    .prologue
    const/4 v5, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v9, "FavoritePopup"

    const-string v8, "  ==  On onCreate ==   "

    .line 129
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const-string v4, "FavoritePopup"

    const-string v4, "  ==  On onCreate ==   "

    invoke-static {v9, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    if-eqz p1, :cond_42

    .line 132
    const-string v4, "need_finish"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/lge/favoritecontacts/FavoritePopup;->NeedFinish:Z

    .line 133
    iget-boolean v4, p0, Lcom/lge/favoritecontacts/FavoritePopup;->NeedFinish:Z

    if-eqz v4, :cond_42

    .line 134
    const-string v4, "FavoritePopup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ==  On onCreate ==   "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/lge/favoritecontacts/FavoritePopup;->NeedFinish:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/16 v4, -0x12c

    invoke-virtual {p0, v4}, Lcom/lge/favoritecontacts/FavoritePopup;->setResult(I)V

    .line 136
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoritePopup;->finish()V

    .line 216
    :goto_41
    return-void

    .line 142
    :cond_42
    :try_start_42
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "favoriteContacts.synchronizing.action.ALLDIE"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 143
    .local v1, intentFilter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/lge/favoritecontacts/FavoritePopup;->mDBSyncReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/lge/favoritecontacts/FavoritePopup;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_4e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_42 .. :try_end_4e} :catch_10f

    .line 148
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :goto_4e
    invoke-static {p0}, Lcom/lge/render/FCImageFactory;->setImage(Landroid/content/Context;)V

    .line 149
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoritePopup;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 151
    const/high16 v4, 0x7f03

    invoke-virtual {p0, v4}, Lcom/lge/favoritecontacts/FavoritePopup;->setContentView(I)V

    .line 153
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoritePopup;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    .line 154
    .local v3, windmgr:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getOrientation()I

    move-result v2

    .line 155
    .local v2, nowOrientation:I
    const v4, 0x7f070004

    invoke-virtual {p0, v4}, Lcom/lge/favoritecontacts/FavoritePopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextSwitcher;

    iput-object v4, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_NumberTextSwitcher:Landroid/widget/TextSwitcher;

    .line 156
    iget-object v4, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_NumberTextSwitcher:Landroid/widget/TextSwitcher;

    new-instance v5, Lcom/lge/favoritecontacts/FavoritePopup$2;

    invoke-direct {v5, p0, v2}, Lcom/lge/favoritecontacts/FavoritePopup$2;-><init>(Lcom/lge/favoritecontacts/FavoritePopup;I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 181
    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->makeInAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_LeftInAnim:Landroid/view/animation/Animation;

    .line 182
    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->makeInAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_RightInAnim:Landroid/view/animation/Animation;

    .line 183
    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->makeOutAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_LeftOutAnim:Landroid/view/animation/Animation;

    .line 184
    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->makeOutAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_RightOutAnim:Landroid/view/animation/Animation;

    .line 186
    iget-object v4, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_NumberTextSwitcher:Landroid/widget/TextSwitcher;

    iget-object v5, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_LeftInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 187
    iget-object v4, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_NumberTextSwitcher:Landroid/widget/TextSwitcher;

    iget-object v5, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_LeftOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 190
    const v4, 0x7f070008

    invoke-virtual {p0, v4}, Lcom/lge/favoritecontacts/FavoritePopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnCall:Landroid/widget/Button;

    .line 191
    const v4, 0x7f070009

    invoke-virtual {p0, v4}, Lcom/lge/favoritecontacts/FavoritePopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnMsg:Landroid/widget/Button;

    .line 192
    const v4, 0x7f07000a

    invoke-virtual {p0, v4}, Lcom/lge/favoritecontacts/FavoritePopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnEmail:Landroid/widget/Button;

    .line 193
    const v4, 0x7f07000b

    invoke-virtual {p0, v4}, Lcom/lge/favoritecontacts/FavoritePopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/lge/favoritecontacts/FavoritePopup;->m_btnEdit:Landroid/widget/Button;

    .line 195
    invoke-direct {p0}, Lcom/lge/favoritecontacts/FavoritePopup;->setContactsInform()Z

    move-result v4

    if-nez v4, :cond_e1

    .line 196
    const v4, 0x9c40

    invoke-virtual {p0, v4}, Lcom/lge/favoritecontacts/FavoritePopup;->setResult(I)V

    .line 197
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoritePopup;->finish()V

    goto/16 :goto_41

    .line 201
    :cond_e1
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getOrientation()I

    move-result v4

    if-nez v4, :cond_10b

    .line 202
    invoke-direct {p0}, Lcom/lge/favoritecontacts/FavoritePopup;->setPortPopupDisplay()V

    .line 207
    :goto_ee
    invoke-direct {p0}, Lcom/lge/favoritecontacts/FavoritePopup;->setPhotoImageOperation()V

    .line 208
    invoke-direct {p0}, Lcom/lge/favoritecontacts/FavoritePopup;->setEditBtnOperation()V

    .line 209
    invoke-direct {p0}, Lcom/lge/favoritecontacts/FavoritePopup;->setMinusBtnOperation()V

    .line 211
    const v4, 0x7f070001

    invoke-virtual {p0, v4}, Lcom/lge/favoritecontacts/FavoritePopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout;

    .line 212
    .local v0, absLayout:Landroid/widget/AbsoluteLayout;
    invoke-virtual {v0, v6}, Landroid/widget/AbsoluteLayout;->setFocusable(Z)V

    .line 213
    invoke-virtual {v0, v6}, Landroid/widget/AbsoluteLayout;->setFocusableInTouchMode(Z)V

    .line 214
    invoke-virtual {v0, v6}, Landroid/widget/AbsoluteLayout;->setSelected(Z)V

    goto/16 :goto_41

    .line 204
    .end local v0           #absLayout:Landroid/widget/AbsoluteLayout;
    :cond_10b
    invoke-direct {p0}, Lcom/lge/favoritecontacts/FavoritePopup;->setLandPopupDisplay()V

    goto :goto_ee

    .line 144
    .end local v2           #nowOrientation:I
    .end local v3           #windmgr:Landroid/view/WindowManager;
    :catch_10f
    move-exception v4

    goto/16 :goto_4e
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 784
    const/16 v1, 0x2328

    if-ne p1, v1, :cond_53

    .line 785
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoritePopup;->IMAGE_CHANGE_STRINGS:[Ljava/lang/String;

    if-nez v1, :cond_37

    .line 786
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoritePopup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoritePopup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoritePopup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 794
    .local v0, image_change_string:[Ljava/lang/String;
    iput-object v0, p0, Lcom/lge/favoritecontacts/FavoritePopup;->IMAGE_CHANGE_STRINGS:[Ljava/lang/String;

    .line 797
    .end local v0           #image_change_string:[Ljava/lang/String;
    :cond_37
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f050019

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoritePopup;->IMAGE_CHANGE_STRINGS:[Ljava/lang/String;

    new-instance v3, Lcom/lge/favoritecontacts/FavoritePopup$13;

    invoke-direct {v3, p0}, Lcom/lge/favoritecontacts/FavoritePopup$13;-><init>(Lcom/lge/favoritecontacts/FavoritePopup;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 840
    :goto_52
    return-object v1

    :cond_53
    const/4 v1, 0x0

    goto :goto_52
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 858
    :try_start_0
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoritePopup;->mDBSyncReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lge/favoritecontacts/FavoritePopup;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_9

    .line 862
    :goto_5
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 863
    return-void

    .line 859
    :catch_9
    move-exception v0

    goto :goto_5
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 851
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/favoritecontacts/FavoritePopup;->NeedFinish:Z

    .line 852
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 853
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 845
    const-string v0, "need_finish"

    iget-boolean v1, p0, Lcom/lge/favoritecontacts/FavoritePopup;->NeedFinish:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 846
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 847
    return-void
.end method

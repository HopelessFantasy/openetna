.class public Lcom/android/browser/AddBookmarkPage;
.super Landroid/app/Activity;
.source "AddBookmarkPage.java"


# static fields
.field private static final TITLE_MAX_LENGTH:I = 0x100

.field private static final URL_MAX_LENGTH:I = 0xffc

.field private static final WHERE_CLAUSE:Ljava/lang/String; = "url = ?"

.field private static final mProjection:[Ljava/lang/String;


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private final SELECTION_ARGS:[Ljava/lang/String;

.field private mAddress:Landroid/widget/EditText;

.field private mButton:Landroid/widget/TextView;

.field private mCancel:Landroid/view/View$OnClickListener;

.field private mCancelButton:Landroid/view/View;

.field private mEditingExisting:Z

.field private mMap:Landroid/os/Bundle;

.field private mSaveBookmark:Landroid/view/View$OnClickListener;

.field private mTitle:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 54
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bookmark"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "created"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "visits"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/AddBookmarkPage;->mProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const-string v0, "Bookmarks"

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->LOGTAG:Ljava/lang/String;

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->SELECTION_ARGS:[Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/android/browser/AddBookmarkPage$1;

    invoke-direct {v0, p0}, Lcom/android/browser/AddBookmarkPage$1;-><init>(Lcom/android/browser/AddBookmarkPage;)V

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mSaveBookmark:Landroid/view/View$OnClickListener;

    .line 74
    new-instance v0, Lcom/android/browser/AddBookmarkPage$2;

    invoke-direct {v0, p0}, Lcom/android/browser/AddBookmarkPage$2;-><init>(Lcom/android/browser/AddBookmarkPage;)V

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mCancel:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "icicle"

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0, v6}, Lcom/android/browser/AddBookmarkPage;->requestWindowFeature(I)Z

    .line 83
    const v4, 0x7f030001

    invoke-virtual {p0, v4}, Lcom/android/browser/AddBookmarkPage;->setContentView(I)V

    .line 84
    const v4, 0x7f07002b

    invoke-virtual {p0, v4}, Lcom/android/browser/AddBookmarkPage;->setTitle(I)V

    .line 85
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f020023

    invoke-virtual {v4, v6, v5}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 87
    const/4 v2, 0x0

    .line 88
    .local v2, title:Ljava/lang/String;
    const/4 v3, 0x0

    .line 89
    .local v3, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    .line 90
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    if-eqz v4, :cond_53

    .line 91
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v5, "bookmark"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 92
    .local v1, b:Landroid/os/Bundle;
    if-eqz v1, :cond_43

    .line 93
    iput-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    .line 94
    iput-boolean v8, p0, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    .line 95
    const v4, 0x7f07002c

    invoke-virtual {p0, v4}, Lcom/android/browser/AddBookmarkPage;->setTitle(I)V

    .line 97
    :cond_43
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v5, "title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v5, "url"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 101
    .end local v1           #b:Landroid/os/Bundle;
    :cond_53
    const v4, 0x7f0c0001

    invoke-virtual {p0, v4}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    .line 102
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const v4, 0x7f0c0005

    invoke-virtual {p0, v4}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    .line 104
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    new-array v5, v8, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x100

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v9

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 108
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    new-array v5, v8, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0xffc

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v9

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 111
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mSaveBookmark:Landroid/view/View$OnClickListener;

    .line 112
    .local v0, accept:Landroid/view/View$OnClickListener;
    const v4, 0x7f0c0006

    invoke-virtual {p0, v4}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mButton:Landroid/widget/TextView;

    .line 113
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mButton:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v4, 0x7f0c0007

    invoke-virtual {p0, v4}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mCancelButton:Landroid/view/View;

    .line 116
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mCancelButton:Landroid/view/View;

    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mCancel:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    if-nez v4, :cond_c8

    .line 119
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestFocus()Z

    .line 121
    :cond_c8
    return-void
.end method

.method save()Z
    .registers 28

    .prologue
    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    .line 130
    .local v23, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/browser/BrowserActivity;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 132
    .local v24, unfilteredUrl:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6a

    const/4 v6, 0x1

    move/from16 v17, v6

    .line 133
    .local v17, emptyTitle:Z
    :goto_2b
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6e

    const/4 v6, 0x1

    move/from16 v18, v6

    .line 134
    .local v18, emptyUrl:Z
    :goto_38
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 135
    .local v22, r:Landroid/content/res/Resources;
    if-nez v17, :cond_40

    if-eqz v18, :cond_72

    .line 136
    :cond_40
    if-eqz v17, :cond_54

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    move-object v6, v0

    const v7, 0x7f070032

    move-object/from16 v0, v22

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 139
    :cond_54
    if-eqz v18, :cond_68

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    move-object v6, v0

    const v7, 0x7f070033

    move-object/from16 v0, v22

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 142
    :cond_68
    const/4 v6, 0x0

    .line 240
    :goto_69
    return v6

    .line 132
    .end local v17           #emptyTitle:Z
    .end local v18           #emptyUrl:Z
    .end local v22           #r:Landroid/content/res/Resources;
    :cond_6a
    const/4 v6, 0x0

    move/from16 v17, v6

    goto :goto_2b

    .line 133
    .restart local v17       #emptyTitle:Z
    :cond_6e
    const/4 v6, 0x0

    move/from16 v18, v6

    goto :goto_38

    .line 144
    .restart local v18       #emptyUrl:Z
    .restart local v22       #r:Landroid/content/res/Resources;
    :cond_72
    move-object/from16 v25, v24

    .line 145
    .local v25, url:Ljava/lang/String;
    const-string v6, "about:"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_df

    const-string v6, "data:"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_df

    const-string v6, "file:"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_df

    const-string v6, "rtsp://"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_df

    .line 152
    :try_start_a0
    new-instance v11, Landroid/net/WebAddress;

    move-object v0, v11

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_a8
    .catch Landroid/net/ParseException; {:try_start_a0 .. :try_end_a8} :catch_c4

    .line 157
    .local v11, address:Landroid/net/WebAddress;
    iget-object v6, v11, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_db

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    move-object v6, v0

    const v7, 0x7f070035

    move-object/from16 v0, v22

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 159
    const/4 v6, 0x0

    goto :goto_69

    .line 153
    .end local v11           #address:Landroid/net/WebAddress;
    :catch_c4
    move-exception v6

    move-object/from16 v16, v6

    .line 154
    .local v16, e:Landroid/net/ParseException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    move-object v6, v0

    const v7, 0x7f070035

    move-object/from16 v0, v22

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 155
    const/4 v6, 0x0

    goto :goto_69

    .line 161
    .end local v16           #e:Landroid/net/ParseException;
    .restart local v11       #address:Landroid/net/WebAddress;
    :cond_db
    invoke-virtual {v11}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v25

    .line 164
    .end local v11           #address:Landroid/net/WebAddress;
    :cond_df
    :try_start_df
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    move v6, v0

    if-eqz v6, :cond_127

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v6, v0

    const-string v7, "title"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v6, v0

    const-string v7, "url"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v6, -0x1

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v8, v0

    invoke-virtual {v7, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/AddBookmarkPage;->setResult(ILandroid/content/Intent;)V

    .line 240
    :goto_124
    const/4 v6, 0x1

    goto/16 :goto_69

    .line 171
    :cond_127
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 172
    .local v14, creationTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->SELECTION_ARGS:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    aput-object v25, v6, v7

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 174
    .local v5, cr:Landroid/content/ContentResolver;
    sget-object v6, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/browser/AddBookmarkPage;->mProjection:[Ljava/lang/String;

    const-string v8, "url = ?"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->SELECTION_ARGS:[Ljava/lang/String;

    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 179
    .local v12, c:Landroid/database/Cursor;
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 180
    .local v20, map:Landroid/content/ContentValues;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1d8

    const-string v6, "bookmark"

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-nez v6, :cond_1d8

    .line 184
    const-string v6, "created"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v20

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 185
    const-string v6, "title"

    move-object/from16 v0, v20

    move-object v1, v6

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v6, "bookmark"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v20

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    sget-object v6, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v20

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 232
    :cond_1ac
    :goto_1ac
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/webkit/WebIconDatabase;->retainIconForPageUrl(Ljava/lang/String;)V

    .line 233
    invoke-interface {v12}, Landroid/database/Cursor;->deactivate()V

    .line 234
    const/4 v6, -0x1

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->setResult(I)V
    :try_end_1c0
    .catch Ljava/lang/IllegalStateException; {:try_start_df .. :try_end_1c0} :catch_1c2

    goto/16 :goto_124

    .line 236
    .end local v5           #cr:Landroid/content/ContentResolver;
    .end local v12           #c:Landroid/database/Cursor;
    .end local v14           #creationTime:J
    .end local v20           #map:Landroid/content/ContentValues;
    :catch_1c2
    move-exception v6

    move-object/from16 v16, v6

    .line 237
    .local v16, e:Ljava/lang/IllegalStateException;
    const v6, 0x7f0700a7

    move-object/from16 v0, v22

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->setTitle(Ljava/lang/CharSequence;)V

    .line 238
    const/4 v6, 0x0

    goto/16 :goto_69

    .line 190
    .end local v16           #e:Ljava/lang/IllegalStateException;
    .restart local v5       #cr:Landroid/content/ContentResolver;
    .restart local v12       #c:Landroid/database/Cursor;
    .restart local v14       #creationTime:J
    .restart local v20       #map:Landroid/content/ContentValues;
    :cond_1d8
    :try_start_1d8
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 191
    .local v13, count:I
    const/16 v21, 0x0

    .line 192
    .local v21, matchedTitle:Z
    const/16 v19, 0x0

    .local v19, i:I
    :goto_1e0
    move/from16 v0, v19

    move v1, v13

    if-ge v0, v1, :cond_234

    .line 195
    move-object v0, v12

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 196
    const-string v6, "title"

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_231

    .line 200
    const-string v6, "created"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v20

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 202
    sget-object v6, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v20

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 204
    const/16 v21, 0x1

    .line 192
    :cond_231
    add-int/lit8 v19, v19, 0x1

    goto :goto_1e0

    .line 207
    :cond_234
    if-nez v21, :cond_1ac

    .line 211
    const-string v6, "title"

    move-object/from16 v0, v20

    move-object v1, v6

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v6, "url"

    move-object/from16 v0, v20

    move-object v1, v6

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v6, "created"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v20

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 214
    const-string v6, "bookmark"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v20

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    const-string v6, "date"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v20

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    const/16 v26, 0x0

    .line 217
    .local v26, visits:I
    if-lez v13, :cond_281

    .line 223
    const-string v6, "visits"

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 228
    :cond_281
    const-string v6, "visits"

    add-int/lit8 v7, v26, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v20

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 229
    sget-object v6, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_299
    .catch Ljava/lang/IllegalStateException; {:try_start_1d8 .. :try_end_299} :catch_1c2

    goto/16 :goto_1ac
.end method

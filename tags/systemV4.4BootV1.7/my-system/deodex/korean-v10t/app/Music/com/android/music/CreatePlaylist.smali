.class public Lcom/android/music/CreatePlaylist;
.super Landroid/app/Activity;
.source "CreatePlaylist.java"


# instance fields
.field private mOpenClicked:Landroid/view/View$OnClickListener;

.field private mPlaylist:Landroid/widget/EditText;

.field private mPrompt:Landroid/widget/TextView;

.field private mSaveButton:Landroid/widget/Button;

.field mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 80
    new-instance v0, Lcom/android/music/CreatePlaylist$2;

    invoke-direct {v0, p0}, Lcom/android/music/CreatePlaylist$2;-><init>(Lcom/android/music/CreatePlaylist;)V

    iput-object v0, p0, Lcom/android/music/CreatePlaylist;->mTextWatcher:Landroid/text/TextWatcher;

    .line 167
    new-instance v0, Lcom/android/music/CreatePlaylist$3;

    invoke-direct {v0, p0}, Lcom/android/music/CreatePlaylist$3;-><init>(Lcom/android/music/CreatePlaylist;)V

    iput-object v0, p0, Lcom/android/music/CreatePlaylist;->mOpenClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/music/CreatePlaylist;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/CreatePlaylist;Ljava/lang/String;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/music/CreatePlaylist;->idForplaylist(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/music/CreatePlaylist;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/music/CreatePlaylist;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method private idForplaylist(Ljava/lang/String;)I
    .registers 11
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 98
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const-string v5, "name"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 103
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 104
    .local v7, id:I
    if-eqz v6, :cond_27

    .line 105
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 106
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_27

    .line 107
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 110
    :cond_27
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 111
    return v7
.end method

.method private makePlaylistName()Ljava/lang/String;
    .registers 14

    .prologue
    .line 126
    const v1, 0x7f07003d

    invoke-virtual {p0, v1}, Lcom/android/music/CreatePlaylist;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 127
    .local v12, template:Ljava/lang/String;
    const/4 v8, 0x1

    .line 129
    .local v8, num:I
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "name"

    aput-object v3, v2, v1

    .line 132
    .local v2, cols:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/music/CreatePlaylist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 133
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "name != \'\'"

    .line 134
    .local v3, whereclause:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 138
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_23

    .line 139
    const/4 v1, 0x0

    .line 164
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #whereclause:Ljava/lang/String;
    :goto_22
    return-object v1

    .line 143
    .restart local v2       #cols:[Ljava/lang/String;
    .restart local v3       #whereclause:Ljava/lang/String;
    :cond_23
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    add-int/lit8 v9, v8, 0x1

    .end local v8           #num:I
    .local v9, num:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v2           #cols:[Ljava/lang/String;
    move-result-object v3

    .end local v3           #whereclause:Ljava/lang/String;
    aput-object v3, v1, v2

    invoke-static {v12, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 150
    .local v11, suggestedname:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, done:Z
    move v8, v9

    .line 151
    .end local v9           #num:I
    .restart local v8       #num:I
    :cond_35
    if-nez v7, :cond_62

    .line 152
    const/4 v7, 0x1

    .line 153
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 154
    :goto_3b
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_35

    .line 155
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 156
    .local v10, playlistname:Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5e

    .line 157
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    add-int/lit8 v9, v8, 0x1

    .end local v8           #num:I
    .restart local v9       #num:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v12, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 158
    const/4 v7, 0x0

    move v8, v9

    .line 160
    .end local v9           #num:I
    .restart local v8       #num:I
    :cond_5e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3b

    .line 163
    .end local v10           #playlistname:Ljava/lang/String;
    :cond_62
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v1, v11

    .line 164
    goto :goto_22
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "icicle"

    .prologue
    const/4 v6, 0x1

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/music/CreatePlaylist;->setVolumeControlStream(I)V

    .line 51
    invoke-virtual {p0, v6}, Lcom/android/music/CreatePlaylist;->requestWindowFeature(I)Z

    .line 52
    const v3, 0x7f030004

    invoke-virtual {p0, v3}, Lcom/android/music/CreatePlaylist;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/music/CreatePlaylist;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 56
    const v3, 0x7f0a0012

    invoke-virtual {p0, v3}, Lcom/android/music/CreatePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/music/CreatePlaylist;->mPrompt:Landroid/widget/TextView;

    .line 57
    const v3, 0x7f0a0015

    invoke-virtual {p0, v3}, Lcom/android/music/CreatePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    .line 58
    const v3, 0x7f0a0016

    invoke-virtual {p0, v3}, Lcom/android/music/CreatePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/music/CreatePlaylist;->mSaveButton:Landroid/widget/Button;

    .line 59
    iget-object v3, p0, Lcom/android/music/CreatePlaylist;->mSaveButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/music/CreatePlaylist;->mOpenClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v3, 0x7f0a0014

    invoke-virtual {p0, v3}, Lcom/android/music/CreatePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/android/music/CreatePlaylist$1;

    invoke-direct {v4, p0}, Lcom/android/music/CreatePlaylist$1;-><init>(Lcom/android/music/CreatePlaylist;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    if-eqz p1, :cond_62

    const-string v3, "defaultname"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 68
    .local v0, defaultname:Ljava/lang/String;
    :goto_5c
    if-nez v0, :cond_68

    .line 69
    invoke-virtual {p0}, Lcom/android/music/CreatePlaylist;->finish()V

    .line 78
    :goto_61
    return-void

    .line 67
    .end local v0           #defaultname:Ljava/lang/String;
    :cond_62
    invoke-direct {p0}, Lcom/android/music/CreatePlaylist;->makePlaylistName()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_5c

    .line 72
    .restart local v0       #defaultname:Ljava/lang/String;
    :cond_68
    const v3, 0x7f07005f

    invoke-virtual {p0, v3}, Lcom/android/music/CreatePlaylist;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, promptformat:Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, prompt:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/music/CreatePlaylist;->mPrompt:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v3, p0, Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v3, p0, Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 77
    iget-object v3, p0, Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/music/CreatePlaylist;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_61
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 122
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outcicle"

    .prologue
    .line 116
    const-string v0, "defaultname"

    iget-object v1, p0, Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

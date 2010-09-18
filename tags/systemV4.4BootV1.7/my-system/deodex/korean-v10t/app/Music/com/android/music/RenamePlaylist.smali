.class public Lcom/android/music/RenamePlaylist;
.super Landroid/app/Activity;
.source "RenamePlaylist.java"


# instance fields
.field private mOpenClicked:Landroid/view/View$OnClickListener;

.field private mOriginalName:Ljava/lang/String;

.field private mPlaylist:Landroid/widget/EditText;

.field private mPrompt:Landroid/widget/TextView;

.field private mRenameId:J

.field private mSaveButton:Landroid/widget/Button;

.field mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 95
    new-instance v0, Lcom/android/music/RenamePlaylist$2;

    invoke-direct {v0, p0}, Lcom/android/music/RenamePlaylist$2;-><init>(Lcom/android/music/RenamePlaylist;)V

    iput-object v0, p0, Lcom/android/music/RenamePlaylist;->mTextWatcher:Landroid/text/TextWatcher;

    .line 164
    new-instance v0, Lcom/android/music/RenamePlaylist$3;

    invoke-direct {v0, p0}, Lcom/android/music/RenamePlaylist$3;-><init>(Lcom/android/music/RenamePlaylist;)V

    iput-object v0, p0, Lcom/android/music/RenamePlaylist;->mOpenClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/music/RenamePlaylist;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/music/RenamePlaylist;->setSaveButton()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/music/RenamePlaylist;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/RenamePlaylist;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/android/music/RenamePlaylist;->mRenameId:J

    return-wide v0
.end method

.method private idForplaylist(Ljava/lang/String;)I
    .registers 11
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 119
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

    .line 124
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 125
    .local v7, id:I
    if-eqz v6, :cond_27

    .line 126
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 127
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_27

    .line 128
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 131
    :cond_27
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 132
    return v7
.end method

.method private nameForId(J)Ljava/lang/String;
    .registers 12
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    const-string v5, "name"

    .line 136
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v5, v2, v8

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    const-string v0, "name"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 141
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 142
    .local v7, name:Ljava/lang/String;
    if-eqz v6, :cond_31

    .line 143
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_31

    .line 145
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 148
    :cond_31
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 149
    return-object v7
.end method

.method private setSaveButton()V
    .registers 4

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, typedname:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/music/RenamePlaylist;->idForplaylist(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_21

    iget-object v1, p0, Lcom/android/music/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 112
    iget-object v1, p0, Lcom/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f070040

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 116
    :goto_20
    return-void

    .line 114
    :cond_21
    iget-object v1, p0, Lcom/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f07003f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_20
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "icicle"

    .prologue
    const/4 v7, 0x1

    const-string v6, "rename"

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/music/RenamePlaylist;->setVolumeControlStream(I)V

    .line 53
    invoke-virtual {p0, v7}, Lcom/android/music/RenamePlaylist;->requestWindowFeature(I)Z

    .line 54
    const v3, 0x7f030004

    invoke-virtual {p0, v3}, Lcom/android/music/RenamePlaylist;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/android/music/RenamePlaylist;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 58
    const v3, 0x7f0a0012

    invoke-virtual {p0, v3}, Lcom/android/music/RenamePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/music/RenamePlaylist;->mPrompt:Landroid/widget/TextView;

    .line 59
    const v3, 0x7f0a0015

    invoke-virtual {p0, v3}, Lcom/android/music/RenamePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    .line 60
    const v3, 0x7f0a0016

    invoke-virtual {p0, v3}, Lcom/android/music/RenamePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    .line 61
    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/music/RenamePlaylist;->mOpenClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v3, 0x7f0a0014

    invoke-virtual {p0, v3}, Lcom/android/music/RenamePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/android/music/RenamePlaylist$1;

    invoke-direct {v4, p0}, Lcom/android/music/RenamePlaylist$1;-><init>(Lcom/android/music/RenamePlaylist;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    if-eqz p1, :cond_a6

    const-string v3, "rename"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    :goto_5d
    iput-wide v3, p0, Lcom/android/music/RenamePlaylist;->mRenameId:J

    .line 71
    iget-wide v3, p0, Lcom/android/music/RenamePlaylist;->mRenameId:J

    invoke-direct {p0, v3, v4}, Lcom/android/music/RenamePlaylist;->nameForId(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    .line 72
    if-eqz p1, :cond_b3

    const-string v3, "defaultname"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 74
    .local v0, defaultname:Ljava/lang/String;
    :goto_70
    iget-wide v3, p0, Lcom/android/music/RenamePlaylist;->mRenameId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_7e

    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    if-eqz v3, :cond_7e

    if-nez v0, :cond_b7

    .line 75
    :cond_7e
    const-string v3, "@@@@"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rename failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/music/RenamePlaylist;->mRenameId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0}, Lcom/android/music/RenamePlaylist;->finish()V

    .line 93
    :goto_a5
    return-void

    .line 69
    .end local v0           #defaultname:Ljava/lang/String;
    :cond_a6
    invoke-virtual {p0}, Lcom/android/music/RenamePlaylist;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "rename"

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v6, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    goto :goto_5d

    .line 72
    :cond_b3
    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    move-object v0, v3

    goto :goto_70

    .line 81
    .restart local v0       #defaultname:Ljava/lang/String;
    :cond_b7
    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f2

    .line 82
    const v3, 0x7f070060

    invoke-virtual {p0, v3}, Lcom/android/music/RenamePlaylist;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, promptformat:Ljava/lang/String;
    :goto_c6
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/music/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    aput-object v5, v3, v4

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, prompt:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mPrompt:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 91
    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/music/RenamePlaylist;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 92
    invoke-direct {p0}, Lcom/android/music/RenamePlaylist;->setSaveButton()V

    goto :goto_a5

    .line 84
    .end local v1           #prompt:Ljava/lang/String;
    .end local v2           #promptformat:Ljava/lang/String;
    :cond_f2
    const v3, 0x7f070061

    invoke-virtual {p0, v3}, Lcom/android/music/RenamePlaylist;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #promptformat:Ljava/lang/String;
    goto :goto_c6
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 162
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outcicle"

    .prologue
    .line 155
    const-string v0, "defaultname"

    iget-object v1, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v0, "rename"

    iget-wide v1, p0, Lcom/android/music/RenamePlaylist;->mRenameId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 157
    return-void
.end method

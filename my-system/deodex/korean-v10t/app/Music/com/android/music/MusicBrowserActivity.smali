.class public Lcom/android/music/MusicBrowserActivity;
.super Landroid/app/Activity;
.source "MusicBrowserActivity.java"

# interfaces
.implements Lcom/android/music/MusicUtils$Defs;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final SEARCH_MUSIC:I = 0xd


# instance fields
.field private autoshuffle:Landroid/content/ServiceConnection;

.field private mArtist:Landroid/widget/TextView;

.field private mAutoShuffle:Z

.field mFocuser:Landroid/view/View$OnFocusChangeListener;

.field private mNowPlayingView:Landroid/view/View;

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MusicBrowserActivity;->mAutoShuffle:Z

    .line 218
    new-instance v0, Lcom/android/music/MusicBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/android/music/MusicBrowserActivity$2;-><init>(Lcom/android/music/MusicBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/MusicBrowserActivity;->autoshuffle:Landroid/content/ServiceConnection;

    .line 254
    new-instance v0, Lcom/android/music/MusicBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/android/music/MusicBrowserActivity$3;-><init>(Lcom/android/music/MusicBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/MusicBrowserActivity;->mFocuser:Landroid/view/View$OnFocusChangeListener;

    .line 273
    new-instance v0, Lcom/android/music/MusicBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/android/music/MusicBrowserActivity$4;-><init>(Lcom/android/music/MusicBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/MusicBrowserActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/MusicBrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/music/MusicBrowserActivity;->updateMenu()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/music/MusicBrowserActivity;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity;->mNowPlayingView:Landroid/view/View;

    return-object v0
.end method

.method private doAutoShuffle()V
    .registers 4

    .prologue
    .line 215
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/MusicBrowserActivity;->autoshuffle:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/music/MusicBrowserActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 216
    return-void
.end method

.method private makeNowPlayingView()V
    .registers 4

    .prologue
    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/android/music/MusicBrowserActivity;->mTitle:Landroid/widget/TextView;

    sget-object v2, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/android/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, artistName:Ljava/lang/String;
    const-string v1, "<unknown>"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 244
    const v1, 0x7f07002f

    invoke-virtual {p0, v1}, Lcom/android/music/MusicBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 246
    :cond_20
    iget-object v1, p0, Lcom/android/music/MusicBrowserActivity;->mArtist:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v1, p0, Lcom/android/music/MusicBrowserActivity;->mNowPlayingView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/music/MusicBrowserActivity;->mFocuser:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 248
    iget-object v1, p0, Lcom/android/music/MusicBrowserActivity;->mNowPlayingView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_31} :catch_32

    .line 252
    .end local v0           #artistName:Ljava/lang/String;
    :goto_31
    return-void

    .line 249
    :catch_32
    move-exception v1

    goto :goto_31
.end method

.method private updateMenu()V
    .registers 3

    .prologue
    .line 107
    :try_start_0
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_18

    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getAudioId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    .line 108
    invoke-direct {p0}, Lcom/android/music/MusicBrowserActivity;->makeNowPlayingView()V

    .line 109
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity;->mNowPlayingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    .line 115
    :goto_16
    return-void

    .line 112
    :catch_17
    move-exception v0

    .line 114
    :cond_18
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity;->mNowPlayingView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_16
.end method


# virtual methods
.method public init()V
    .registers 4

    .prologue
    .line 87
    const v1, 0x7f030008

    invoke-virtual {p0, v1}, Lcom/android/music/MusicBrowserActivity;->setContentView(I)V

    .line 88
    const v1, 0x7f0a001c

    invoke-virtual {p0, v1}, Lcom/android/music/MusicBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/MusicBrowserActivity;->mNowPlayingView:Landroid/view/View;

    .line 89
    iget-object v1, p0, Lcom/android/music/MusicBrowserActivity;->mNowPlayingView:Landroid/view/View;

    const v2, 0x7f0a0004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/music/MusicBrowserActivity;->mTitle:Landroid/widget/TextView;

    .line 90
    iget-object v1, p0, Lcom/android/music/MusicBrowserActivity;->mNowPlayingView:Landroid/view/View;

    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/music/MusicBrowserActivity;->mArtist:Landroid/widget/TextView;

    .line 92
    const v1, 0x7f0a0018

    invoke-virtual {p0, v1}, Lcom/android/music/MusicBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, b:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v1, 0x7f0a001a

    invoke-virtual {p0, v1}, Lcom/android/music/MusicBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 96
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v1, 0x7f0a0019

    invoke-virtual {p0, v1}, Lcom/android/music/MusicBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 99
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v1, 0x7f0a001b

    invoke-virtual {p0, v1}, Lcom/android/music/MusicBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const-string v2, "android.intent.action.PICK"

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_5e

    .line 212
    :goto_9
    return-void

    .line 188
    :pswitch_a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/artistalbum"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/music/MusicBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 193
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/album"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/music/MusicBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 198
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    invoke-virtual {p0, v0}, Lcom/android/music/MusicBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 203
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/playlist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0, v0}, Lcom/android/music/MusicBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 208
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_52
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.PLAYBACK_VIEWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/music/MusicBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 186
    nop

    :pswitch_data_5e
    .packed-switch 0x7f0a0018
        :pswitch_a
        :pswitch_2e
        :pswitch_1c
        :pswitch_40
        :pswitch_52
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    const/4 v3, 0x3

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0, v3}, Lcom/android/music/MusicBrowserActivity;->setVolumeControlStream(I)V

    .line 62
    invoke-virtual {p0}, Lcom/android/music/MusicBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "autoshuffle"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, shuf:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 64
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/music/MusicBrowserActivity;->mAutoShuffle:Z

    .line 66
    :cond_1c
    new-instance v1, Lcom/android/music/MusicBrowserActivity$1;

    invoke-direct {v1, p0}, Lcom/android/music/MusicBrowserActivity$1;-><init>(Lcom/android/music/MusicBrowserActivity;)V

    invoke-static {p0, v1}, Lcom/android/music/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    .line 76
    invoke-virtual {p0, v3}, Lcom/android/music/MusicBrowserActivity;->setDefaultKeyMode(I)V

    .line 77
    invoke-virtual {p0}, Lcom/android/music/MusicBrowserActivity;->init()V

    .line 78
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 139
    const/16 v0, 0x8

    const v1, 0x7f070006

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 140
    const/16 v0, 0xd

    const v1, 0x7f07001c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 82
    invoke-static {p0}, Lcom/android/music/MusicUtils;->unbindFromService(Landroid/content/Context;)V

    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 84
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v2, 0x2

    .line 164
    :try_start_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_1c

    move-result v1

    sparse-switch v1, :sswitch_data_30

    .line 181
    :goto_8
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_c
    return v1

    .line 166
    :sswitch_d
    :try_start_d
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    .line 167
    .local v0, shuffle:I
    if-ne v0, v2, :cond_1e

    .line 168
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V

    goto :goto_8

    .line 179
    .end local v0           #shuffle:I
    :catch_1c
    move-exception v1

    goto :goto_8

    .line 170
    .restart local v0       #shuffle:I
    :cond_1e
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V

    goto :goto_8

    .line 175
    .end local v0           #shuffle:I
    :sswitch_25
    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/music/MusicBrowserActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2d} :catch_1c

    .line 176
    const/4 v1, 0x1

    goto :goto_c

    .line 164
    nop

    :sswitch_data_30
    .sparse-switch
        0x8 -> :sswitch_d
        0xd -> :sswitch_25
    .end sparse-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 133
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/MusicBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const v3, 0x7f02001a

    .line 146
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 147
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_1b

    .line 148
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentShuffleMode()I

    move-result v1

    .line 149
    .local v1, shuffle:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1d

    .line 150
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 151
    const v2, 0x7f070007

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 157
    .end local v1           #shuffle:I
    :cond_1b
    :goto_1b
    const/4 v2, 0x1

    return v2

    .line 153
    .restart local v1       #shuffle:I
    :cond_1d
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 154
    const v2, 0x7f070006

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1b
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/android/music/MusicBrowserActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/music/MusicBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    invoke-direct {p0}, Lcom/android/music/MusicBrowserActivity;->updateMenu()V

    .line 124
    iget-boolean v1, p0, Lcom/android/music/MusicBrowserActivity;->mAutoShuffle:Z

    if-eqz v1, :cond_24

    .line 125
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/music/MusicBrowserActivity;->mAutoShuffle:Z

    .line 126
    invoke-direct {p0}, Lcom/android/music/MusicBrowserActivity;->doAutoShuffle()V

    .line 128
    :cond_24
    return-void
.end method

.class Lcom/android/music/CreatePlaylist$3;
.super Ljava/lang/Object;
.source "CreatePlaylist.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/CreatePlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/CreatePlaylist;


# direct methods
.method constructor <init>(Lcom/android/music/CreatePlaylist;)V
    .registers 2
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/music/CreatePlaylist$3;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "v"

    .prologue
    .line 169
    iget-object v5, p0, Lcom/android/music/CreatePlaylist$3;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-static {v5}, Lcom/android/music/CreatePlaylist;->access$000(Lcom/android/music/CreatePlaylist;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, name:Ljava/lang/String;
    if-eqz v1, :cond_44

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_44

    .line 171
    iget-object v5, p0, Lcom/android/music/CreatePlaylist$3;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-virtual {v5}, Lcom/android/music/CreatePlaylist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 172
    .local v2, resolver:Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/music/CreatePlaylist$3;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-static {v5, v1}, Lcom/android/music/CreatePlaylist;->access$100(Lcom/android/music/CreatePlaylist;Ljava/lang/String;)I

    move-result v0

    .line 174
    .local v0, id:I
    if-ltz v0, :cond_45

    .line 175
    sget-object v5, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v6, v0

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 176
    .local v3, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/music/CreatePlaylist$3;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-static {v5, v0}, Lcom/android/music/MusicUtils;->clearPlaylist(Landroid/content/Context;I)V

    .line 182
    :goto_30
    iget-object v5, p0, Lcom/android/music/CreatePlaylist$3;->this$0:Lcom/android/music/CreatePlaylist;

    const/4 v6, -0x1

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v7, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/music/CreatePlaylist;->setResult(ILandroid/content/Intent;)V

    .line 183
    iget-object v5, p0, Lcom/android/music/CreatePlaylist$3;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-virtual {v5}, Lcom/android/music/CreatePlaylist;->finish()V

    .line 185
    .end local v0           #id:I
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_44
    return-void

    .line 178
    .restart local v0       #id:I
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    :cond_45
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 179
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "name"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-object v5, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .restart local v3       #uri:Landroid/net/Uri;
    goto :goto_30
.end method

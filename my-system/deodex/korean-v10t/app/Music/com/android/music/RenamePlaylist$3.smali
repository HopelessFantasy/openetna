.class Lcom/android/music/RenamePlaylist$3;
.super Ljava/lang/Object;
.source "RenamePlaylist.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/RenamePlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/RenamePlaylist;


# direct methods
.method constructor <init>(Lcom/android/music/RenamePlaylist;)V
    .registers 2
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/music/RenamePlaylist$3;->this$0:Lcom/android/music/RenamePlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 166
    iget-object v3, p0, Lcom/android/music/RenamePlaylist$3;->this$0:Lcom/android/music/RenamePlaylist;

    invoke-static {v3}, Lcom/android/music/RenamePlaylist;->access$100(Lcom/android/music/RenamePlaylist;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_58

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_58

    .line 168
    iget-object v3, p0, Lcom/android/music/RenamePlaylist$3;->this$0:Lcom/android/music/RenamePlaylist;

    invoke-virtual {v3}, Lcom/android/music/RenamePlaylist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 169
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 170
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "name"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id=?"

    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, p0, Lcom/android/music/RenamePlaylist$3;->this$0:Lcom/android/music/RenamePlaylist;

    invoke-static {v6}, Lcom/android/music/RenamePlaylist;->access$200(Lcom/android/music/RenamePlaylist;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 176
    iget-object v3, p0, Lcom/android/music/RenamePlaylist$3;->this$0:Lcom/android/music/RenamePlaylist;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/music/RenamePlaylist;->setResult(I)V

    .line 177
    iget-object v3, p0, Lcom/android/music/RenamePlaylist$3;->this$0:Lcom/android/music/RenamePlaylist;

    const v4, 0x7f070024

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 178
    iget-object v3, p0, Lcom/android/music/RenamePlaylist$3;->this$0:Lcom/android/music/RenamePlaylist;

    invoke-virtual {v3}, Lcom/android/music/RenamePlaylist;->finish()V

    .line 180
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_58
    return-void
.end method

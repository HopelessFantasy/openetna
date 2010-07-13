.class Lcom/android/music/AlbumBrowserActivity$3;
.super Landroid/os/Handler;
.source "AlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/AlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/AlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/AlbumBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/music/AlbumBrowserActivity$3;->this$0:Lcom/android/music/AlbumBrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$3;->this$0:Lcom/android/music/AlbumBrowserActivity;

    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity$3;->this$0:Lcom/android/music/AlbumBrowserActivity;

    invoke-static {v1}, Lcom/android/music/AlbumBrowserActivity;->access$100(Lcom/android/music/AlbumBrowserActivity;)Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/music/AlbumBrowserActivity;->access$200(Lcom/android/music/AlbumBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 201
    return-void
.end method

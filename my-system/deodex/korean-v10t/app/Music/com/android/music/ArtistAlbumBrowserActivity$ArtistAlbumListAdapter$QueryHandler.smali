.class Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ArtistAlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;


# direct methods
.method constructor <init>(Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "res"

    .prologue
    .line 552
    iput-object p1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$QueryHandler;->this$0:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    .line 553
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 554
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$QueryHandler;->this$0:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-static {v0}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->access$300(Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)Lcom/android/music/ArtistAlbumBrowserActivity;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/music/ArtistAlbumBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 560
    return-void
.end method

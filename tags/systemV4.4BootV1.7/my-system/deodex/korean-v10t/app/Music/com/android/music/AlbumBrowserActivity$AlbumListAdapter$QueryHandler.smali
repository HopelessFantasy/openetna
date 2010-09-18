.class Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;


# direct methods
.method constructor <init>(Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "res"

    .prologue
    .line 497
    iput-object p1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;->this$0:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    .line 498
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 499
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;->this$0:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-static {v0}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->access$300(Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;)Lcom/android/music/AlbumBrowserActivity;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/music/AlbumBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 505
    return-void
.end method

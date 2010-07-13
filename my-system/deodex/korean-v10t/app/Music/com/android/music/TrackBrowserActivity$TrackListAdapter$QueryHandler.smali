.class Lcom/android/music/TrackBrowserActivity$TrackListAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/TrackBrowserActivity$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/android/music/TrackBrowserActivity$TrackListAdapter;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "res"

    .prologue
    .line 1368
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$QueryHandler;->this$0:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    .line 1369
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1370
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$QueryHandler;->this$0:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-static {v0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/android/music/TrackBrowserActivity$TrackListAdapter;)Lcom/android/music/TrackBrowserActivity;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/music/TrackBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 1376
    return-void
.end method

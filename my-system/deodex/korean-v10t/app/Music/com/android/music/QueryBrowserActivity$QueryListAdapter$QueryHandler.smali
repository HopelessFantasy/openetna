.class Lcom/android/music/QueryBrowserActivity$QueryListAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QueryBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/QueryBrowserActivity$QueryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;


# direct methods
.method constructor <init>(Lcom/android/music/QueryBrowserActivity$QueryListAdapter;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "res"

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter$QueryHandler;->this$0:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    .line 320
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 321
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter$QueryHandler;->this$0:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-static {v0}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->access$300(Lcom/android/music/QueryBrowserActivity$QueryListAdapter;)Lcom/android/music/QueryBrowserActivity;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/music/QueryBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 326
    return-void
.end method

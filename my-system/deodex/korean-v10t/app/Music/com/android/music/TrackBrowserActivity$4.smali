.class Lcom/android/music/TrackBrowserActivity$4;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/android/music/TouchInterceptor$RemoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/TrackBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity$4;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(I)V
    .registers 3
    .parameter "which"

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$4;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v0, p1}, Lcom/android/music/TrackBrowserActivity;->access$600(Lcom/android/music/TrackBrowserActivity;I)V

    .line 538
    return-void
.end method

.class Lcom/android/music/MusicBrowserActivity$1;
.super Ljava/lang/Object;
.source "MusicBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/MusicBrowserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MusicBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/MusicBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/music/MusicBrowserActivity$1;->this$0:Lcom/android/music/MusicBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity$1;->this$0:Lcom/android/music/MusicBrowserActivity;

    invoke-static {v0}, Lcom/android/music/MusicBrowserActivity;->access$000(Lcom/android/music/MusicBrowserActivity;)V

    .line 69
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "classname"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity$1;->this$0:Lcom/android/music/MusicBrowserActivity;

    invoke-static {v0}, Lcom/android/music/MusicBrowserActivity;->access$000(Lcom/android/music/MusicBrowserActivity;)V

    .line 73
    return-void
.end method

.class Lcom/android/music/RenamePlaylist$2;
.super Ljava/lang/Object;
.source "RenamePlaylist.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 103
    iput-object p1, p0, Lcom/android/music/RenamePlaylist$2;->this$0:Lcom/android/music/RenamePlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 105
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 98
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/music/RenamePlaylist$2;->this$0:Lcom/android/music/RenamePlaylist;

    invoke-static {v0}, Lcom/android/music/RenamePlaylist;->access$000(Lcom/android/music/RenamePlaylist;)V

    .line 102
    return-void
.end method

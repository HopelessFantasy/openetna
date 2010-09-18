.class Lcom/android/music/CreatePlaylist$2;
.super Ljava/lang/Object;
.source "CreatePlaylist.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 92
    iput-object p1, p0, Lcom/android/music/CreatePlaylist$2;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 94
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 83
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/music/CreatePlaylist$2;->this$0:Lcom/android/music/CreatePlaylist;

    iget-object v1, p0, Lcom/android/music/CreatePlaylist$2;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-static {v1}, Lcom/android/music/CreatePlaylist;->access$000(Lcom/android/music/CreatePlaylist;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/CreatePlaylist;->access$100(Lcom/android/music/CreatePlaylist;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_23

    .line 87
    iget-object v0, p0, Lcom/android/music/CreatePlaylist$2;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-static {v0}, Lcom/android/music/CreatePlaylist;->access$200(Lcom/android/music/CreatePlaylist;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f070040

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 91
    :goto_22
    return-void

    .line 89
    :cond_23
    iget-object v0, p0, Lcom/android/music/CreatePlaylist$2;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-static {v0}, Lcom/android/music/CreatePlaylist;->access$200(Lcom/android/music/CreatePlaylist;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f07003f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_22
.end method

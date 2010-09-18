.class Lcom/android/soundrecorder/SRListActivity$1;
.super Ljava/lang/Object;
.source "SRListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/soundrecorder/SRListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/soundrecorder/SRListActivity;


# direct methods
.method constructor <init>(Lcom/android/soundrecorder/SRListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/soundrecorder/SRListActivity$1;->this$0:Lcom/android/soundrecorder/SRListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "d"
    .parameter "w"

    .prologue
    const/4 v2, 0x0

    .line 154
    iget-object v1, p0, Lcom/android/soundrecorder/SRListActivity$1;->this$0:Lcom/android/soundrecorder/SRListActivity;

    iget-object v1, v1, Lcom/android/soundrecorder/SRListActivity;->clickFile:Ljava/io/File;

    if-eqz v1, :cond_e

    .line 155
    iget-object v1, p0, Lcom/android/soundrecorder/SRListActivity$1;->this$0:Lcom/android/soundrecorder/SRListActivity;

    iget-object v1, v1, Lcom/android/soundrecorder/SRListActivity;->clickFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 156
    :cond_e
    iget-object v1, p0, Lcom/android/soundrecorder/SRListActivity$1;->this$0:Lcom/android/soundrecorder/SRListActivity;

    iget-object v1, v1, Lcom/android/soundrecorder/SRListActivity;->audioUri:Landroid/net/Uri;

    if-eqz v1, :cond_21

    .line 158
    iget-object v1, p0, Lcom/android/soundrecorder/SRListActivity$1;->this$0:Lcom/android/soundrecorder/SRListActivity;

    invoke-virtual {v1}, Lcom/android/soundrecorder/SRListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 159
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/soundrecorder/SRListActivity$1;->this$0:Lcom/android/soundrecorder/SRListActivity;

    iget-object v1, v1, Lcom/android/soundrecorder/SRListActivity;->audioUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 162
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_21
    iget-object v1, p0, Lcom/android/soundrecorder/SRListActivity$1;->this$0:Lcom/android/soundrecorder/SRListActivity;

    iget-object v1, v1, Lcom/android/soundrecorder/SRListActivity;->path:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 163
    iget-object v1, p0, Lcom/android/soundrecorder/SRListActivity$1;->this$0:Lcom/android/soundrecorder/SRListActivity;

    iget-object v2, p0, Lcom/android/soundrecorder/SRListActivity$1;->this$0:Lcom/android/soundrecorder/SRListActivity;

    iget-object v2, v2, Lcom/android/soundrecorder/SRListActivity;->path:Ljava/io/File;

    invoke-static {v1, v2}, Lcom/android/soundrecorder/SRListActivity;->access$000(Lcom/android/soundrecorder/SRListActivity;Ljava/io/File;)V

    .line 164
    :cond_40
    return-void
.end method

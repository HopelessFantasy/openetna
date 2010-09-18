.class Lcom/android/soundrecorder/SRListActivity$2;
.super Ljava/lang/Object;
.source "SRListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/soundrecorder/SRListActivity;
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
    .line 200
    iput-object p1, p0, Lcom/android/soundrecorder/SRListActivity$2;->this$0:Lcom/android/soundrecorder/SRListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 201
    const-string v1, "SRListActivity"

    const-string v2, "mRecordListner"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/soundrecorder/SRListActivity$2;->this$0:Lcom/android/soundrecorder/SRListActivity;

    invoke-virtual {v1, v0}, Lcom/android/soundrecorder/SRListActivity;->startActivity(Landroid/content/Intent;)V

    .line 205
    return-void
.end method

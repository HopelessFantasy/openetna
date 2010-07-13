.class Lcom/android/alarmclock/AlarmKlaxon$2;
.super Ljava/lang/Object;
.source "AlarmKlaxon.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/alarmclock/AlarmKlaxon;->play(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/alarmclock/AlarmKlaxon;


# direct methods
.method constructor <init>(Lcom/android/alarmclock/AlarmKlaxon;)V
    .registers 2
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/alarmclock/AlarmKlaxon$2;->this$0:Lcom/android/alarmclock/AlarmKlaxon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 6
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 168
    const-string v0, "Error occurred while playing audio."

    invoke-static {v0}, Lcom/android/alarmclock/Log;->e(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 170
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 171
    iget-object v0, p0, Lcom/android/alarmclock/AlarmKlaxon$2;->this$0:Lcom/android/alarmclock/AlarmKlaxon;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/alarmclock/AlarmKlaxon;->access$202(Lcom/android/alarmclock/AlarmKlaxon;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 172
    const/4 v0, 0x1

    return v0
.end method

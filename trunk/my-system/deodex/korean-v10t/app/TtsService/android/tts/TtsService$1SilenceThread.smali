.class Landroid/tts/TtsService$1SilenceThread;
.super Ljava/lang/Object;
.source "TtsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/tts/TtsService;->silence(Landroid/tts/TtsService$SpeechItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SilenceThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/tts/TtsService;

.field final synthetic val$speechItem:Landroid/tts/TtsService$SpeechItem;


# direct methods
.method constructor <init>(Landroid/tts/TtsService;Landroid/tts/TtsService$SpeechItem;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 565
    iput-object p1, p0, Landroid/tts/TtsService$1SilenceThread;->this$0:Landroid/tts/TtsService;

    iput-object p2, p0, Landroid/tts/TtsService$1SilenceThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 567
    const-string v3, ""

    .line 568
    .local v3, utteranceId:Ljava/lang/String;
    iget-object v4, p0, Landroid/tts/TtsService$1SilenceThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v4, v4, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    if-eqz v4, :cond_36

    .line 569
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    iget-object v4, p0, Landroid/tts/TtsService$1SilenceThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v4, v4, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_36

    .line 570
    iget-object v4, p0, Landroid/tts/TtsService$1SilenceThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v4, v4, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 571
    .local v2, param:Ljava/lang/String;
    const-string v4, "utteranceId"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 572
    iget-object v4, p0, Landroid/tts/TtsService$1SilenceThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v4, v4, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #utteranceId:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 569
    .restart local v3       #utteranceId:Ljava/lang/String;
    :cond_33
    add-int/lit8 v1, v1, 0x2

    goto :goto_9

    .line 577
    .end local v1           #i:I
    .end local v2           #param:Ljava/lang/String;
    :cond_36
    :try_start_36
    iget-object v4, p0, Landroid/tts/TtsService$1SilenceThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-wide v4, v4, Landroid/tts/TtsService$SpeechItem;->mDuration:J

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_6c
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_3d} :catch_52

    .line 581
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4c

    .line 582
    iget-object v4, p0, Landroid/tts/TtsService$1SilenceThread;->this$0:Landroid/tts/TtsService;

    iget-object v5, p0, Landroid/tts/TtsService$1SilenceThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v5, v5, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    invoke-static {v4, v3, v5}, Landroid/tts/TtsService;->access$000(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :cond_4c
    iget-object v4, p0, Landroid/tts/TtsService$1SilenceThread;->this$0:Landroid/tts/TtsService;

    invoke-static {v4}, Landroid/tts/TtsService;->access$100(Landroid/tts/TtsService;)V

    .line 586
    :goto_51
    return-void

    .line 578
    :catch_52
    move-exception v4

    move-object v0, v4

    .line 579
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_54
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_6c

    .line 581
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_66

    .line 582
    iget-object v4, p0, Landroid/tts/TtsService$1SilenceThread;->this$0:Landroid/tts/TtsService;

    iget-object v5, p0, Landroid/tts/TtsService$1SilenceThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v5, v5, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    invoke-static {v4, v3, v5}, Landroid/tts/TtsService;->access$000(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :cond_66
    iget-object v4, p0, Landroid/tts/TtsService$1SilenceThread;->this$0:Landroid/tts/TtsService;

    invoke-static {v4}, Landroid/tts/TtsService;->access$100(Landroid/tts/TtsService;)V

    goto :goto_51

    .line 581
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_6c
    move-exception v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7c

    .line 582
    iget-object v5, p0, Landroid/tts/TtsService$1SilenceThread;->this$0:Landroid/tts/TtsService;

    iget-object v6, p0, Landroid/tts/TtsService$1SilenceThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v6, v6, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    invoke-static {v5, v3, v6}, Landroid/tts/TtsService;->access$000(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :cond_7c
    iget-object v5, p0, Landroid/tts/TtsService$1SilenceThread;->this$0:Landroid/tts/TtsService;

    invoke-static {v5}, Landroid/tts/TtsService;->access$100(Landroid/tts/TtsService;)V

    throw v4
.end method

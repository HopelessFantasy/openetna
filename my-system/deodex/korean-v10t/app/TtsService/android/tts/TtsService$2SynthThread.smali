.class Landroid/tts/TtsService$2SynthThread;
.super Ljava/lang/Object;
.source "TtsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/tts/TtsService;->synthToFileInternalOnly(Landroid/tts/TtsService$SpeechItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SynthThread"
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
    .line 675
    iput-object p1, p0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    iput-object p2, p0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const-string v11, ""

    const-string v13, "TtsService"

    .line 677
    const/4 v8, 0x0

    .line 678
    .local v8, synthAvailable:Z
    const-string v9, ""

    .line 679
    .local v9, utteranceId:Ljava/lang/String;
    const-string v11, "TtsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Synthesizing to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v12, v12, Landroid/tts/TtsService$SpeechItem;->mFilename:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :try_start_23
    iget-object v11, p0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    invoke-static {v11}, Landroid/tts/TtsService;->access$200(Landroid/tts/TtsService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v8

    .line 682
    if-nez v8, :cond_65

    .line 683
    const-wide/16 v11, 0x64

    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V

    .line 684
    new-instance v7, Ljava/lang/Thread;

    new-instance v11, Landroid/tts/TtsService$2SynthThread;

    iget-object v12, p0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    iget-object v13, p0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    invoke-direct {v11, v12, v13}, Landroid/tts/TtsService$2SynthThread;-><init>(Landroid/tts/TtsService;Landroid/tts/TtsService$SpeechItem;)V

    invoke-direct {v7, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 686
    .local v7, synth:Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V
    :try_end_45
    .catchall {:try_start_23 .. :try_end_45} :catchall_18c
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_45} :catch_15f

    .line 733
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_54

    .line 734
    iget-object v11, p0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    iget-object v12, p0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v12, v12, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    invoke-static {v11, v9, v12}, Landroid/tts/TtsService;->access$000(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :cond_54
    if-eqz v8, :cond_5f

    .line 737
    iget-object v11, p0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    invoke-static {v11}, Landroid/tts/TtsService;->access$200(Landroid/tts/TtsService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 739
    :cond_5f
    iget-object v11, p0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    invoke-static {v11}, Landroid/tts/TtsService;->access$100(Landroid/tts/TtsService;)V

    .line 741
    .end local v7           #synth:Ljava/lang/Thread;
    :goto_64
    return-void

    .line 689
    :cond_65
    :try_start_65
    const-string v4, ""

    .line 690
    .local v4, language:Ljava/lang/String;
    const-string v1, ""

    .line 691
    .local v1, country:Ljava/lang/String;
    const-string v10, ""

    .line 692
    .local v10, variant:Ljava/lang/String;
    const-string v6, ""

    .line 693
    .local v6, speechRate:Ljava/lang/String;
    iget-object v11, p0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v11, v11, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    if-eqz v11, :cond_f9

    .line 694
    const/4 v3, 0x0

    .local v3, i:I
    :goto_74
    iget-object v11, p0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v11, v11, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    if-ge v3, v11, :cond_f9

    .line 695
    iget-object v11, p0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v11, v11, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 696
    .local v5, param:Ljava/lang/String;
    if-eqz v5, :cond_a0

    .line 697
    const-string v11, "rate"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a3

    .line 698
    iget-object v11, p0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v11, v11, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v12, v3, 0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #speechRate:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 694
    .restart local v6       #speechRate:Ljava/lang/String;
    :cond_a0
    :goto_a0
    add-int/lit8 v3, v3, 0x2

    goto :goto_74

    .line 699
    :cond_a3
    const-string v11, "language"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b8

    .line 700
    iget-object v11, p0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v11, v11, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v12, v3, 0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #language:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4       #language:Ljava/lang/String;
    goto :goto_a0

    .line 701
    :cond_b8
    const-string v11, "country"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_cd

    .line 702
    iget-object v11, p0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v11, v11, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v12, v3, 0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #country:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #country:Ljava/lang/String;
    goto :goto_a0

    .line 703
    :cond_cd
    const-string v11, "variant"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e2

    .line 704
    iget-object v11, p0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v11, v11, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v12, v3, 0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #variant:Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .restart local v10       #variant:Ljava/lang/String;
    goto :goto_a0

    .line 705
    :cond_e2
    const-string v11, "utteranceId"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a0

    .line 706
    iget-object v11, p0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v11, v11, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v12, v3, 0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    goto :goto_a0

    .line 712
    .end local v3           #i:I
    .end local v5           #param:Ljava/lang/String;
    :cond_f9
    iget-object v11, p0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    invoke-static {v11}, Landroid/tts/TtsService;->access$300(Landroid/tts/TtsService;)Ljava/util/HashMap;

    move-result-object v11

    iget-object v12, p0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_134

    .line 713
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_114

    .line 714
    iget-object v11, p0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    const-string v12, ""

    invoke-static {v11, v12, v4, v1, v10}, Landroid/tts/TtsService;->access$400(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_114
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_125

    .line 717
    iget-object v11, p0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    const-string v12, ""

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v11, v12, v13}, Landroid/tts/TtsService;->access$500(Landroid/tts/TtsService;Ljava/lang/String;I)I
    :try_end_125
    .catchall {:try_start_65 .. :try_end_125} :catchall_18c
    .catch Ljava/lang/InterruptedException; {:try_start_65 .. :try_end_125} :catch_15f

    .line 720
    :cond_125
    :try_start_125
    invoke-static {}, Landroid/tts/TtsService;->access$600()Landroid/tts/SynthProxy;

    move-result-object v11

    iget-object v12, p0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v12, v12, Landroid/tts/TtsService$SpeechItem;->mText:Ljava/lang/String;

    iget-object v13, p0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v13, v13, Landroid/tts/TtsService$SpeechItem;->mFilename:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/tts/SynthProxy;->synthesizeToFile(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_134
    .catchall {:try_start_125 .. :try_end_134} :catchall_18c
    .catch Ljava/lang/NullPointerException; {:try_start_125 .. :try_end_134} :catch_155
    .catch Ljava/lang/InterruptedException; {:try_start_125 .. :try_end_134} :catch_15f

    .line 733
    :cond_134
    :goto_134
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_143

    .line 734
    iget-object v11, p0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    iget-object v12, p0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v12, v12, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    invoke-static {v11, v9, v12}, Landroid/tts/TtsService;->access$000(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :cond_143
    if-eqz v8, :cond_14e

    .line 737
    iget-object v11, p0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    invoke-static {v11}, Landroid/tts/TtsService;->access$200(Landroid/tts/TtsService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 739
    :cond_14e
    iget-object v11, p0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    invoke-static {v11}, Landroid/tts/TtsService;->access$100(Landroid/tts/TtsService;)V

    goto/16 :goto_64

    .line 721
    :catch_155
    move-exception v11

    move-object v2, v11

    .line 723
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_157
    const-string v11, "TtsService"

    const-string v12, " null synth, can\'t synthesize to file"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15e
    .catchall {:try_start_157 .. :try_end_15e} :catchall_18c
    .catch Ljava/lang/InterruptedException; {:try_start_157 .. :try_end_15e} :catch_15f

    goto :goto_134

    .line 726
    .end local v1           #country:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/NullPointerException;
    .end local v4           #language:Ljava/lang/String;
    .end local v6           #speechRate:Ljava/lang/String;
    .end local v10           #variant:Ljava/lang/String;
    :catch_15f
    move-exception v11

    move-object v2, v11

    .line 727
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_161
    const-string v11, "TtsService"

    const-string v12, "TTS synthToFileInternalOnly(): tryLock interrupted"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_16b
    .catchall {:try_start_161 .. :try_end_16b} :catchall_18c

    .line 733
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_17a

    .line 734
    iget-object v11, p0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    iget-object v12, p0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v12, v12, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    invoke-static {v11, v9, v12}, Landroid/tts/TtsService;->access$000(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :cond_17a
    if-eqz v8, :cond_185

    .line 737
    iget-object v11, p0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    invoke-static {v11}, Landroid/tts/TtsService;->access$200(Landroid/tts/TtsService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 739
    :cond_185
    iget-object v11, p0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    invoke-static {v11}, Landroid/tts/TtsService;->access$100(Landroid/tts/TtsService;)V

    goto/16 :goto_64

    .line 733
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catchall_18c
    move-exception v11

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_19c

    .line 734
    iget-object v12, p0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    iget-object v13, p0, Landroid/tts/TtsService$2SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v13, v13, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    invoke-static {v12, v9, v13}, Landroid/tts/TtsService;->access$000(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :cond_19c
    if-eqz v8, :cond_1a7

    .line 737
    iget-object v12, p0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    invoke-static {v12}, Landroid/tts/TtsService;->access$200(Landroid/tts/TtsService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 739
    :cond_1a7
    iget-object v12, p0, Landroid/tts/TtsService$2SynthThread;->this$0:Landroid/tts/TtsService;

    invoke-static {v12}, Landroid/tts/TtsService;->access$100(Landroid/tts/TtsService;)V

    throw v11
.end method

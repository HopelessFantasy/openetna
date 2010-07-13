.class Landroid/tts/TtsService$1SynthThread;
.super Ljava/lang/Object;
.source "TtsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/tts/TtsService;->speakInternalOnly(Landroid/tts/TtsService$SpeechItem;)V
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
    .line 594
    iput-object p1, p0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    iput-object p2, p0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    const-string v12, "TtsService"

    const-string v12, ""

    .line 596
    const/4 v9, 0x0

    .line 597
    .local v9, synthAvailable:Z
    const-string v10, ""

    .line 599
    .local v10, utteranceId:Ljava/lang/String;
    :try_start_7
    iget-object v12, p0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    invoke-static {v12}, Landroid/tts/TtsService;->access$200(Landroid/tts/TtsService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v9

    .line 600
    if-nez v9, :cond_49

    .line 601
    const-wide/16 v12, 0x64

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 602
    new-instance v8, Ljava/lang/Thread;

    new-instance v12, Landroid/tts/TtsService$1SynthThread;

    iget-object v13, p0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    iget-object v14, p0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    invoke-direct {v12, v13, v14}, Landroid/tts/TtsService$1SynthThread;-><init>(Landroid/tts/TtsService;Landroid/tts/TtsService$SpeechItem;)V

    invoke-direct {v8, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 604
    .local v8, synth:Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_18a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_29} :catch_15d

    .line 659
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_38

    .line 660
    iget-object v12, p0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    iget-object v13, p0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v13, v13, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    invoke-static {v12, v10, v13}, Landroid/tts/TtsService;->access$000(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    :cond_38
    if-eqz v9, :cond_43

    .line 663
    iget-object v12, p0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    invoke-static {v12}, Landroid/tts/TtsService;->access$200(Landroid/tts/TtsService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 665
    :cond_43
    iget-object v12, p0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    invoke-static {v12}, Landroid/tts/TtsService;->access$100(Landroid/tts/TtsService;)V

    .line 667
    .end local v8           #synth:Ljava/lang/Thread;
    :goto_48
    return-void

    .line 607
    :cond_49
    const/4 v7, 0x3

    .line 608
    .local v7, streamType:I
    :try_start_4a
    const-string v4, ""

    .line 609
    .local v4, language:Ljava/lang/String;
    const-string v1, ""

    .line 610
    .local v1, country:Ljava/lang/String;
    const-string v11, ""

    .line 611
    .local v11, variant:Ljava/lang/String;
    const-string v6, ""

    .line 612
    .local v6, speechRate:Ljava/lang/String;
    iget-object v12, p0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v12, v12, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    if-eqz v12, :cond_fb

    .line 613
    const/4 v3, 0x0

    .local v3, i:I
    :goto_59
    iget-object v12, p0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v12, v12, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    if-ge v3, v12, :cond_fb

    .line 614
    iget-object v12, p0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v12, v12, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 615
    .local v5, param:Ljava/lang/String;
    if-eqz v5, :cond_85

    .line 616
    const-string v12, "rate"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_88

    .line 617
    iget-object v12, p0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v12, v12, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #speechRate:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 613
    .restart local v6       #speechRate:Ljava/lang/String;
    :cond_85
    :goto_85
    add-int/lit8 v3, v3, 0x2

    goto :goto_59

    .line 618
    :cond_88
    const-string v12, "language"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9d

    .line 619
    iget-object v12, p0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v12, v12, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #language:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4       #language:Ljava/lang/String;
    goto :goto_85

    .line 620
    :cond_9d
    const-string v12, "country"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b2

    .line 621
    iget-object v12, p0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v12, v12, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #country:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #country:Ljava/lang/String;
    goto :goto_85

    .line 622
    :cond_b2
    const-string v12, "variant"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c7

    .line 623
    iget-object v12, p0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v12, v12, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #variant:Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .restart local v11       #variant:Ljava/lang/String;
    goto :goto_85

    .line 624
    :cond_c7
    const-string v12, "utteranceId"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_de

    .line 625
    iget-object v12, p0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v12, v12, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    goto :goto_85

    .line 626
    :cond_de
    const-string v12, "streamType"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_e3
    .catchall {:try_start_4a .. :try_end_e3} :catchall_18a
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_e3} :catch_15d

    move-result v12

    if-eqz v12, :cond_85

    .line 628
    :try_start_e6
    iget-object v12, p0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v12, v12, Landroid/tts/TtsService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_f5
    .catchall {:try_start_e6 .. :try_end_f5} :catchall_18a
    .catch Ljava/lang/NumberFormatException; {:try_start_e6 .. :try_end_f5} :catch_f7
    .catch Ljava/lang/InterruptedException; {:try_start_e6 .. :try_end_f5} :catch_15d

    move-result v7

    goto :goto_85

    .line 630
    :catch_f7
    move-exception v12

    move-object v2, v12

    .line 631
    .local v2, e:Ljava/lang/NumberFormatException;
    const/4 v7, 0x3

    goto :goto_85

    .line 638
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .end local v3           #i:I
    .end local v5           #param:Ljava/lang/String;
    :cond_fb
    :try_start_fb
    iget-object v12, p0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    invoke-static {v12}, Landroid/tts/TtsService;->access$300(Landroid/tts/TtsService;)Ljava/util/HashMap;

    move-result-object v12

    iget-object v13, p0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_132

    .line 639
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_116

    .line 640
    iget-object v12, p0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    const-string v13, ""

    invoke-static {v12, v13, v4, v1, v11}, Landroid/tts/TtsService;->access$400(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_116
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_127

    .line 643
    iget-object v12, p0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    const-string v13, ""

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v12, v13, v14}, Landroid/tts/TtsService;->access$500(Landroid/tts/TtsService;Ljava/lang/String;I)I
    :try_end_127
    .catchall {:try_start_fb .. :try_end_127} :catchall_18a
    .catch Ljava/lang/InterruptedException; {:try_start_fb .. :try_end_127} :catch_15d

    .line 646
    :cond_127
    :try_start_127
    invoke-static {}, Landroid/tts/TtsService;->access$600()Landroid/tts/SynthProxy;

    move-result-object v12

    iget-object v13, p0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v13, v13, Landroid/tts/TtsService$SpeechItem;->mText:Ljava/lang/String;

    invoke-virtual {v12, v13, v7}, Landroid/tts/SynthProxy;->speak(Ljava/lang/String;I)I
    :try_end_132
    .catchall {:try_start_127 .. :try_end_132} :catchall_18a
    .catch Ljava/lang/NullPointerException; {:try_start_127 .. :try_end_132} :catch_153
    .catch Ljava/lang/InterruptedException; {:try_start_127 .. :try_end_132} :catch_15d

    .line 659
    :cond_132
    :goto_132
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_141

    .line 660
    iget-object v12, p0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    iget-object v13, p0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v13, v13, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    invoke-static {v12, v10, v13}, Landroid/tts/TtsService;->access$000(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    :cond_141
    if-eqz v9, :cond_14c

    .line 663
    iget-object v12, p0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    invoke-static {v12}, Landroid/tts/TtsService;->access$200(Landroid/tts/TtsService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 665
    :cond_14c
    iget-object v12, p0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    invoke-static {v12}, Landroid/tts/TtsService;->access$100(Landroid/tts/TtsService;)V

    goto/16 :goto_48

    .line 647
    :catch_153
    move-exception v12

    move-object v2, v12

    .line 649
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_155
    const-string v12, "TtsService"

    const-string v13, " null synth, can\'t speak"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15c
    .catchall {:try_start_155 .. :try_end_15c} :catchall_18a
    .catch Ljava/lang/InterruptedException; {:try_start_155 .. :try_end_15c} :catch_15d

    goto :goto_132

    .line 652
    .end local v1           #country:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/NullPointerException;
    .end local v4           #language:Ljava/lang/String;
    .end local v6           #speechRate:Ljava/lang/String;
    .end local v7           #streamType:I
    .end local v11           #variant:Ljava/lang/String;
    :catch_15d
    move-exception v12

    move-object v2, v12

    .line 653
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_15f
    const-string v12, "TtsService"

    const-string v13, "TTS speakInternalOnly(): tryLock interrupted"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_169
    .catchall {:try_start_15f .. :try_end_169} :catchall_18a

    .line 659
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_178

    .line 660
    iget-object v12, p0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    iget-object v13, p0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v13, v13, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    invoke-static {v12, v10, v13}, Landroid/tts/TtsService;->access$000(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    :cond_178
    if-eqz v9, :cond_183

    .line 663
    iget-object v12, p0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    invoke-static {v12}, Landroid/tts/TtsService;->access$200(Landroid/tts/TtsService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 665
    :cond_183
    iget-object v12, p0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    invoke-static {v12}, Landroid/tts/TtsService;->access$100(Landroid/tts/TtsService;)V

    goto/16 :goto_48

    .line 659
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catchall_18a
    move-exception v12

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_19a

    .line 660
    iget-object v13, p0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    iget-object v14, p0, Landroid/tts/TtsService$1SynthThread;->val$speechItem:Landroid/tts/TtsService$SpeechItem;

    iget-object v14, v14, Landroid/tts/TtsService$SpeechItem;->mCallingApp:Ljava/lang/String;

    invoke-static {v13, v10, v14}, Landroid/tts/TtsService;->access$000(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    :cond_19a
    if-eqz v9, :cond_1a5

    .line 663
    iget-object v13, p0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    invoke-static {v13}, Landroid/tts/TtsService;->access$200(Landroid/tts/TtsService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 665
    :cond_1a5
    iget-object v13, p0, Landroid/tts/TtsService$1SynthThread;->this$0:Landroid/tts/TtsService;

    invoke-static {v13}, Landroid/tts/TtsService;->access$100(Landroid/tts/TtsService;)V

    throw v12
.end method

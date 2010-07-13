.class Landroid/tts/TtsService$1;
.super Landroid/speech/tts/ITts$Stub;
.source "TtsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/tts/TtsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/tts/TtsService;


# direct methods
.method constructor <init>(Landroid/tts/TtsService;)V
    .registers 2
    .parameter

    .prologue
    .line 1189
    iput-object p1, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-direct {p0}, Landroid/speech/tts/ITts$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addEarcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .parameter "callingApp"
    .parameter "earcon"
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 1102
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$900(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Landroid/tts/TtsService;->access$1800(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1103
    return-void
.end method

.method public addEarconFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "callingApp"
    .parameter "earcon"
    .parameter "filename"

    .prologue
    .line 1115
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$900(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/tts/TtsService;->access$1900(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    return-void
.end method

.method public addSpeech(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .parameter "callingApp"
    .parameter "text"
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 1075
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$900(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Landroid/tts/TtsService;->access$1600(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1076
    return-void
.end method

.method public addSpeechFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "callingApp"
    .parameter "text"
    .parameter "filename"

    .prologue
    .line 1088
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$900(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/tts/TtsService;->access$1700(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    return-void
.end method

.method public getLanguage()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1161
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$900(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v0

    invoke-static {v0}, Landroid/tts/TtsService;->access$2200(Landroid/tts/TtsService;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .parameter "lang"
    .parameter "country"
    .parameter "variant"

    .prologue
    .line 1151
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$900(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/tts/TtsService;->access$2100(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isSpeaking()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1061
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$900(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v0

    invoke-static {v0}, Landroid/tts/TtsService;->access$1400(Landroid/tts/TtsService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$1500(Landroid/tts/TtsService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_1f

    move v0, v1

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public playEarcon(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)I
    .registers 7
    .parameter "callingApp"
    .parameter "earcon"
    .parameter "queueMode"
    .parameter "params"

    .prologue
    .line 1021
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1022
    .local v0, speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p4, :cond_10

    .line 1023
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1025
    .restart local v0       #speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_10
    iget-object v1, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v1}, Landroid/tts/TtsService;->access$900(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, v0}, Landroid/tts/TtsService;->access$1100(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)I

    move-result v1

    return v1
.end method

.method public playSilence(Ljava/lang/String;JI[Ljava/lang/String;)I
    .registers 12
    .parameter "callingApp"
    .parameter "duration"
    .parameter "queueMode"
    .parameter "params"

    .prologue
    .line 1040
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1041
    .local v5, speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p5, :cond_10

    .line 1042
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1044
    .restart local v5       #speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_10
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$900(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/tts/TtsService;->access$1200(Landroid/tts/TtsService;Ljava/lang/String;JILjava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public registerCallback(Ljava/lang/String;Landroid/speech/tts/ITtsCallback;)I
    .registers 4
    .parameter "packageName"
    .parameter "cb"

    .prologue
    .line 971
    if-eqz p2, :cond_16

    .line 972
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$700(Landroid/tts/TtsService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 973
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$800(Landroid/tts/TtsService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    const/4 v0, 0x0

    .line 976
    :goto_15
    return v0

    :cond_16
    const/4 v0, -0x1

    goto :goto_15
.end method

.method public setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .parameter "callingApp"
    .parameter "lang"
    .parameter "country"
    .parameter "variant"

    .prologue
    .line 1172
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$900(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Landroid/tts/TtsService;->access$400(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setPitch(Ljava/lang/String;I)I
    .registers 4
    .parameter "callingApp"
    .parameter "pitch"

    .prologue
    .line 1137
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$900(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/tts/TtsService;->access$2000(Landroid/tts/TtsService;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setSpeechRate(Ljava/lang/String;I)I
    .registers 4
    .parameter "callingApp"
    .parameter "speechRate"

    .prologue
    .line 1126
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$900(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/tts/TtsService;->access$500(Landroid/tts/TtsService;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public speak(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)I
    .registers 7
    .parameter "callingApp"
    .parameter "text"
    .parameter "queueMode"
    .parameter "params"

    .prologue
    .line 1002
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1003
    .local v0, speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p4, :cond_10

    .line 1004
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1006
    .restart local v0       #speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_10
    iget-object v1, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v1}, Landroid/tts/TtsService;->access$900(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, v0}, Landroid/tts/TtsService;->access$1000(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)I

    move-result v1

    return v1
.end method

.method public stop(Ljava/lang/String;)I
    .registers 3
    .parameter "callingApp"

    .prologue
    .line 1052
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$900(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/tts/TtsService;->access$1300(Landroid/tts/TtsService;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthesizeToFile(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "callingApp"
    .parameter "text"
    .parameter "params"
    .parameter "filename"

    .prologue
    .line 1191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1192
    .local v0, speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p3, :cond_10

    .line 1193
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1195
    .restart local v0       #speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_10
    iget-object v1, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v1}, Landroid/tts/TtsService;->access$900(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v1

    invoke-static {v1, p1, p2, v0, p4}, Landroid/tts/TtsService;->access$2300(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public unregisterCallback(Ljava/lang/String;Landroid/speech/tts/ITtsCallback;)I
    .registers 4
    .parameter "packageName"
    .parameter "cb"

    .prologue
    .line 980
    if-eqz p2, :cond_16

    .line 981
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$800(Landroid/tts/TtsService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$700(Landroid/tts/TtsService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 983
    const/4 v0, 0x0

    .line 985
    :goto_15
    return v0

    :cond_16
    const/4 v0, -0x1

    goto :goto_15
.end method

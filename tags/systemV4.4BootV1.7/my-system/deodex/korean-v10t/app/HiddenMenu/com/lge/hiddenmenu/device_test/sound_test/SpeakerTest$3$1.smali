.class Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest$3$1;
.super Ljava/lang/Object;
.source "SpeakerTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest$3;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest$3;)V
    .registers 2
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest$3$1;->this$1:Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest$3$1;->this$1:Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest$3;

    iget-object v0, v0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest$3;->this$0:Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->access$100(Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;)V

    .line 129
    return-void
.end method

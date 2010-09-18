.class Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest$2;
.super Ljava/lang/Object;
.source "SpeakerTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;)V
    .registers 2
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest$2;->this$0:Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest$2;->this$0:Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->access$002(Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;I)I

    .line 86
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest$2;->this$0:Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->access$100(Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;)V

    .line 87
    return-void
.end method

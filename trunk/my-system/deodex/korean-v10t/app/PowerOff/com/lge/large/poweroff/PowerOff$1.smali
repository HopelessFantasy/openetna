.class Lcom/lge/large/poweroff/PowerOff$1;
.super Ljava/lang/Object;
.source "PowerOff.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/large/poweroff/PowerOff;->initPowerOffAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/large/poweroff/PowerOff;


# direct methods
.method constructor <init>(Lcom/lge/large/poweroff/PowerOff;)V
    .registers 2
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/lge/large/poweroff/PowerOff$1;->this$0:Lcom/lge/large/poweroff/PowerOff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lge/large/poweroff/PowerOff$1;->this$0:Lcom/lge/large/poweroff/PowerOff;

    invoke-virtual {v0}, Lcom/lge/large/poweroff/PowerOff;->finishActivity()V

    .line 121
    return-void
.end method
